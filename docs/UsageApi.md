# Zernio::UsageApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_billing**](UsageApi.md#get_billing) | **GET** /v1/billing | Account billing snapshot (plan, cycle, balance, caps, status) |
| [**get_calls_usage**](UsageApi.md#get_calls_usage) | **GET** /v1/usage/calls | Calling usage and cost |
| [**get_sms_usage**](UsageApi.md#get_sms_usage) | **GET** /v1/usage/sms | SMS usage (volumes) |
| [**get_usage**](UsageApi.md#get_usage) | **GET** /v1/usage | Usage snapshot (default) or billed-spend metering (with params) |
| [**get_usage_stats**](UsageApi.md#get_usage_stats) | **GET** /v1/usage-stats | Get plan and usage snapshot (plan, limits, payment status) |
| [**get_x_api_pricing**](UsageApi.md#get_x_api_pricing) | **GET** /v1/billing/x-pricing | Get X/Twitter API pricing table |


## get_billing

> <BillingSnapshot> get_billing

Account billing snapshot (plan, cycle, balance, caps, status)

The billing \"wallet/statement\" view: current plan, billing cycle, accrued balance + remaining credits this period, spend caps, and payment / access status. This is the billing half of the legacy `/v1/usage-stats` snapshot — the per-product consumption half is metering and lives on `GET /v1/usage`.  Usage-based (Metronome) accounts get a populated `balance`; legacy Stripe accounts get `balance: null` plus a deprecated `legacy.limits` block and, when payment-blocked, `status.openInvoiceUrl` / `status.declineReason`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::UsageApi.new

begin
  # Account billing snapshot (plan, cycle, balance, caps, status)
  result = api_instance.get_billing
  p result
rescue Zernio::ApiError => e
  puts "Error when calling UsageApi->get_billing: #{e}"
end
```

#### Using the get_billing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillingSnapshot>, Integer, Hash)> get_billing_with_http_info

```ruby
begin
  # Account billing snapshot (plan, cycle, balance, caps, status)
  data, status_code, headers = api_instance.get_billing_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillingSnapshot>
rescue Zernio::ApiError => e
  puts "Error when calling UsageApi->get_billing_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**BillingSnapshot**](BillingSnapshot.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_calls_usage

> <GetCallsUsage200Response> get_calls_usage(opts)

Calling usage and cost

Aggregated calling usage across your numbers, both channels (WhatsApp Business Calling + regular phone/PSTN): call counts, answered counts, minutes, and cost. Use it for cost visibility or to rebill your own customers per number.  Costs come from each call's billing snapshot, so this endpoint always agrees with the invoice: `billableUSD` is what Zernio bills; `metaUSD` is the WhatsApp per-minute charge Meta bills directly to your WABA (display only, never billed by Zernio).  Optional `groupBy` returns a breakdown by UTC day, by your number, or by channel. Defaults to the last 30 days. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::UsageApi.new
opts = {
  since: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Start of the window (inclusive). Default 30 days before `until`.
  _until: Time.parse('2013-10-20T19:20:30+01:00'), # Time | End of the window (exclusive). Default now.
  channel: 'whatsapp', # String | 
  number: 'number_example', # String | Scope to calls involving this number (typically one of YOUR numbers). E.164, leading + optional.
  group_by: 'day' # String | 
}

begin
  # Calling usage and cost
  result = api_instance.get_calls_usage(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling UsageApi->get_calls_usage: #{e}"
end
```

#### Using the get_calls_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCallsUsage200Response>, Integer, Hash)> get_calls_usage_with_http_info(opts)

```ruby
begin
  # Calling usage and cost
  data, status_code, headers = api_instance.get_calls_usage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCallsUsage200Response>
rescue Zernio::ApiError => e
  puts "Error when calling UsageApi->get_calls_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **since** | **Time** | Start of the window (inclusive). Default 30 days before &#x60;until&#x60;. | [optional] |
| **_until** | **Time** | End of the window (exclusive). Default now. | [optional] |
| **channel** | **String** |  | [optional] |
| **number** | **String** | Scope to calls involving this number (typically one of YOUR numbers). E.164, leading + optional. | [optional] |
| **group_by** | **String** |  | [optional] |

### Return type

[**GetCallsUsage200Response**](GetCallsUsage200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sms_usage

> <GetSmsUsage200Response> get_sms_usage(opts)

SMS usage (volumes)

Aggregated SMS/MMS volumes across your numbers: sent, received, and total message counts, with an optional breakdown by UTC day or by number. Defaults to the last 30 days.  Volumes only, deliberately: SMS cost is carrier-rated asynchronously and billed to your invoice, so per-message cost is not available here. Calling usage (GET /v1/usage/calls) does include billable cost. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::UsageApi.new
opts = {
  since: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Start of the window (inclusive). Default 30 days before `until`.
  _until: Time.parse('2013-10-20T19:20:30+01:00'), # Time | End of the window (exclusive). Default now.
  number: 'number_example', # String | Scope to one of YOUR SMS-enabled numbers (E.164, leading + optional).
  group_by: 'day' # String | 
}

begin
  # SMS usage (volumes)
  result = api_instance.get_sms_usage(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling UsageApi->get_sms_usage: #{e}"
end
```

#### Using the get_sms_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSmsUsage200Response>, Integer, Hash)> get_sms_usage_with_http_info(opts)

```ruby
begin
  # SMS usage (volumes)
  data, status_code, headers = api_instance.get_sms_usage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSmsUsage200Response>
rescue Zernio::ApiError => e
  puts "Error when calling UsageApi->get_sms_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **since** | **Time** | Start of the window (inclusive). Default 30 days before &#x60;until&#x60;. | [optional] |
| **_until** | **Time** | End of the window (exclusive). Default now. | [optional] |
| **number** | **String** | Scope to one of YOUR SMS-enabled numbers (E.164, leading + optional). | [optional] |
| **group_by** | **String** |  | [optional] |

### Return type

[**GetSmsUsage200Response**](GetSmsUsage200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_usage

> <GetUsage200Response> get_usage(opts)

Usage snapshot (default) or billed-spend metering (with params)

Dual-mode endpoint, selected by query params — fully backward compatible:  **Without metering params (the default):** the plan / quota / usage snapshot — plan name, billing period, limits, usage counts, access state. Identical to `GET /v1/usage-stats`. Existing integrations keep working unchanged.  **With `range`, `granularity`, `from`, or `to`:** usage METERING — billed spend (USD) by product family (`accounts`, `numbers`, `calls`, `sms`, `dlc`, `xApi`, `credits`, `other`) over the window, at `day` / `month` / `total` granularity, from Metronome's invoice breakdown (the CHARGE view — always reconciles with what gets billed). Also served at `GET /v1/usage/daily`. Usage-based accounts only — legacy Stripe accounts get `{ \"supported\": false, \"days\": [] }`.  For per-domain consumption *volumes* use `GET /v1/usage/calls` and `GET /v1/usage/sms`. For the billing statement (balance, credits, caps, payment status) use `GET /v1/billing`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::UsageApi.new
opts = {
  reconcile: true, # Boolean | Snapshot mode only. For Stripe subscription users, `true` forces a subscription reconciliation pass even when cached plan data looks complete. 
  range: 'cycle', # String | Window to report. `cycle` / `prev-cycle` resolve to the customer's real billing-period bounds (falling back to a trailing 30 days when no invoice exists yet); `7d`…`12mo` are trailing windows; `custom` uses `from` / `to`. 
  from: Date.parse('2013-10-20'), # Date | Inclusive start (UTC date). Required when `range=custom`.
  to: Date.parse('2013-10-20'), # Date | Inclusive end (UTC date). Required when `range=custom`. Max span 366 days.
  granularity: 'day' # String | Bucketing of the `days` series: `day` (one row per UTC day), `month` (one row per calendar month, dated to the 1st), or `total` (no series — read `totals`). Does not affect `totals`. 
}

begin
  # Usage snapshot (default) or billed-spend metering (with params)
  result = api_instance.get_usage(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling UsageApi->get_usage: #{e}"
end
```

#### Using the get_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUsage200Response>, Integer, Hash)> get_usage_with_http_info(opts)

```ruby
begin
  # Usage snapshot (default) or billed-spend metering (with params)
  data, status_code, headers = api_instance.get_usage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUsage200Response>
rescue Zernio::ApiError => e
  puts "Error when calling UsageApi->get_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reconcile** | **Boolean** | Snapshot mode only. For Stripe subscription users, &#x60;true&#x60; forces a subscription reconciliation pass even when cached plan data looks complete.  | [optional] |
| **range** | **String** | Window to report. &#x60;cycle&#x60; / &#x60;prev-cycle&#x60; resolve to the customer&#39;s real billing-period bounds (falling back to a trailing 30 days when no invoice exists yet); &#x60;7d&#x60;…&#x60;12mo&#x60; are trailing windows; &#x60;custom&#x60; uses &#x60;from&#x60; / &#x60;to&#x60;.  | [optional][default to &#39;cycle&#39;] |
| **from** | **Date** | Inclusive start (UTC date). Required when &#x60;range&#x3D;custom&#x60;. | [optional] |
| **to** | **Date** | Inclusive end (UTC date). Required when &#x60;range&#x3D;custom&#x60;. Max span 366 days. | [optional] |
| **granularity** | **String** | Bucketing of the &#x60;days&#x60; series: &#x60;day&#x60; (one row per UTC day), &#x60;month&#x60; (one row per calendar month, dated to the 1st), or &#x60;total&#x60; (no series — read &#x60;totals&#x60;). Does not affect &#x60;totals&#x60;.  | [optional][default to &#39;day&#39;] |

### Return type

[**GetUsage200Response**](GetUsage200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_usage_stats

> <UsageStats> get_usage_stats(opts)

Get plan and usage snapshot (plan, limits, payment status)

The plan / quota / payment-status snapshot: current plan name, billing period, plan limits, usage counts, and access state. Identical to a bare `GET /v1/usage` call (this path is its deprecated alias). For billed spend by product, call `GET /v1/usage` with `range` / `granularity` params. The statement view (balance, credits, caps, payment status) lives at `GET /v1/billing`.  The response shape depends on the account's `billingSystem`:   * Stripe users: per-period `usage.uploads` / `usage.profiles` counters.   * Metronome (usage-based) users: `usage.connectedAccounts`,     `usage.xApiCallsByOperation` (per-operation X API call counts —     resolve keys via `GET /v1/billing/x-pricing`), plus a `spend`     block with `currentPeriodCents`, `xSpendCents`, and     `xSpendLimitCents`. The legacy `usage.xApiCalls` 3-tier     aggregate is still emitted for back-compat but excludes the     $0.200 URL tier and any future tiers — new clients should     consume `xApiCallsByOperation` only. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::UsageApi.new
opts = {
  reconcile: true # Boolean | For Stripe subscription users, `true` forces a subscription reconciliation pass even when cached plan data looks complete. Omit the parameter, or pass `false`, to use the default first-time-only reconciliation behavior. Invalid boolean values are rejected. 
}

begin
  # Get plan and usage snapshot (plan, limits, payment status)
  result = api_instance.get_usage_stats(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling UsageApi->get_usage_stats: #{e}"
end
```

#### Using the get_usage_stats_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageStats>, Integer, Hash)> get_usage_stats_with_http_info(opts)

```ruby
begin
  # Get plan and usage snapshot (plan, limits, payment status)
  data, status_code, headers = api_instance.get_usage_stats_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageStats>
rescue Zernio::ApiError => e
  puts "Error when calling UsageApi->get_usage_stats_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reconcile** | **Boolean** | For Stripe subscription users, &#x60;true&#x60; forces a subscription reconciliation pass even when cached plan data looks complete. Omit the parameter, or pass &#x60;false&#x60;, to use the default first-time-only reconciliation behavior. Invalid boolean values are rejected.  | [optional] |

### Return type

[**UsageStats**](UsageStats.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_x_api_pricing

> <XApiPricing> get_x_api_pricing

Get X/Twitter API pricing table

Returns Zernio's canonical X/Twitter API pricing table. Each X action has its own Metronome product and its own rate, and Zernio passes X API costs through at exact rates with zero markup.  The response is identical for every authenticated user (pricing is universal), so it is safe to cache on the client for the duration of a billing period.  To compute your own per-operation spend, pair this endpoint with `GET /v1/usage-stats` — that endpoint returns `usage.xApiCallsByOperation` keyed by the same `operation` field you get here. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::UsageApi.new

begin
  # Get X/Twitter API pricing table
  result = api_instance.get_x_api_pricing
  p result
rescue Zernio::ApiError => e
  puts "Error when calling UsageApi->get_x_api_pricing: #{e}"
end
```

#### Using the get_x_api_pricing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<XApiPricing>, Integer, Hash)> get_x_api_pricing_with_http_info

```ruby
begin
  # Get X/Twitter API pricing table
  data, status_code, headers = api_instance.get_x_api_pricing_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <XApiPricing>
rescue Zernio::ApiError => e
  puts "Error when calling UsageApi->get_x_api_pricing_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**XApiPricing**](XApiPricing.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

