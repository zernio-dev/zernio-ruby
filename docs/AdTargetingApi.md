# Zernio::AdTargetingApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**estimate_ad_reach**](AdTargetingApi.md#estimate_ad_reach) | **POST** /v1/ads/targeting/reach-estimate | Estimate audience reach |
| [**get_linked_in_bid_pricing**](AdTargetingApi.md#get_linked_in_bid_pricing) | **POST** /v1/ads/targeting/bid-pricing | Suggested bid and budget bounds |
| [**get_linked_in_supply_forecast**](AdTargetingApi.md#get_linked_in_supply_forecast) | **POST** /v1/ads/targeting/supply-forecast | Impressions, clicks and spend forecast |
| [**search_ad_interests**](AdTargetingApi.md#search_ad_interests) | **GET** /v1/ads/interests | Search targeting interests |
| [**search_ad_targeting**](AdTargetingApi.md#search_ad_targeting) | **GET** /v1/ads/targeting/search | Search targeting options |


## estimate_ad_reach

> <EstimateAdReach200Response> estimate_ad_reach(estimate_ad_reach_request)

Estimate audience reach

Returns a normalized pre-flight audience-size estimate for a targeting spec, before any campaign is created. Backed by each platform's native reach API (Meta `delivery_estimate`, LinkedIn `audienceCounts`, X `audience_summary`, Pinterest `audience_sizing`).  Platforms without a usable pre-flight reach API (Google Search/Display, TikTok) return `available: false` with no bounds, so clients can hide or grey out the estimate rather than treat the absence as an error. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdTargetingApi.new
estimate_ad_reach_request = Zernio::EstimateAdReachRequest.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example', spec: Zernio::TargetingSpec.new}) # EstimateAdReachRequest | 

begin
  # Estimate audience reach
  result = api_instance.estimate_ad_reach(estimate_ad_reach_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdTargetingApi->estimate_ad_reach: #{e}"
end
```

#### Using the estimate_ad_reach_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EstimateAdReach200Response>, Integer, Hash)> estimate_ad_reach_with_http_info(estimate_ad_reach_request)

```ruby
begin
  # Estimate audience reach
  data, status_code, headers = api_instance.estimate_ad_reach_with_http_info(estimate_ad_reach_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EstimateAdReach200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdTargetingApi->estimate_ad_reach_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **estimate_ad_reach_request** | [**EstimateAdReachRequest**](EstimateAdReachRequest.md) |  |  |

### Return type

[**EstimateAdReach200Response**](EstimateAdReach200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_linked_in_bid_pricing

> <GetLinkedInBidPricing200Response> get_linked_in_bid_pricing(get_linked_in_bid_pricing_request)

Suggested bid and budget bounds

LinkedIn-only. Returns the suggested bid and bid limits for a targeting spec, plus the daily-budget bounds LinkedIn will accept. Use it before creating a campaign to pick a bid inside the allowed range and warn the user if their daily budget is below the minimum. Wraps LinkedIn's `adBudgetPricing` finder.  Non-LinkedIn accounts return `available: false` so clients can hide the pricing UI without treating it as a failure. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdTargetingApi.new
get_linked_in_bid_pricing_request = Zernio::GetLinkedInBidPricingRequest.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example', spec: Zernio::TargetingSpec.new}) # GetLinkedInBidPricingRequest | 

begin
  # Suggested bid and budget bounds
  result = api_instance.get_linked_in_bid_pricing(get_linked_in_bid_pricing_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdTargetingApi->get_linked_in_bid_pricing: #{e}"
end
```

#### Using the get_linked_in_bid_pricing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLinkedInBidPricing200Response>, Integer, Hash)> get_linked_in_bid_pricing_with_http_info(get_linked_in_bid_pricing_request)

```ruby
begin
  # Suggested bid and budget bounds
  data, status_code, headers = api_instance.get_linked_in_bid_pricing_with_http_info(get_linked_in_bid_pricing_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLinkedInBidPricing200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdTargetingApi->get_linked_in_bid_pricing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_linked_in_bid_pricing_request** | [**GetLinkedInBidPricingRequest**](GetLinkedInBidPricingRequest.md) |  |  |

### Return type

[**GetLinkedInBidPricing200Response**](GetLinkedInBidPricing200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_linked_in_supply_forecast

> <GetLinkedInSupplyForecast200Response> get_linked_in_supply_forecast(get_linked_in_supply_forecast_request)

Impressions, clicks and spend forecast

LinkedIn-only. Forecasted impressions, clicks, spend and ~20 other metrics for a targeting spec over a time range. Wraps LinkedIn's `adSupplyForecasts` finder.  Each returned series carries a `metricType` (IMPRESSION, CLICK, SPENDING, MAX_POTENTIAL_BUDGET, COST_PER_MILLION_IMPRESSIONS, ...) and a `granularity` (DAILY, SEVEN_DAY, THIRTY_DAY, CUSTOM). LinkedIn caps the daily spending forecast at 1.2x the daily budget and returns 0 once the total budget is exhausted.  Non-LinkedIn accounts return `available: false`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdTargetingApi.new
get_linked_in_supply_forecast_request = Zernio::GetLinkedInSupplyForecastRequest.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example', spec: Zernio::TargetingSpec.new, time_range_start: 37, time_range_end: 37}) # GetLinkedInSupplyForecastRequest | 

begin
  # Impressions, clicks and spend forecast
  result = api_instance.get_linked_in_supply_forecast(get_linked_in_supply_forecast_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdTargetingApi->get_linked_in_supply_forecast: #{e}"
end
```

#### Using the get_linked_in_supply_forecast_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLinkedInSupplyForecast200Response>, Integer, Hash)> get_linked_in_supply_forecast_with_http_info(get_linked_in_supply_forecast_request)

```ruby
begin
  # Impressions, clicks and spend forecast
  data, status_code, headers = api_instance.get_linked_in_supply_forecast_with_http_info(get_linked_in_supply_forecast_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLinkedInSupplyForecast200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdTargetingApi->get_linked_in_supply_forecast_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_linked_in_supply_forecast_request** | [**GetLinkedInSupplyForecastRequest**](GetLinkedInSupplyForecastRequest.md) |  |  |

### Return type

[**GetLinkedInSupplyForecast200Response**](GetLinkedInSupplyForecast200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## search_ad_interests

> <SearchAdInterests200Response> search_ad_interests(q, account_id)

Search targeting interests

Deprecated alias for `GET /v1/ads/targeting/search?dimension=interest`. Kept for backward compatibility, it returns the legacy `{ interests: [...] }` shape rather than the normalized `{ results: [...] }`. New integrations should use `GET /v1/ads/targeting/search` with `dimension=interest`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdTargetingApi.new
q = 'q_example' # String | Search query
account_id = 'account_id_example' # String | Social account ID

begin
  # Search targeting interests
  result = api_instance.search_ad_interests(q, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdTargetingApi->search_ad_interests: #{e}"
end
```

#### Using the search_ad_interests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchAdInterests200Response>, Integer, Hash)> search_ad_interests_with_http_info(q, account_id)

```ruby
begin
  # Search targeting interests
  data, status_code, headers = api_instance.search_ad_interests_with_http_info(q, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchAdInterests200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdTargetingApi->search_ad_interests_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **q** | **String** | Search query |  |
| **account_id** | **String** | Social account ID |  |

### Return type

[**SearchAdInterests200Response**](SearchAdInterests200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_ad_targeting

> <SearchAdTargeting200Response> search_ad_targeting(account_id, q, opts)

Search targeting options

Resolve a human-readable query into the platform's opaque targeting ids used in the `TargetingSpec` (`countries`/`regions`/`cities`/`zips`/`metros` geo keys, and `interests`/`behaviors` entity ids) on `POST /v1/ads/create`, `POST /v1/ads/targeting/reach-estimate`, and `saved_targeting` audiences.  The `dimension` param selects what is searched, `geo` (locations, further scoped by `geoType`), `interest`, `behavior`, or `income`. Availability of each dimension varies by platform (e.g. behaviours are Meta/TikTok only). Results are normalized across platforms into a single shape, so the same client code consumes Meta, TikTok, LinkedIn, X, Pinterest, and Google results.  TikTok geo searches return every matching level in one list (`type` is `country`, `region`, `city`, `district`, or `metro` for DMA areas) — `geoType` is not applied. Results are scoped to the advertiser's targetable markets, and every id is usable in `regions`/`cities`/`metros` keys on `POST /v1/ads/create`.  For geo queries, `q` should contain only the locality name (e.g. `\"Amsterdam\"`, not `\"Amsterdam, NL\"`). Use `countryCode` to disambiguate. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdTargetingApi.new
account_id = 'account_id_example' # String | Social account ID (a connected account on the target ad platform).
q = 'q_example' # String | Search query. For geo, the locality name only (no region/country suffix).
opts = {
  dimension: 'geo', # String | What to search. `geo` resolves locations (scope further with `geoType`), `interest`/`behavior` resolve audience entities, `income` resolves income-tier options. Defaults to `interest` for backward compatibility with the deprecated /v1/ads/interests alias.
  geo_type: 'country', # String | Only used when `dimension=geo`. The kind of location to resolve. Defaults to `city`.
  country_code: 'country_code_example', # String | ISO 3166-1 alpha-2 country code (e.g. NL) to scope a geo search.
  limit: 56 # Integer | Maximum results to return.
}

begin
  # Search targeting options
  result = api_instance.search_ad_targeting(account_id, q, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdTargetingApi->search_ad_targeting: #{e}"
end
```

#### Using the search_ad_targeting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchAdTargeting200Response>, Integer, Hash)> search_ad_targeting_with_http_info(account_id, q, opts)

```ruby
begin
  # Search targeting options
  data, status_code, headers = api_instance.search_ad_targeting_with_http_info(account_id, q, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchAdTargeting200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdTargetingApi->search_ad_targeting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Social account ID (a connected account on the target ad platform). |  |
| **q** | **String** | Search query. For geo, the locality name only (no region/country suffix). |  |
| **dimension** | **String** | What to search. &#x60;geo&#x60; resolves locations (scope further with &#x60;geoType&#x60;), &#x60;interest&#x60;/&#x60;behavior&#x60; resolve audience entities, &#x60;income&#x60; resolves income-tier options. Defaults to &#x60;interest&#x60; for backward compatibility with the deprecated /v1/ads/interests alias. | [optional][default to &#39;interest&#39;] |
| **geo_type** | **String** | Only used when &#x60;dimension&#x3D;geo&#x60;. The kind of location to resolve. Defaults to &#x60;city&#x60;. | [optional][default to &#39;city&#39;] |
| **country_code** | **String** | ISO 3166-1 alpha-2 country code (e.g. NL) to scope a geo search. | [optional] |
| **limit** | **Integer** | Maximum results to return. | [optional][default to 25] |

### Return type

[**SearchAdTargeting200Response**](SearchAdTargeting200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

