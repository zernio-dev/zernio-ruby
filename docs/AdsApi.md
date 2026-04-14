# Late::AdsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**boost_post**](AdsApi.md#boost_post) | **POST** /v1/ads/boost | Boost post as ad |
| [**create_standalone_ad**](AdsApi.md#create_standalone_ad) | **POST** /v1/ads/create | Create standalone ad |
| [**delete_ad**](AdsApi.md#delete_ad) | **DELETE** /v1/ads/{adId} | Cancel an ad |
| [**get_ad**](AdsApi.md#get_ad) | **GET** /v1/ads/{adId} | Get ad details |
| [**get_ad_analytics**](AdsApi.md#get_ad_analytics) | **GET** /v1/ads/{adId}/analytics | Get ad analytics |
| [**list_ad_accounts**](AdsApi.md#list_ad_accounts) | **GET** /v1/ads/accounts | List ad accounts |
| [**list_ads**](AdsApi.md#list_ads) | **GET** /v1/ads | List ads |
| [**search_ad_interests**](AdsApi.md#search_ad_interests) | **GET** /v1/ads/interests | Search targeting interests |
| [**update_ad**](AdsApi.md#update_ad) | **PUT** /v1/ads/{adId} | Update ad |


## boost_post

> <UpdateAd200Response> boost_post(boost_post_request)

Boost post as ad

Creates a paid ad campaign from an existing published post. Creates the full platform campaign hierarchy (campaign, ad set, ad).

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::AdsApi.new
boost_post_request = Late::BoostPostRequest.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example', name: 'name_example', goal: 'engagement', budget: Late::BoostPostRequestBudget.new({amount: 3.56, type: 'daily'})}) # BoostPostRequest | 

begin
  # Boost post as ad
  result = api_instance.boost_post(boost_post_request)
  p result
rescue Late::ApiError => e
  puts "Error when calling AdsApi->boost_post: #{e}"
end
```

#### Using the boost_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateAd200Response>, Integer, Hash)> boost_post_with_http_info(boost_post_request)

```ruby
begin
  # Boost post as ad
  data, status_code, headers = api_instance.boost_post_with_http_info(boost_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateAd200Response>
rescue Late::ApiError => e
  puts "Error when calling AdsApi->boost_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **boost_post_request** | [**BoostPostRequest**](BoostPostRequest.md) |  |  |

### Return type

[**UpdateAd200Response**](UpdateAd200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_standalone_ad

> <UpdateAd200Response> create_standalone_ad(create_standalone_ad_request)

Create standalone ad

Creates a paid ad with custom creative (headline, body, image/video, link). Creates the full platform campaign hierarchy.

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::AdsApi.new
create_standalone_ad_request = Late::CreateStandaloneAdRequest.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example', name: 'name_example', goal: 'engagement', budget_amount: 3.56, budget_type: 'daily', body: 'body_example'}) # CreateStandaloneAdRequest | 

begin
  # Create standalone ad
  result = api_instance.create_standalone_ad(create_standalone_ad_request)
  p result
rescue Late::ApiError => e
  puts "Error when calling AdsApi->create_standalone_ad: #{e}"
end
```

#### Using the create_standalone_ad_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateAd200Response>, Integer, Hash)> create_standalone_ad_with_http_info(create_standalone_ad_request)

```ruby
begin
  # Create standalone ad
  data, status_code, headers = api_instance.create_standalone_ad_with_http_info(create_standalone_ad_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateAd200Response>
rescue Late::ApiError => e
  puts "Error when calling AdsApi->create_standalone_ad_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_standalone_ad_request** | [**CreateStandaloneAdRequest**](CreateStandaloneAdRequest.md) |  |  |

### Return type

[**UpdateAd200Response**](UpdateAd200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_ad

> <DeleteAccountGroup200Response> delete_ad(ad_id)

Cancel an ad

Cancels the ad on the platform and marks it as cancelled in the database. The ad is preserved for history.

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::AdsApi.new
ad_id = 'ad_id_example' # String | 

begin
  # Cancel an ad
  result = api_instance.delete_ad(ad_id)
  p result
rescue Late::ApiError => e
  puts "Error when calling AdsApi->delete_ad: #{e}"
end
```

#### Using the delete_ad_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteAccountGroup200Response>, Integer, Hash)> delete_ad_with_http_info(ad_id)

```ruby
begin
  # Cancel an ad
  data, status_code, headers = api_instance.delete_ad_with_http_info(ad_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteAccountGroup200Response>
rescue Late::ApiError => e
  puts "Error when calling AdsApi->delete_ad_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_id** | **String** |  |  |

### Return type

[**DeleteAccountGroup200Response**](DeleteAccountGroup200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ad

> <GetAd200Response> get_ad(ad_id)

Get ad details

Returns an ad with its creative, targeting, status, and performance metrics.

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::AdsApi.new
ad_id = 'ad_id_example' # String | 

begin
  # Get ad details
  result = api_instance.get_ad(ad_id)
  p result
rescue Late::ApiError => e
  puts "Error when calling AdsApi->get_ad: #{e}"
end
```

#### Using the get_ad_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAd200Response>, Integer, Hash)> get_ad_with_http_info(ad_id)

```ruby
begin
  # Get ad details
  data, status_code, headers = api_instance.get_ad_with_http_info(ad_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAd200Response>
rescue Late::ApiError => e
  puts "Error when calling AdsApi->get_ad_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_id** | **String** |  |  |

### Return type

[**GetAd200Response**](GetAd200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ad_analytics

> <GetAdAnalytics200Response> get_ad_analytics(ad_id, opts)

Get ad analytics

Returns detailed performance analytics for an ad. Includes summary metrics, a daily timeline over the requested date range, and optional demographic breakdowns (Meta and TikTok only). If no date range is provided, defaults to the last 90 days. Date range is capped at 90 days max. 

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::AdsApi.new
ad_id = 'ad_id_example' # String | 
opts = {
  from_date: Date.parse('2013-10-20'), # Date | Start of date range (YYYY-MM-DD). Defaults to 90 days ago.
  to_date: Date.parse('2013-10-20'), # Date | End of date range (YYYY-MM-DD). Defaults to today. Max 90-day range.
  breakdowns: 'breakdowns_example' # String | Comma-separated breakdown dimensions. Meta: age, gender, country, publisher_platform, device_platform, region. TikTok: gender, age, country_code, platform, ac, language.
}

begin
  # Get ad analytics
  result = api_instance.get_ad_analytics(ad_id, opts)
  p result
rescue Late::ApiError => e
  puts "Error when calling AdsApi->get_ad_analytics: #{e}"
end
```

#### Using the get_ad_analytics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAdAnalytics200Response>, Integer, Hash)> get_ad_analytics_with_http_info(ad_id, opts)

```ruby
begin
  # Get ad analytics
  data, status_code, headers = api_instance.get_ad_analytics_with_http_info(ad_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAdAnalytics200Response>
rescue Late::ApiError => e
  puts "Error when calling AdsApi->get_ad_analytics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_id** | **String** |  |  |
| **from_date** | **Date** | Start of date range (YYYY-MM-DD). Defaults to 90 days ago. | [optional] |
| **to_date** | **Date** | End of date range (YYYY-MM-DD). Defaults to today. Max 90-day range. | [optional] |
| **breakdowns** | **String** | Comma-separated breakdown dimensions. Meta: age, gender, country, publisher_platform, device_platform, region. TikTok: gender, age, country_code, platform, ac, language. | [optional] |

### Return type

[**GetAdAnalytics200Response**](GetAdAnalytics200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ad_accounts

> <ListAdAccounts200Response> list_ad_accounts(account_id)

List ad accounts

Returns the platform ad accounts available for the given social account (e.g. Meta ad accounts, TikTok advertiser IDs, Google Ads customer IDs).

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::AdsApi.new
account_id = 'account_id_example' # String | Social account ID

begin
  # List ad accounts
  result = api_instance.list_ad_accounts(account_id)
  p result
rescue Late::ApiError => e
  puts "Error when calling AdsApi->list_ad_accounts: #{e}"
end
```

#### Using the list_ad_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAdAccounts200Response>, Integer, Hash)> list_ad_accounts_with_http_info(account_id)

```ruby
begin
  # List ad accounts
  data, status_code, headers = api_instance.list_ad_accounts_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAdAccounts200Response>
rescue Late::ApiError => e
  puts "Error when calling AdsApi->list_ad_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Social account ID |  |

### Return type

[**ListAdAccounts200Response**](ListAdAccounts200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ads

> <ListAds200Response> list_ads(opts)

List ads

Returns a paginated list of ads with metrics computed over an optional date range. Use source=all to include externally-synced ads from platform ad managers. If no date range is provided, defaults to the last 90 days. Date range is capped at 90 days max. 

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::AdsApi.new
opts = {
  page: 56, # Integer | Page number (1-based)
  limit: 56, # Integer | 
  source: 'zernio', # String | zernio = Zernio-created only, all = include external ads
  status: Late::AdStatus::ACTIVE, # AdStatus | 
  platform: 'facebook', # String | 
  account_id: 'account_id_example', # String | Social account ID
  ad_account_id: 'ad_account_id_example', # String | Platform ad account ID (e.g. act_123 for Meta). Mirrors the same filter on /v1/ads/campaigns and /v1/ads/tree.
  profile_id: 'profile_id_example', # String | Profile ID
  campaign_id: 'campaign_id_example', # String | Platform campaign ID (filter ads within a campaign)
  from_date: Date.parse('2013-10-20'), # Date | Start of metrics date range (YYYY-MM-DD). Defaults to 90 days ago.
  to_date: Date.parse('2013-10-20') # Date | End of metrics date range (YYYY-MM-DD). Defaults to today. Max 90-day range.
}

begin
  # List ads
  result = api_instance.list_ads(opts)
  p result
rescue Late::ApiError => e
  puts "Error when calling AdsApi->list_ads: #{e}"
end
```

#### Using the list_ads_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAds200Response>, Integer, Hash)> list_ads_with_http_info(opts)

```ruby
begin
  # List ads
  data, status_code, headers = api_instance.list_ads_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAds200Response>
rescue Late::ApiError => e
  puts "Error when calling AdsApi->list_ads_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number (1-based) | [optional][default to 1] |
| **limit** | **Integer** |  | [optional][default to 50] |
| **source** | **String** | zernio &#x3D; Zernio-created only, all &#x3D; include external ads | [optional][default to &#39;zernio&#39;] |
| **status** | [**AdStatus**](.md) |  | [optional] |
| **platform** | **String** |  | [optional] |
| **account_id** | **String** | Social account ID | [optional] |
| **ad_account_id** | **String** | Platform ad account ID (e.g. act_123 for Meta). Mirrors the same filter on /v1/ads/campaigns and /v1/ads/tree. | [optional] |
| **profile_id** | **String** | Profile ID | [optional] |
| **campaign_id** | **String** | Platform campaign ID (filter ads within a campaign) | [optional] |
| **from_date** | **Date** | Start of metrics date range (YYYY-MM-DD). Defaults to 90 days ago. | [optional] |
| **to_date** | **Date** | End of metrics date range (YYYY-MM-DD). Defaults to today. Max 90-day range. | [optional] |

### Return type

[**ListAds200Response**](ListAds200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_ad_interests

> <SearchAdInterests200Response> search_ad_interests(q, account_id)

Search targeting interests

Search for interest-based targeting options available on the platform.

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::AdsApi.new
q = 'q_example' # String | Search query
account_id = 'account_id_example' # String | Social account ID

begin
  # Search targeting interests
  result = api_instance.search_ad_interests(q, account_id)
  p result
rescue Late::ApiError => e
  puts "Error when calling AdsApi->search_ad_interests: #{e}"
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
rescue Late::ApiError => e
  puts "Error when calling AdsApi->search_ad_interests_with_http_info: #{e}"
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


## update_ad

> <UpdateAd200Response> update_ad(ad_id, update_ad_request)

Update ad

Update one or more fields on an ad. Status changes and budget updates are propagated to the platform. Targeting updates are Meta-only.

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::AdsApi.new
ad_id = 'ad_id_example' # String | 
update_ad_request = Late::UpdateAdRequest.new # UpdateAdRequest | 

begin
  # Update ad
  result = api_instance.update_ad(ad_id, update_ad_request)
  p result
rescue Late::ApiError => e
  puts "Error when calling AdsApi->update_ad: #{e}"
end
```

#### Using the update_ad_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateAd200Response>, Integer, Hash)> update_ad_with_http_info(ad_id, update_ad_request)

```ruby
begin
  # Update ad
  data, status_code, headers = api_instance.update_ad_with_http_info(ad_id, update_ad_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateAd200Response>
rescue Late::ApiError => e
  puts "Error when calling AdsApi->update_ad_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_id** | **String** |  |  |
| **update_ad_request** | [**UpdateAdRequest**](UpdateAdRequest.md) |  |  |

### Return type

[**UpdateAd200Response**](UpdateAd200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

