# Late::AdCampaignsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_ad_campaigns**](AdCampaignsApi.md#list_ad_campaigns) | **GET** /v1/ads/campaigns | List campaigns with aggregate metrics |
| [**update_ad_campaign_status**](AdCampaignsApi.md#update_ad_campaign_status) | **PUT** /v1/ads/campaigns/{campaignId}/status | Pause or resume a campaign |


## list_ad_campaigns

> <ListAdCampaigns200Response> list_ad_campaigns(opts)

List campaigns with aggregate metrics

Returns campaigns as virtual aggregations over ad documents grouped by platform campaign ID. Metrics (spend, impressions, clicks, etc.) are summed across all ads in each campaign. Campaign status is derived from child ad statuses (active > pending_review > paused > error > completed > cancelled > rejected). 

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::AdCampaignsApi.new
opts = {
  page: 56, # Integer | Page number (1-based)
  limit: 56, # Integer | 
  source: 'zernio', # String | 
  platform: 'facebook', # String | 
  status: 'active', # String | Filter by derived campaign status (post-aggregation)
  ad_account_id: 'ad_account_id_example', # String | Platform ad account ID (e.g. act_123 for Meta)
  account_id: 'account_id_example', # String | Social account ID
  profile_id: 'profile_id_example' # String | Profile ID
}

begin
  # List campaigns with aggregate metrics
  result = api_instance.list_ad_campaigns(opts)
  p result
rescue Late::ApiError => e
  puts "Error when calling AdCampaignsApi->list_ad_campaigns: #{e}"
end
```

#### Using the list_ad_campaigns_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAdCampaigns200Response>, Integer, Hash)> list_ad_campaigns_with_http_info(opts)

```ruby
begin
  # List campaigns with aggregate metrics
  data, status_code, headers = api_instance.list_ad_campaigns_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAdCampaigns200Response>
rescue Late::ApiError => e
  puts "Error when calling AdCampaignsApi->list_ad_campaigns_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number (1-based) | [optional][default to 1] |
| **limit** | **Integer** |  | [optional][default to 20] |
| **source** | **String** |  | [optional][default to &#39;zernio&#39;] |
| **platform** | **String** |  | [optional] |
| **status** | **String** | Filter by derived campaign status (post-aggregation) | [optional] |
| **ad_account_id** | **String** | Platform ad account ID (e.g. act_123 for Meta) | [optional] |
| **account_id** | **String** | Social account ID | [optional] |
| **profile_id** | **String** | Profile ID | [optional] |

### Return type

[**ListAdCampaigns200Response**](ListAdCampaigns200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_ad_campaign_status

> <UpdateAdCampaignStatus200Response> update_ad_campaign_status(campaign_id, update_ad_campaign_status_request)

Pause or resume a campaign

Updates the status of all ads in a campaign. Makes one platform API call (not per-ad) since status cascades through the campaign hierarchy. Ads in terminal statuses (rejected, completed, cancelled) are automatically skipped. 

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::AdCampaignsApi.new
campaign_id = 'campaign_id_example' # String | Platform campaign ID
update_ad_campaign_status_request = Late::UpdateAdCampaignStatusRequest.new({status: 'active', platform: 'facebook'}) # UpdateAdCampaignStatusRequest | 

begin
  # Pause or resume a campaign
  result = api_instance.update_ad_campaign_status(campaign_id, update_ad_campaign_status_request)
  p result
rescue Late::ApiError => e
  puts "Error when calling AdCampaignsApi->update_ad_campaign_status: #{e}"
end
```

#### Using the update_ad_campaign_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateAdCampaignStatus200Response>, Integer, Hash)> update_ad_campaign_status_with_http_info(campaign_id, update_ad_campaign_status_request)

```ruby
begin
  # Pause or resume a campaign
  data, status_code, headers = api_instance.update_ad_campaign_status_with_http_info(campaign_id, update_ad_campaign_status_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateAdCampaignStatus200Response>
rescue Late::ApiError => e
  puts "Error when calling AdCampaignsApi->update_ad_campaign_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Platform campaign ID |  |
| **update_ad_campaign_status_request** | [**UpdateAdCampaignStatusRequest**](UpdateAdCampaignStatusRequest.md) |  |  |

### Return type

[**UpdateAdCampaignStatus200Response**](UpdateAdCampaignStatus200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

