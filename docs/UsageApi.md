# Zernio::UsageApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_calls_usage**](UsageApi.md#get_calls_usage) | **GET** /v1/usage/calls | Calling usage and cost |
| [**get_sms_usage**](UsageApi.md#get_sms_usage) | **GET** /v1/usage/sms | SMS usage (volumes) |
| [**get_usage**](UsageApi.md#get_usage) | **GET** /v1/usage | Get plan and usage snapshot |
| [**get_usage_stats**](UsageApi.md#get_usage_stats) | **GET** /v1/usage-stats | Get plan and usage stats |
| [**get_x_api_pricing**](UsageApi.md#get_x_api_pricing) | **GET** /v1/billing/x-pricing | Get X/Twitter API pricing table |


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

> <UsageStats> get_usage(opts)

Get plan and usage snapshot

The usage hub: current plan name, billing period, plan limits, and usage counts, in one snapshot. For metered consumption over an arbitrary window with breakdowns (by day, by number), use the domain spokes: `GET /v1/usage/calls` and `GET /v1/usage/sms`.  The response shape depends on the account's `billingSystem`:   * Stripe users: per-period `usage.uploads` / `usage.profiles` counters.   * Metronome (usage-based) users: `usage.connectedAccounts`,     `usage.xApiCallsByOperation` (per-operation X API call counts —     resolve keys via `GET /v1/billing/x-pricing`), plus a `spend`     block with `currentPeriodCents`, `xSpendCents`, and     `xSpendLimitCents`. The legacy `usage.xApiCalls` 3-tier     aggregate is still emitted for back-compat but excludes the     $0.200 URL tier and any future tiers — new clients should     consume `xApiCallsByOperation` only. 

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
  # Get plan and usage snapshot
  result = api_instance.get_usage(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling UsageApi->get_usage: #{e}"
end
```

#### Using the get_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageStats>, Integer, Hash)> get_usage_with_http_info(opts)

```ruby
begin
  # Get plan and usage snapshot
  data, status_code, headers = api_instance.get_usage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageStats>
rescue Zernio::ApiError => e
  puts "Error when calling UsageApi->get_usage_with_http_info: #{e}"
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


## get_usage_stats

> <UsageStats> get_usage_stats(opts)

Get plan and usage stats

Deprecated alias of `GET /v1/usage`; same contract. New integrations should use that path (the usage hub), with `GET /v1/usage/calls` and `GET /v1/usage/sms` for metered breakdowns.  Returns the current plan name, billing period, plan limits, and usage counts.  The response shape depends on the account's `billingSystem`:   * Stripe users: per-period `usage.uploads` / `usage.profiles` counters.   * Metronome (usage-based) users: `usage.connectedAccounts`,     `usage.xApiCallsByOperation` (per-operation X API call counts —     resolve keys via `GET /v1/billing/x-pricing`), plus a `spend`     block with `currentPeriodCents`, `xSpendCents`, and     `xSpendLimitCents`. The legacy `usage.xApiCalls` 3-tier     aggregate is still emitted for back-compat but excludes the     $0.200 URL tier and any future tiers — new clients should     consume `xApiCallsByOperation` only. 

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
  # Get plan and usage stats
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
  # Get plan and usage stats
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

