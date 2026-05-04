# Zernio::UsageApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_usage_stats**](UsageApi.md#get_usage_stats) | **GET** /v1/usage-stats | Get plan and usage stats |
| [**get_x_api_pricing**](UsageApi.md#get_x_api_pricing) | **GET** /v1/billing/x-pricing | Get X/Twitter API pricing table |


## get_usage_stats

> <UsageStats> get_usage_stats

Get plan and usage stats

Returns the current plan name, billing period, plan limits, and usage counts.  The response shape depends on the account's `billingSystem`:   * Stripe users: per-period `usage.uploads` / `usage.profiles` counters.   * Metronome (usage-based) users: `usage.connectedAccounts`,     `usage.xApiCalls` (aggregated by tier), `usage.xApiCallsByOperation`     (per-operation map — resolve keys via `GET /v1/billing/x-pricing`),     plus a `spend` block with `currentPeriodCents`, `xSpendCents`, and     `xSpendLimitCents`. 

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
  # Get plan and usage stats
  result = api_instance.get_usage_stats
  p result
rescue Zernio::ApiError => e
  puts "Error when calling UsageApi->get_usage_stats: #{e}"
end
```

#### Using the get_usage_stats_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageStats>, Integer, Hash)> get_usage_stats_with_http_info

```ruby
begin
  # Get plan and usage stats
  data, status_code, headers = api_instance.get_usage_stats_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageStats>
rescue Zernio::ApiError => e
  puts "Error when calling UsageApi->get_usage_stats_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

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

