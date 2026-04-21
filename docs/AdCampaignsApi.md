# Late::AdCampaignsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**bulk_update_ad_campaign_status**](AdCampaignsApi.md#bulk_update_ad_campaign_status) | **POST** /v1/ads/campaigns/bulk-status | Pause or resume many campaigns |
| [**delete_ad_campaign**](AdCampaignsApi.md#delete_ad_campaign) | **DELETE** /v1/ads/campaigns/{campaignId} | Delete a campaign |
| [**duplicate_ad_campaign**](AdCampaignsApi.md#duplicate_ad_campaign) | **POST** /v1/ads/campaigns/{campaignId}/duplicate | Duplicate a campaign |
| [**get_ad_tree**](AdCampaignsApi.md#get_ad_tree) | **GET** /v1/ads/tree | Get campaign tree |
| [**list_ad_campaigns**](AdCampaignsApi.md#list_ad_campaigns) | **GET** /v1/ads/campaigns | List campaigns |
| [**update_ad_campaign**](AdCampaignsApi.md#update_ad_campaign) | **PUT** /v1/ads/campaigns/{campaignId} | Update a campaign (budget) |
| [**update_ad_campaign_status**](AdCampaignsApi.md#update_ad_campaign_status) | **PUT** /v1/ads/campaigns/{campaignId}/status | Pause or resume a campaign |
| [**update_ad_set**](AdCampaignsApi.md#update_ad_set) | **PUT** /v1/ads/ad-sets/{adSetId} | Update an ad set (budget and/or status) |
| [**update_ad_set_status**](AdCampaignsApi.md#update_ad_set_status) | **PUT** /v1/ads/ad-sets/{adSetId}/status | Pause or resume a single ad set |


## bulk_update_ad_campaign_status

> <BulkUpdateAdCampaignStatus200Response> bulk_update_ad_campaign_status(bulk_update_ad_campaign_status_request)

Pause or resume many campaigns

Process up to 50 campaigns in one call. Each campaign is updated concurrently and the response contains a per-campaign result so a single bad row does not fail the whole batch. 

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
bulk_update_ad_campaign_status_request = Late::BulkUpdateAdCampaignStatusRequest.new({status: 'active', campaigns: [Late::BulkUpdateAdCampaignStatusRequestCampaignsInner.new({platform_campaign_id: 'platform_campaign_id_example', platform: 'facebook'})]}) # BulkUpdateAdCampaignStatusRequest | 

begin
  # Pause or resume many campaigns
  result = api_instance.bulk_update_ad_campaign_status(bulk_update_ad_campaign_status_request)
  p result
rescue Late::ApiError => e
  puts "Error when calling AdCampaignsApi->bulk_update_ad_campaign_status: #{e}"
end
```

#### Using the bulk_update_ad_campaign_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BulkUpdateAdCampaignStatus200Response>, Integer, Hash)> bulk_update_ad_campaign_status_with_http_info(bulk_update_ad_campaign_status_request)

```ruby
begin
  # Pause or resume many campaigns
  data, status_code, headers = api_instance.bulk_update_ad_campaign_status_with_http_info(bulk_update_ad_campaign_status_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BulkUpdateAdCampaignStatus200Response>
rescue Late::ApiError => e
  puts "Error when calling AdCampaignsApi->bulk_update_ad_campaign_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bulk_update_ad_campaign_status_request** | [**BulkUpdateAdCampaignStatusRequest**](BulkUpdateAdCampaignStatusRequest.md) |  |  |

### Return type

[**BulkUpdateAdCampaignStatus200Response**](BulkUpdateAdCampaignStatus200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_ad_campaign

> <DeleteAdCampaign200Response> delete_ad_campaign(campaign_id, delete_ad_campaign_request)

Delete a campaign

Deletes the whole campaign on the platform, cascading to its ad sets and ads. Locally, all Ad documents for this campaign are marked `status: cancelled`.  Meta-only for now. Other platforms return 501 Not Implemented — fall back to DELETE /v1/ads/{adId} per ad in the meantime. 

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
delete_ad_campaign_request = Late::DeleteAdCampaignRequest.new({platform: 'facebook'}) # DeleteAdCampaignRequest | 

begin
  # Delete a campaign
  result = api_instance.delete_ad_campaign(campaign_id, delete_ad_campaign_request)
  p result
rescue Late::ApiError => e
  puts "Error when calling AdCampaignsApi->delete_ad_campaign: #{e}"
end
```

#### Using the delete_ad_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteAdCampaign200Response>, Integer, Hash)> delete_ad_campaign_with_http_info(campaign_id, delete_ad_campaign_request)

```ruby
begin
  # Delete a campaign
  data, status_code, headers = api_instance.delete_ad_campaign_with_http_info(campaign_id, delete_ad_campaign_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteAdCampaign200Response>
rescue Late::ApiError => e
  puts "Error when calling AdCampaignsApi->delete_ad_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Platform campaign ID |  |
| **delete_ad_campaign_request** | [**DeleteAdCampaignRequest**](DeleteAdCampaignRequest.md) |  |  |

### Return type

[**DeleteAdCampaign200Response**](DeleteAdCampaign200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## duplicate_ad_campaign

> <DuplicateAdCampaign200Response> duplicate_ad_campaign(campaign_id, duplicate_ad_campaign_request)

Duplicate a campaign

Duplicates a campaign, including its ad sets, ads, creatives, and targeting by default (`deepCopy: true`). On Meta, this uses `POST /{campaign-id}/copies`. The copy is created paused by default so callers can review before launching.  The platform's duplication is asynchronous from our side; once the copy is created on the platform, we trigger a sync discovery so the new hierarchy shows up in /v1/ads/tree. Set `syncAfter: false` to skip the discovery trigger and poll on your own cadence.  Meta-only for now. Other platforms return 501 Not Implemented. 

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
campaign_id = 'campaign_id_example' # String | Source platform campaign ID
duplicate_ad_campaign_request = Late::DuplicateAdCampaignRequest.new({platform: 'facebook'}) # DuplicateAdCampaignRequest | 

begin
  # Duplicate a campaign
  result = api_instance.duplicate_ad_campaign(campaign_id, duplicate_ad_campaign_request)
  p result
rescue Late::ApiError => e
  puts "Error when calling AdCampaignsApi->duplicate_ad_campaign: #{e}"
end
```

#### Using the duplicate_ad_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DuplicateAdCampaign200Response>, Integer, Hash)> duplicate_ad_campaign_with_http_info(campaign_id, duplicate_ad_campaign_request)

```ruby
begin
  # Duplicate a campaign
  data, status_code, headers = api_instance.duplicate_ad_campaign_with_http_info(campaign_id, duplicate_ad_campaign_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DuplicateAdCampaign200Response>
rescue Late::ApiError => e
  puts "Error when calling AdCampaignsApi->duplicate_ad_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Source platform campaign ID |  |
| **duplicate_ad_campaign_request** | [**DuplicateAdCampaignRequest**](DuplicateAdCampaignRequest.md) |  |  |

### Return type

[**DuplicateAdCampaign200Response**](DuplicateAdCampaign200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_ad_tree

> <GetAdTree200Response> get_ad_tree(opts)

Get campaign tree

Returns a nested Campaign > Ad Set > Ad hierarchy with rolled-up metrics at each level. Uses a two-stage aggregation: ads are grouped into ad sets, then ad sets into campaigns. Metrics are computed over an optional date range, then rolled up from ad level to ad set and campaign levels. Pagination is at the campaign level. Ads without a campaign or ad set ID are grouped into synthetic \"Ungrouped\" buckets. If no date range is provided, defaults to the last 90 days. Date range is capped at 90 days max. 

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
  limit: 56, # Integer | Campaigns per page
  source: 'zernio', # String | `zernio` (default) returns only ads created via Zernio (isExternal=false). `all` additionally returns ads discovered from the platform's ad manager (isExternal=true). Status is NOT filtered by default — use the `status` param for that.
  platform: 'facebook', # String | 
  status: Late::AdStatus::ACTIVE, # AdStatus | Filter by derived campaign status (post-aggregation)
  ad_account_id: 'ad_account_id_example', # String | Platform ad account ID
  account_id: 'account_id_example', # String | Social account ID
  profile_id: 'profile_id_example', # String | Profile ID
  from_date: Date.parse('2013-10-20'), # Date | Start of metrics date range (YYYY-MM-DD). Defaults to 90 days ago.
  to_date: Date.parse('2013-10-20') # Date | End of metrics date range (YYYY-MM-DD). Defaults to today. Max 90-day range.
}

begin
  # Get campaign tree
  result = api_instance.get_ad_tree(opts)
  p result
rescue Late::ApiError => e
  puts "Error when calling AdCampaignsApi->get_ad_tree: #{e}"
end
```

#### Using the get_ad_tree_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAdTree200Response>, Integer, Hash)> get_ad_tree_with_http_info(opts)

```ruby
begin
  # Get campaign tree
  data, status_code, headers = api_instance.get_ad_tree_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAdTree200Response>
rescue Late::ApiError => e
  puts "Error when calling AdCampaignsApi->get_ad_tree_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number (1-based) | [optional][default to 1] |
| **limit** | **Integer** | Campaigns per page | [optional][default to 20] |
| **source** | **String** | &#x60;zernio&#x60; (default) returns only ads created via Zernio (isExternal&#x3D;false). &#x60;all&#x60; additionally returns ads discovered from the platform&#39;s ad manager (isExternal&#x3D;true). Status is NOT filtered by default — use the &#x60;status&#x60; param for that. | [optional][default to &#39;zernio&#39;] |
| **platform** | **String** |  | [optional] |
| **status** | [**AdStatus**](.md) | Filter by derived campaign status (post-aggregation) | [optional] |
| **ad_account_id** | **String** | Platform ad account ID | [optional] |
| **account_id** | **String** | Social account ID | [optional] |
| **profile_id** | **String** | Profile ID | [optional] |
| **from_date** | **Date** | Start of metrics date range (YYYY-MM-DD). Defaults to 90 days ago. | [optional] |
| **to_date** | **Date** | End of metrics date range (YYYY-MM-DD). Defaults to today. Max 90-day range. | [optional] |

### Return type

[**GetAdTree200Response**](GetAdTree200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ad_campaigns

> <ListAdCampaigns200Response> list_ad_campaigns(opts)

List campaigns

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
  source: 'zernio', # String | `zernio` (default) returns only ads created via Zernio (isExternal=false). `all` additionally returns ads discovered from the platform's ad manager (isExternal=true). Status is NOT filtered by default — use the `status` param for that.
  platform: 'facebook', # String | 
  status: Late::AdStatus::ACTIVE, # AdStatus | Filter by derived campaign status (post-aggregation)
  ad_account_id: 'ad_account_id_example', # String | Platform ad account ID (e.g. act_123 for Meta)
  account_id: 'account_id_example', # String | Social account ID
  profile_id: 'profile_id_example' # String | Profile ID
}

begin
  # List campaigns
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
  # List campaigns
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
| **source** | **String** | &#x60;zernio&#x60; (default) returns only ads created via Zernio (isExternal&#x3D;false). &#x60;all&#x60; additionally returns ads discovered from the platform&#39;s ad manager (isExternal&#x3D;true). Status is NOT filtered by default — use the &#x60;status&#x60; param for that. | [optional][default to &#39;zernio&#39;] |
| **platform** | **String** |  | [optional] |
| **status** | [**AdStatus**](.md) | Filter by derived campaign status (post-aggregation) | [optional] |
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


## update_ad_campaign

> <UpdateAdCampaign200Response> update_ad_campaign(campaign_id, update_ad_campaign_request)

Update a campaign (budget)

Campaign-level edits. Currently supports updating the CBO (Campaign Budget Optimization) budget. For ABO campaigns (where the budget lives on the ad set), use PUT /v1/ads/ad-sets/{adSetId} instead — this endpoint will return 409 with code BUDGET_LEVEL_MISMATCH.  Meta-only for now. Other platforms return 501 Not Implemented. 

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
update_ad_campaign_request = Late::UpdateAdCampaignRequest.new({platform: 'facebook', budget: Late::UpdateAdCampaignRequestBudget.new({amount: 3.56, type: 'daily'})}) # UpdateAdCampaignRequest | 

begin
  # Update a campaign (budget)
  result = api_instance.update_ad_campaign(campaign_id, update_ad_campaign_request)
  p result
rescue Late::ApiError => e
  puts "Error when calling AdCampaignsApi->update_ad_campaign: #{e}"
end
```

#### Using the update_ad_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateAdCampaign200Response>, Integer, Hash)> update_ad_campaign_with_http_info(campaign_id, update_ad_campaign_request)

```ruby
begin
  # Update a campaign (budget)
  data, status_code, headers = api_instance.update_ad_campaign_with_http_info(campaign_id, update_ad_campaign_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateAdCampaign200Response>
rescue Late::ApiError => e
  puts "Error when calling AdCampaignsApi->update_ad_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Platform campaign ID |  |
| **update_ad_campaign_request** | [**UpdateAdCampaignRequest**](UpdateAdCampaignRequest.md) |  |  |

### Return type

[**UpdateAdCampaign200Response**](UpdateAdCampaign200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
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


## update_ad_set

> <UpdateAdSet200Response> update_ad_set(ad_set_id, update_ad_set_request)

Update an ad set (budget and/or status)

Ad-set-level writes. Use this for ABO budget updates and ad-set-scoped pause/resume. Provide `budget` and/or `status` in the body.  When updating `budget` on an ABO campaign: if the parent campaign is CBO, the response is 409 with code BUDGET_LEVEL_MISMATCH — route to PUT /v1/ads/campaigns/{campaignId} instead. 

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
ad_set_id = 'ad_set_id_example' # String | Platform ad set ID
update_ad_set_request = Late::UpdateAdSetRequest.new({platform: 'facebook'}) # UpdateAdSetRequest | 

begin
  # Update an ad set (budget and/or status)
  result = api_instance.update_ad_set(ad_set_id, update_ad_set_request)
  p result
rescue Late::ApiError => e
  puts "Error when calling AdCampaignsApi->update_ad_set: #{e}"
end
```

#### Using the update_ad_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateAdSet200Response>, Integer, Hash)> update_ad_set_with_http_info(ad_set_id, update_ad_set_request)

```ruby
begin
  # Update an ad set (budget and/or status)
  data, status_code, headers = api_instance.update_ad_set_with_http_info(ad_set_id, update_ad_set_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateAdSet200Response>
rescue Late::ApiError => e
  puts "Error when calling AdCampaignsApi->update_ad_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_set_id** | **String** | Platform ad set ID |  |
| **update_ad_set_request** | [**UpdateAdSetRequest**](UpdateAdSetRequest.md) |  |  |

### Return type

[**UpdateAdSet200Response**](UpdateAdSet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_ad_set_status

> <UpdateAdSetStatus200Response> update_ad_set_status(ad_set_id, update_ad_campaign_status_request)

Pause or resume a single ad set

Ad-set-scoped pause/resume (doesn't touch sibling ad sets). Thin wrapper over PUT /v1/ads/ad-sets/{adSetId} for callers that only want the status toggle and prefer a symmetric URL to /v1/ads/campaigns/{campaignId}/status. 

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
ad_set_id = 'ad_set_id_example' # String | Platform ad set ID
update_ad_campaign_status_request = Late::UpdateAdCampaignStatusRequest.new({status: 'active', platform: 'facebook'}) # UpdateAdCampaignStatusRequest | 

begin
  # Pause or resume a single ad set
  result = api_instance.update_ad_set_status(ad_set_id, update_ad_campaign_status_request)
  p result
rescue Late::ApiError => e
  puts "Error when calling AdCampaignsApi->update_ad_set_status: #{e}"
end
```

#### Using the update_ad_set_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateAdSetStatus200Response>, Integer, Hash)> update_ad_set_status_with_http_info(ad_set_id, update_ad_campaign_status_request)

```ruby
begin
  # Pause or resume a single ad set
  data, status_code, headers = api_instance.update_ad_set_status_with_http_info(ad_set_id, update_ad_campaign_status_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateAdSetStatus200Response>
rescue Late::ApiError => e
  puts "Error when calling AdCampaignsApi->update_ad_set_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_set_id** | **String** | Platform ad set ID |  |
| **update_ad_campaign_status_request** | [**UpdateAdCampaignStatusRequest**](UpdateAdCampaignStatusRequest.md) |  |  |

### Return type

[**UpdateAdSetStatus200Response**](UpdateAdSetStatus200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

