# Zernio::AdCampaignsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**boost_post**](AdCampaignsApi.md#boost_post) | **POST** /v1/ads/boost | Boost post as ad |
| [**bulk_update_ad_campaign_status**](AdCampaignsApi.md#bulk_update_ad_campaign_status) | **POST** /v1/ads/campaigns/bulk-status | Pause or resume many campaigns |
| [**create_ad_campaign**](AdCampaignsApi.md#create_ad_campaign) | **POST** /v1/ads/campaigns | Create a standalone campaign |
| [**create_standalone_ad**](AdCampaignsApi.md#create_standalone_ad) | **POST** /v1/ads/create | Create standalone ad |
| [**delete_ad**](AdCampaignsApi.md#delete_ad) | **DELETE** /v1/ads/{adId} | Cancel an ad |
| [**delete_ad_campaign**](AdCampaignsApi.md#delete_ad_campaign) | **DELETE** /v1/ads/campaigns/{campaignId} | Delete a campaign |
| [**duplicate_ad**](AdCampaignsApi.md#duplicate_ad) | **POST** /v1/ads/{adId}/duplicate | Duplicate an ad |
| [**duplicate_ad_campaign**](AdCampaignsApi.md#duplicate_ad_campaign) | **POST** /v1/ads/campaigns/{campaignId}/duplicate | Duplicate a campaign |
| [**duplicate_ad_set**](AdCampaignsApi.md#duplicate_ad_set) | **POST** /v1/ads/ad-sets/{adSetId}/duplicate | Duplicate an ad set |
| [**get_ad**](AdCampaignsApi.md#get_ad) | **GET** /v1/ads/{adId} | Get ad details |
| [**get_ad_set_details**](AdCampaignsApi.md#get_ad_set_details) | **GET** /v1/ads/ad-sets/{adSetId} | Live ad-set details incl. learning phase |
| [**get_ad_tree**](AdCampaignsApi.md#get_ad_tree) | **GET** /v1/ads/tree | Get campaign tree |
| [**get_ads_timeline**](AdCampaignsApi.md#get_ads_timeline) | **GET** /v1/ads/timeline | Get daily account metrics |
| [**list_ad_campaigns**](AdCampaignsApi.md#list_ad_campaigns) | **GET** /v1/ads/campaigns | List campaigns |
| [**list_ads**](AdCampaignsApi.md#list_ads) | **GET** /v1/ads | List ads |
| [**update_ad**](AdCampaignsApi.md#update_ad) | **PUT** /v1/ads/{adId} | Update ad |
| [**update_ad_campaign**](AdCampaignsApi.md#update_ad_campaign) | **PUT** /v1/ads/campaigns/{campaignId} | Update a campaign |
| [**update_ad_campaign_status**](AdCampaignsApi.md#update_ad_campaign_status) | **PUT** /v1/ads/campaigns/{campaignId}/status | Pause or resume a campaign |
| [**update_ad_set**](AdCampaignsApi.md#update_ad_set) | **PUT** /v1/ads/ad-sets/{adSetId} | Update an ad set |
| [**update_ad_set_status**](AdCampaignsApi.md#update_ad_set_status) | **PUT** /v1/ads/ad-sets/{adSetId}/status | Pause or resume a single ad set |
| [**update_ad_status**](AdCampaignsApi.md#update_ad_status) | **PUT** /v1/ads/{adId}/status | Pause or resume a single ad |


## boost_post

> <UpdateAd200Response> boost_post(boost_post_request)

Boost post as ad

Creates a paid ad campaign from an existing published post. Creates the full platform campaign hierarchy (campaign, ad set, ad).

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCampaignsApi.new
boost_post_request = Zernio::BoostPostRequest.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example', name: 'name_example', goal: 'engagement', budget: Zernio::BoostPostRequestBudget.new({amount: 3.56, type: 'daily'})}) # BoostPostRequest | 

begin
  # Boost post as ad
  result = api_instance.boost_post(boost_post_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->boost_post: #{e}"
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
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->boost_post_with_http_info: #{e}"
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


## bulk_update_ad_campaign_status

> <BulkUpdateAdCampaignStatus200Response> bulk_update_ad_campaign_status(bulk_update_ad_campaign_status_request)

Pause or resume many campaigns

Process up to 50 campaigns in one call. Each campaign is updated concurrently and the response contains a per-campaign result so a single bad row does not fail the whole batch. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCampaignsApi.new
bulk_update_ad_campaign_status_request = Zernio::BulkUpdateAdCampaignStatusRequest.new({status: 'active', campaigns: [Zernio::BulkUpdateAdCampaignStatusRequestCampaignsInner.new({platform_campaign_id: 'platform_campaign_id_example', platform: 'facebook'})]}) # BulkUpdateAdCampaignStatusRequest | 

begin
  # Pause or resume many campaigns
  result = api_instance.bulk_update_ad_campaign_status(bulk_update_ad_campaign_status_request)
  p result
rescue Zernio::ApiError => e
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
rescue Zernio::ApiError => e
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


## create_ad_campaign

> <CreateAdCampaign201Response> create_ad_campaign(create_ad_campaign_request)

Create a standalone campaign

Creates a campaign WITHOUT its first ad set / ad (the ODAX shell only). Ad sets join it later via `existingCampaignId` on the create endpoints. A budget here is campaign-level (CBO) by definition; omit it for ABO (each ad set carries its own budget). Created `PAUSED` unless `status: ACTIVE`. The campaign materializes in `/v1/ads/tree` via the next sync discovery pass.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCampaignsApi.new
create_ad_campaign_request = Zernio::CreateAdCampaignRequest.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example', name: 'name_example', goal: 'engagement'}) # CreateAdCampaignRequest | 

begin
  # Create a standalone campaign
  result = api_instance.create_ad_campaign(create_ad_campaign_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->create_ad_campaign: #{e}"
end
```

#### Using the create_ad_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAdCampaign201Response>, Integer, Hash)> create_ad_campaign_with_http_info(create_ad_campaign_request)

```ruby
begin
  # Create a standalone campaign
  data, status_code, headers = api_instance.create_ad_campaign_with_http_info(create_ad_campaign_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAdCampaign201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->create_ad_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_ad_campaign_request** | [**CreateAdCampaignRequest**](CreateAdCampaignRequest.md) |  |  |

### Return type

[**CreateAdCampaign201Response**](CreateAdCampaign201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_standalone_ad

> <CreateStandaloneAd200Response> create_standalone_ad(create_standalone_ad_request, opts)

Create standalone ad

Creates a paid ad with custom creative across Meta, Google Ads, Pinterest, TikTok, X/Twitter, LinkedIn, and OpenAI Ads (ChatGPT Ads). Supports three mutually-exclusive request shapes selected by the body, a legacy single-creative shape (all platforms, default), a Meta-only multi-creative shape via the creatives array (one ad set with N ads sharing budget and targeting), and a Meta-only attach shape via adSetId (adds one new ad to an existing ad set). Per-platform required fields, budget minimums, and video-ad rules are documented on each property below. LinkedIn creates a Single Image or Single Video Ad backed by a Direct Sponsored Content \"dark post\" authored by a Company Page (see `organizationId`); supported goals are engagement, traffic, awareness, and video_views (video ads use the `video` field; video_views requires a video), and traffic ads require `linkUrl`.  **Idempotency:** this endpoint is not idempotent at the platform level (a blind retry creates a second campaign/ad set/ad). Send an `Idempotency-Key` header to make retries safe: the first request with a given key creates the ad and we store the response; a retry with the same key replays that exact response (with `Idempotent-Replayed: true`) instead of creating duplicates. Reusing a key with a different body returns 422; a key whose first request is still in flight returns 409 (retry after a short backoff). Keys are scoped to your credential and expire after 24h.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCampaignsApi.new
create_standalone_ad_request = Zernio::CreateStandaloneAdRequest.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example', name: 'name_example'}) # CreateStandaloneAdRequest | 
opts = {
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes create retries safe. Same key + same body replays the original response; same key + different body → 422; key still processing → 409.
}

begin
  # Create standalone ad
  result = api_instance.create_standalone_ad(create_standalone_ad_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->create_standalone_ad: #{e}"
end
```

#### Using the create_standalone_ad_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateStandaloneAd200Response>, Integer, Hash)> create_standalone_ad_with_http_info(create_standalone_ad_request, opts)

```ruby
begin
  # Create standalone ad
  data, status_code, headers = api_instance.create_standalone_ad_with_http_info(create_standalone_ad_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateStandaloneAd200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->create_standalone_ad_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_standalone_ad_request** | [**CreateStandaloneAdRequest**](CreateStandaloneAdRequest.md) |  |  |
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes create retries safe. Same key + same body replays the original response; same key + different body → 422; key still processing → 409. | [optional] |

### Return type

[**CreateStandaloneAd200Response**](CreateStandaloneAd200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_ad

> <DeleteAccountGroup200Response> delete_ad(ad_id)

Cancel an ad

Cancels the ad on the platform and marks it as cancelled in the database. The ad is preserved for history. OpenAI Ads has no delete API; the ad is archived instead (a terminal state, the closest equivalent).

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCampaignsApi.new
ad_id = 'ad_id_example' # String | 

begin
  # Cancel an ad
  result = api_instance.delete_ad(ad_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->delete_ad: #{e}"
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
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->delete_ad_with_http_info: #{e}"
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


## delete_ad_campaign

> <DeleteAdCampaign200Response> delete_ad_campaign(campaign_id, delete_ad_campaign_request)

Delete a campaign

Deletes the whole campaign on the platform, cascading to its ad sets and ads. Locally, all Ad documents for this campaign are marked `status: cancelled`.  Meta-only for now. Other platforms return 501 Not Implemented — fall back to DELETE /v1/ads/{adId} per ad in the meantime. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCampaignsApi.new
campaign_id = 'campaign_id_example' # String | Platform campaign ID
delete_ad_campaign_request = Zernio::DeleteAdCampaignRequest.new({platform: 'facebook'}) # DeleteAdCampaignRequest | 

begin
  # Delete a campaign
  result = api_instance.delete_ad_campaign(campaign_id, delete_ad_campaign_request)
  p result
rescue Zernio::ApiError => e
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
rescue Zernio::ApiError => e
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


## duplicate_ad

> <DuplicateAd200Response> duplicate_ad(ad_id, opts)

Duplicate an ad

Duplicates a single ad via Meta's native `POST /{ad-id}/copies`. The copy is created paused. `adSetId` retargets the copy into another ad set; omitted = the source's own ad set. Accepts the Zernio ad id or the platform ad id. Sync discovery is triggered automatically (`syncAfter: false` to skip).

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCampaignsApi.new
ad_id = 'ad_id_example' # String | Zernio ad ID or platform ad ID
opts = {
  duplicate_ad_request: Zernio::DuplicateAdRequest.new # DuplicateAdRequest | 
}

begin
  # Duplicate an ad
  result = api_instance.duplicate_ad(ad_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->duplicate_ad: #{e}"
end
```

#### Using the duplicate_ad_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DuplicateAd200Response>, Integer, Hash)> duplicate_ad_with_http_info(ad_id, opts)

```ruby
begin
  # Duplicate an ad
  data, status_code, headers = api_instance.duplicate_ad_with_http_info(ad_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DuplicateAd200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->duplicate_ad_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_id** | **String** | Zernio ad ID or platform ad ID |  |
| **duplicate_ad_request** | [**DuplicateAdRequest**](DuplicateAdRequest.md) |  | [optional] |

### Return type

[**DuplicateAd200Response**](DuplicateAd200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## duplicate_ad_campaign

> <DuplicateAdCampaign200Response> duplicate_ad_campaign(campaign_id, duplicate_ad_campaign_request)

Duplicate a campaign

Duplicates a campaign, including its ad sets, ads, creatives, and targeting by default (`deepCopy: true`). The copy is created paused so callers can review before launching.  Per-platform implementation: - **Meta** uses the native `POST /{campaign-id}/copies` endpoint. - **TikTok** has no native copy primitive; Zernio walks the source   graph (`/v2/campaign/get/`, `/v2/adgroup/get/`, `/v2/ad/get/`) and   recreates each entity via the corresponding `/create/` endpoints,   carrying over budget / targeting / bid_type / bid_price /   deep_bid_type / creative fields. Spark Ad linkage (`tiktok_item_id`)   is preserved. - **LinkedIn** has no native copy primitive; Zernio walks the source   CampaignGroup → Campaigns → Creatives and recreates each entity,   carrying over `type` / `costType` / `unitCost` /   `optimizationTargetType` / `creativeSelection` / `objectiveType` /   `format` / `dailyBudget` / `totalBudget` / `targetingCriteria` /   `runSchedule` and every Creative's `content` object verbatim.   `statusOption: INHERITED_FROM_SOURCE` is evaluated **per entity**:   any Group / Campaign / Creative whose source is `ACTIVE` gets its   clone activated too. Duplicating an ACTIVE campaign with   `INHERITED_FROM_SOURCE` starts a second front of spend the moment   the clone activates — the safe default is `PAUSED`.  The new hierarchy is asynchronous to materialize in our DB — we trigger sync discovery automatically. Set `syncAfter: false` to skip and poll `/v1/ads/tree` on your own cadence.  Other platforms return 501 Not Implemented. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCampaignsApi.new
campaign_id = 'campaign_id_example' # String | Source platform campaign ID
duplicate_ad_campaign_request = Zernio::DuplicateAdCampaignRequest.new({platform: 'facebook'}) # DuplicateAdCampaignRequest | 

begin
  # Duplicate a campaign
  result = api_instance.duplicate_ad_campaign(campaign_id, duplicate_ad_campaign_request)
  p result
rescue Zernio::ApiError => e
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
rescue Zernio::ApiError => e
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


## duplicate_ad_set

> <DuplicateAdSet200Response> duplicate_ad_set(ad_set_id, duplicate_ad_set_request)

Duplicate an ad set

Duplicates an ad set, including its ads and creatives by default (`deepCopy: true`), via Meta's native `POST /{adset-id}/copies`. The copy is created paused so callers can review before launching. `campaignId` retargets the copy into another campaign; omitted = the source's own campaign. The new hierarchy materializes asynchronously — sync discovery is triggered automatically (`syncAfter: false` to skip).

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCampaignsApi.new
ad_set_id = 'ad_set_id_example' # String | Source platform ad set ID
duplicate_ad_set_request = Zernio::DuplicateAdSetRequest.new({platform: 'facebook'}) # DuplicateAdSetRequest | 

begin
  # Duplicate an ad set
  result = api_instance.duplicate_ad_set(ad_set_id, duplicate_ad_set_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->duplicate_ad_set: #{e}"
end
```

#### Using the duplicate_ad_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DuplicateAdSet200Response>, Integer, Hash)> duplicate_ad_set_with_http_info(ad_set_id, duplicate_ad_set_request)

```ruby
begin
  # Duplicate an ad set
  data, status_code, headers = api_instance.duplicate_ad_set_with_http_info(ad_set_id, duplicate_ad_set_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DuplicateAdSet200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->duplicate_ad_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_set_id** | **String** | Source platform ad set ID |  |
| **duplicate_ad_set_request** | [**DuplicateAdSetRequest**](DuplicateAdSetRequest.md) |  |  |

### Return type

[**DuplicateAdSet200Response**](DuplicateAdSet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_ad

> <GetAd200Response> get_ad(ad_id)

Get ad details

Returns an ad with its creative, targeting, status, and performance metrics.  The `{adId}` path segment accepts any identifier dialect Zernio indexes for the ad: - the Zernio internal `_id` (24-char hex) - Meta's numeric `platformAdId` (the value shipped in `comment.received` webhooks as `comment.ad.id`) - the creative's `effective_object_story_id` (`{pageId}_{postId}` shape, Facebook side) - the creative's `effective_instagram_media_id` (Instagram side)  Any of the four resolve to the same ad. Caller doesn't need a translation step. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCampaignsApi.new
ad_id = 'ad_id_example' # String | Zernio `_id` (hex), Meta `platformAdId` (numeric), or one of the creative's effective story/media IDs. See description for details. 

begin
  # Get ad details
  result = api_instance.get_ad(ad_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->get_ad: #{e}"
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
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->get_ad_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_id** | **String** | Zernio &#x60;_id&#x60; (hex), Meta &#x60;platformAdId&#x60; (numeric), or one of the creative&#39;s effective story/media IDs. See description for details.  |  |

### Return type

[**GetAd200Response**](GetAd200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ad_set_details

> <GetAdSetDetails200Response> get_ad_set_details(ad_set_id, account_id, opts)

Live ad-set details incl. learning phase

Reads the ad set live from Meta, returned verbatim. The default projection includes `learning_stage_info` (learning-phase status: LEARNING / SUCCESS / FAIL / WAIVING — Meta omits its `status` key on paused ad sets), delivery settings, budgets, schedule and targeting. `fields` is a raw-passthrough override; unknown fields return Meta's 400 verbatim.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCampaignsApi.new
ad_set_id = 'ad_set_id_example' # String | Meta ad set id (platformAdSetId).
account_id = 'account_id_example' # String | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token.
opts = {
  fields: 'fields_example' # String | Comma-separated Graph field override (supports nested {} projections).
}

begin
  # Live ad-set details incl. learning phase
  result = api_instance.get_ad_set_details(ad_set_id, account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->get_ad_set_details: #{e}"
end
```

#### Using the get_ad_set_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAdSetDetails200Response>, Integer, Hash)> get_ad_set_details_with_http_info(ad_set_id, account_id, opts)

```ruby
begin
  # Live ad-set details incl. learning phase
  data, status_code, headers = api_instance.get_ad_set_details_with_http_info(ad_set_id, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAdSetDetails200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->get_ad_set_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_set_id** | **String** | Meta ad set id (platformAdSetId). |  |
| **account_id** | **String** | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token. |  |
| **fields** | **String** | Comma-separated Graph field override (supports nested {} projections). | [optional] |

### Return type

[**GetAdSetDetails200Response**](GetAdSetDetails200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ad_tree

> <GetAdTree200Response> get_ad_tree(opts)

Get campaign tree

Returns a nested Campaign > Ad Set > Ad hierarchy with rolled-up metrics at each level. Uses a two-stage aggregation: ads are grouped into ad sets, then ad sets into campaigns. Metrics are computed over an optional date range, then rolled up from ad level to ad set and campaign levels. Pagination is at the campaign level. Ads without a campaign or ad set ID are grouped into synthetic \"Ungrouped\" buckets. If no date range is provided, defaults to the last 90 days. Date range is capped at 730 days max.  Pass `timeIncrement=1` to also get a daily breakdown: each node gains a `daily[]` array of per-day metrics (same fields as the aggregated `metrics`) in the same call. Use `dailyLevel` (`campaign` default, or `adset` / `ad`) to choose which levels carry the series. This replaces calling the tree once per day for per-campaign daily trends. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCampaignsApi.new
opts = {
  page: 56, # Integer | Page number (1-based)
  limit: 56, # Integer | Campaigns per page
  source: 'zernio', # String | `all` (default) returns both Zernio-created ads and those discovered from the platform's ad manager — matches the web UI's default view. Pass `zernio` to restrict to isExternal=false only. Status is NOT filtered by default — use the `status` param for that.
  platform: 'facebook', # String | 
  status: Zernio::AdStatus::ACTIVE, # AdStatus | Filter by derived campaign status (post-aggregation)
  ad_account_id: 'ad_account_id_example', # String | Platform ad account ID
  account_id: 'account_id_example', # String | Social account ID
  profile_id: 'profile_id_example', # String | Profile ID
  campaign_id: 'campaign_id_example', # String | Restrict the tree to a single campaign by its platform campaign id (the id the platform assigns, e.g. Meta's numeric campaign id). Filters the campaign set itself, so it works regardless of account size and pagination — pass this when you already hold a campaign id instead of paging the tree to find it. Mirrors the `campaignId` filter on GET /v1/ads.
  from_date: Date.parse('2013-10-20'), # Date | Start of the METRICS date range (YYYY-MM-DD). Affects only the spend/impression numbers overlaid on each node, NOT which campaigns are returned. Defaults to 90 days ago.
  to_date: Date.parse('2013-10-20'), # Date | End of metrics date range (YYYY-MM-DD). Defaults to today. Max 730-day range.
  sort: 'newest', # String | Campaign-level sort order. `newest` (default) / `oldest` order by the campaign's newest-ad createdAt. `spend_desc` / `spend_asc` order by aggregated spend in the requested date range; campaigns with no spend land at the end.
  time_increment: 1, # Integer | Set to `1` to also return a daily breakdown. Mirrors Meta Insights' `time_increment=1`: each node gains a `daily[]` array of per-day metrics (same fields as the aggregated `metrics`) alongside the range total, so you get per-entity daily trends in ONE call instead of calling the tree once per day. Only `1` (daily) is supported. The daily series covers the same date range and uses the same source data as `metrics`. See `dailyLevel` to control which levels carry it.
  daily_level: 'campaign' # String | Which tree levels get the `daily[]` series when `timeIncrement=1`. `campaign` (default) attaches it on campaign nodes only — the common per-campaign-trend case, and the smallest payload. `adset` adds it on ad sets too; `ad` adds it on every ad in `ads[]` as well (heaviest — a long range × up to 100 ads per ad set). Scope with `campaignId` to keep `ad`-level responses small. Ignored when `timeIncrement` is unset.
}

begin
  # Get campaign tree
  result = api_instance.get_ad_tree(opts)
  p result
rescue Zernio::ApiError => e
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
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->get_ad_tree_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number (1-based) | [optional][default to 1] |
| **limit** | **Integer** | Campaigns per page | [optional][default to 20] |
| **source** | **String** | &#x60;all&#x60; (default) returns both Zernio-created ads and those discovered from the platform&#39;s ad manager — matches the web UI&#39;s default view. Pass &#x60;zernio&#x60; to restrict to isExternal&#x3D;false only. Status is NOT filtered by default — use the &#x60;status&#x60; param for that. | [optional][default to &#39;all&#39;] |
| **platform** | **String** |  | [optional] |
| **status** | [**AdStatus**](.md) | Filter by derived campaign status (post-aggregation) | [optional] |
| **ad_account_id** | **String** | Platform ad account ID | [optional] |
| **account_id** | **String** | Social account ID | [optional] |
| **profile_id** | **String** | Profile ID | [optional] |
| **campaign_id** | **String** | Restrict the tree to a single campaign by its platform campaign id (the id the platform assigns, e.g. Meta&#39;s numeric campaign id). Filters the campaign set itself, so it works regardless of account size and pagination — pass this when you already hold a campaign id instead of paging the tree to find it. Mirrors the &#x60;campaignId&#x60; filter on GET /v1/ads. | [optional] |
| **from_date** | **Date** | Start of the METRICS date range (YYYY-MM-DD). Affects only the spend/impression numbers overlaid on each node, NOT which campaigns are returned. Defaults to 90 days ago. | [optional] |
| **to_date** | **Date** | End of metrics date range (YYYY-MM-DD). Defaults to today. Max 730-day range. | [optional] |
| **sort** | **String** | Campaign-level sort order. &#x60;newest&#x60; (default) / &#x60;oldest&#x60; order by the campaign&#39;s newest-ad createdAt. &#x60;spend_desc&#x60; / &#x60;spend_asc&#x60; order by aggregated spend in the requested date range; campaigns with no spend land at the end. | [optional][default to &#39;newest&#39;] |
| **time_increment** | **Integer** | Set to &#x60;1&#x60; to also return a daily breakdown. Mirrors Meta Insights&#39; &#x60;time_increment&#x3D;1&#x60;: each node gains a &#x60;daily[]&#x60; array of per-day metrics (same fields as the aggregated &#x60;metrics&#x60;) alongside the range total, so you get per-entity daily trends in ONE call instead of calling the tree once per day. Only &#x60;1&#x60; (daily) is supported. The daily series covers the same date range and uses the same source data as &#x60;metrics&#x60;. See &#x60;dailyLevel&#x60; to control which levels carry it. | [optional] |
| **daily_level** | **String** | Which tree levels get the &#x60;daily[]&#x60; series when &#x60;timeIncrement&#x3D;1&#x60;. &#x60;campaign&#x60; (default) attaches it on campaign nodes only — the common per-campaign-trend case, and the smallest payload. &#x60;adset&#x60; adds it on ad sets too; &#x60;ad&#x60; adds it on every ad in &#x60;ads[]&#x60; as well (heaviest — a long range × up to 100 ads per ad set). Scope with &#x60;campaignId&#x60; to keep &#x60;ad&#x60;-level responses small. Ignored when &#x60;timeIncrement&#x60; is unset. | [optional][default to &#39;campaign&#39;] |

### Return type

[**GetAdTree200Response**](GetAdTree200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ads_timeline

> <GetAdsTimeline200Response> get_ads_timeline(account_id, opts)

Get daily account metrics

Returns daily aggregate metrics across all ads in a SocialAccount as a single time series — one row per calendar day in the requested range. Use this for dashboards that draw a daily-spend or daily-conversions chart, instead of calling `/v1/ads/tree` once per day.  `accountId` is required. The lookup is sibling-expanded so passing the `metaads` ID also includes ads under the linked `facebook` / `instagram` posting account (and vice-versa) — same convention as `/v1/ads/tree` and `/v1/ads`.  Date range defaults to the last 90 days. Capped at 730 days. Ranges older than the ingested history return a `202` immediately with the covered part and `backfillPending: true` while the rest is backfilled in the background; repeat the request shortly until it returns 200 with full data. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCampaignsApi.new
account_id = 'account_id_example' # String | Social account ID. Sibling-expanded to its linked posting↔ads pair.
opts = {
  ad_account_id: 'ad_account_id_example', # String | Optional platform-native ad account ID (e.g. Meta `act_…`, TikTok advertiser ID). Use when the connection wraps multiple platform ad accounts and the chart should show one only. Note: rows ingested before 2026-05-13 don't carry this column; the recurring 7-day re-sync repopulates them naturally.
  from_date: Date.parse('2013-10-20'), # Date | Inclusive start of metrics range (YYYY-MM-DD). Defaults to 90 days ago.
  to_date: Date.parse('2013-10-20'), # Date | Inclusive end of metrics range (YYYY-MM-DD). Defaults to today. Max 730-day range.
  platform: 'facebook' # String | Restrict to one platform.
}

begin
  # Get daily account metrics
  result = api_instance.get_ads_timeline(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->get_ads_timeline: #{e}"
end
```

#### Using the get_ads_timeline_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAdsTimeline200Response>, Integer, Hash)> get_ads_timeline_with_http_info(account_id, opts)

```ruby
begin
  # Get daily account metrics
  data, status_code, headers = api_instance.get_ads_timeline_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAdsTimeline200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->get_ads_timeline_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Social account ID. Sibling-expanded to its linked posting↔ads pair. |  |
| **ad_account_id** | **String** | Optional platform-native ad account ID (e.g. Meta &#x60;act_…&#x60;, TikTok advertiser ID). Use when the connection wraps multiple platform ad accounts and the chart should show one only. Note: rows ingested before 2026-05-13 don&#39;t carry this column; the recurring 7-day re-sync repopulates them naturally. | [optional] |
| **from_date** | **Date** | Inclusive start of metrics range (YYYY-MM-DD). Defaults to 90 days ago. | [optional] |
| **to_date** | **Date** | Inclusive end of metrics range (YYYY-MM-DD). Defaults to today. Max 730-day range. | [optional] |
| **platform** | **String** | Restrict to one platform. | [optional] |

### Return type

[**GetAdsTimeline200Response**](GetAdsTimeline200Response.md)

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
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCampaignsApi.new
opts = {
  page: 56, # Integer | Page number (1-based)
  limit: 56, # Integer | 
  source: 'zernio', # String | `all` (default) returns both Zernio-created ads and those discovered from the platform's ad manager — matches the web UI's default view. Pass `zernio` to restrict to isExternal=false only. Status is NOT filtered by default — use the `status` param for that.
  platform: 'facebook', # String | 
  status: Zernio::AdStatus::ACTIVE, # AdStatus | Filter by derived campaign status (post-aggregation)
  ad_account_id: 'ad_account_id_example', # String | Platform ad account ID (e.g. act_123 for Meta)
  account_id: 'account_id_example', # String | Social account ID
  profile_id: 'profile_id_example', # String | Profile ID
  from_date: Date.parse('2013-10-20'), # Date | Start of metrics date range (YYYY-MM-DD, inclusive). Defaults to 90 days ago when both date params are omitted.
  to_date: Date.parse('2013-10-20') # Date | End of metrics date range (YYYY-MM-DD, inclusive). Defaults to today. Max 730-day range.
}

begin
  # List campaigns
  result = api_instance.list_ad_campaigns(opts)
  p result
rescue Zernio::ApiError => e
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
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->list_ad_campaigns_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number (1-based) | [optional][default to 1] |
| **limit** | **Integer** |  | [optional][default to 20] |
| **source** | **String** | &#x60;all&#x60; (default) returns both Zernio-created ads and those discovered from the platform&#39;s ad manager — matches the web UI&#39;s default view. Pass &#x60;zernio&#x60; to restrict to isExternal&#x3D;false only. Status is NOT filtered by default — use the &#x60;status&#x60; param for that. | [optional][default to &#39;all&#39;] |
| **platform** | **String** |  | [optional] |
| **status** | [**AdStatus**](.md) | Filter by derived campaign status (post-aggregation) | [optional] |
| **ad_account_id** | **String** | Platform ad account ID (e.g. act_123 for Meta) | [optional] |
| **account_id** | **String** | Social account ID | [optional] |
| **profile_id** | **String** | Profile ID | [optional] |
| **from_date** | **Date** | Start of metrics date range (YYYY-MM-DD, inclusive). Defaults to 90 days ago when both date params are omitted. | [optional] |
| **to_date** | **Date** | End of metrics date range (YYYY-MM-DD, inclusive). Defaults to today. Max 730-day range. | [optional] |

### Return type

[**ListAdCampaigns200Response**](ListAdCampaigns200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ads

> <ListAds200Response> list_ads(opts)

List ads

Returns a paginated list of ads with metrics computed over an optional date range. Use source=all to include externally-synced ads from platform ad managers. If no date range is provided, defaults to the last 90 days. Date range is capped at 730 days max.  To find the Zernio ad behind a comment you see in Meta Business Manager, filter by platformAdId (the Meta ad ID), effectiveObjectStoryId (Facebook), or effectiveInstagramMediaId (Instagram) — those are the post/media the ad's engagement lives on, and are also returned on each ad's `creative` object. Then call GET /v1/ads/{adId}/comments with the returned ad id. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCampaignsApi.new
opts = {
  page: 56, # Integer | Page number (1-based)
  limit: 56, # Integer | 
  source: 'zernio', # String | all (default) = Zernio-created + platform-discovered ads. zernio = restrict to Zernio-created only.
  status: Zernio::AdStatus::ACTIVE, # AdStatus | 
  platform: 'facebook', # String | 
  account_id: 'account_id_example', # String | Social account ID
  ad_account_id: 'ad_account_id_example', # String | Platform ad account ID (e.g. act_123 for Meta). Mirrors the same filter on /v1/ads/campaigns and /v1/ads/tree.
  profile_id: 'profile_id_example', # String | Profile ID
  campaign_id: 'campaign_id_example', # String | Platform campaign ID (filter ads within a campaign)
  platform_ad_id: 'platform_ad_id_example', # String | Meta ad ID. Returns the ad with this platform-side ad ID.
  effective_object_story_id: 'effective_object_story_id_example', # String | Facebook `{pageId}_{postId}` of the post the ad's engagement lives on (Meta `effective_object_story_id`). Use to map a Business-Manager-visible post back to the Zernio ad.
  effective_instagram_media_id: 'effective_instagram_media_id_example', # String | Instagram media ID of the boosted post (Meta `effective_instagram_media_id`). Use to map a Business-Manager-visible IG post back to the Zernio ad.
  from_date: Date.parse('2013-10-20'), # Date | Start of metrics date range (YYYY-MM-DD). Defaults to 90 days ago.
  to_date: Date.parse('2013-10-20') # Date | End of metrics date range (YYYY-MM-DD). Defaults to today. Max 730-day range.
}

begin
  # List ads
  result = api_instance.list_ads(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->list_ads: #{e}"
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
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->list_ads_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number (1-based) | [optional][default to 1] |
| **limit** | **Integer** |  | [optional][default to 50] |
| **source** | **String** | all (default) &#x3D; Zernio-created + platform-discovered ads. zernio &#x3D; restrict to Zernio-created only. | [optional][default to &#39;all&#39;] |
| **status** | [**AdStatus**](.md) |  | [optional] |
| **platform** | **String** |  | [optional] |
| **account_id** | **String** | Social account ID | [optional] |
| **ad_account_id** | **String** | Platform ad account ID (e.g. act_123 for Meta). Mirrors the same filter on /v1/ads/campaigns and /v1/ads/tree. | [optional] |
| **profile_id** | **String** | Profile ID | [optional] |
| **campaign_id** | **String** | Platform campaign ID (filter ads within a campaign) | [optional] |
| **platform_ad_id** | **String** | Meta ad ID. Returns the ad with this platform-side ad ID. | [optional] |
| **effective_object_story_id** | **String** | Facebook &#x60;{pageId}_{postId}&#x60; of the post the ad&#39;s engagement lives on (Meta &#x60;effective_object_story_id&#x60;). Use to map a Business-Manager-visible post back to the Zernio ad. | [optional] |
| **effective_instagram_media_id** | **String** | Instagram media ID of the boosted post (Meta &#x60;effective_instagram_media_id&#x60;). Use to map a Business-Manager-visible IG post back to the Zernio ad. | [optional] |
| **from_date** | **Date** | Start of metrics date range (YYYY-MM-DD). Defaults to 90 days ago. | [optional] |
| **to_date** | **Date** | End of metrics date range (YYYY-MM-DD). Defaults to today. Max 730-day range. | [optional] |

### Return type

[**ListAds200Response**](ListAds200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_ad

> <UpdateAd200Response> update_ad(ad_id, update_ad_request)

Update ad

Patch one or more fields on an ad. Status, budget, targeting, and creative changes are propagated to the platform.  Per-platform support: - **Meta** (Facebook + Instagram): all fields supported. - **TikTok**: status, budget, targeting (via `/v2/adgroup/update/`), and creative   (via `/v2/ad/update/` patch-style — `headline` is ignored, `body` becomes `ad_text`). - **Pinterest / X / LinkedIn / Google / OpenAI Ads**: status + budget only. Sending   `targeting` or `creative` returns 501 with code `unsupported_platform_operation`.   OpenAI Ads budget is lifetime-only (see `budget.type` below). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCampaignsApi.new
ad_id = 'ad_id_example' # String | 
update_ad_request = Zernio::UpdateAdRequest.new # UpdateAdRequest | 

begin
  # Update ad
  result = api_instance.update_ad(ad_id, update_ad_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->update_ad: #{e}"
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
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->update_ad_with_http_info: #{e}"
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


## update_ad_campaign

> <UpdateAdCampaign200Response> update_ad_campaign(campaign_id, update_ad_campaign_request)

Update a campaign

Campaign-level edits. At least one of `budget`, `bidStrategy`, `name` or `platformSpecificData` is required.  - `budget` updates the CBO (Campaign Budget Optimization) budget. For ABO campaigns   (where the budget lives on the ad set), use PUT /v1/ads/ad-sets/{adSetId} instead — this endpoint   will return 409 with code BUDGET_LEVEL_MISMATCH. - `bidStrategy` sets the campaign-level default bid strategy. Per Meta's spec, `bid_amount` and   `bid_constraints` do NOT exist at the campaign level — pass them via PUT /v1/ads/ad-sets/{adSetId}. - `platformSpecificData.spendCap` (Meta only) sets the campaign's lifetime spend cap, in the ad   account's currency.  Meta-only for now. Other platforms return 501 Not Implemented. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCampaignsApi.new
campaign_id = 'campaign_id_example' # String | Platform campaign ID
update_ad_campaign_request = Zernio::UpdateAdCampaignRequest.new({platform: 'facebook'}) # UpdateAdCampaignRequest | 

begin
  # Update a campaign
  result = api_instance.update_ad_campaign(campaign_id, update_ad_campaign_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->update_ad_campaign: #{e}"
end
```

#### Using the update_ad_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateAdCampaign200Response>, Integer, Hash)> update_ad_campaign_with_http_info(campaign_id, update_ad_campaign_request)

```ruby
begin
  # Update a campaign
  data, status_code, headers = api_instance.update_ad_campaign_with_http_info(campaign_id, update_ad_campaign_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateAdCampaign200Response>
rescue Zernio::ApiError => e
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
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCampaignsApi.new
campaign_id = 'campaign_id_example' # String | Platform campaign ID
update_ad_campaign_status_request = Zernio::UpdateAdCampaignStatusRequest.new({status: 'active', platform: 'facebook'}) # UpdateAdCampaignStatusRequest | 

begin
  # Pause or resume a campaign
  result = api_instance.update_ad_campaign_status(campaign_id, update_ad_campaign_status_request)
  p result
rescue Zernio::ApiError => e
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
rescue Zernio::ApiError => e
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

Update an ad set

Ad-set-level writes. Use this for ABO budget updates, ad-set-scoped pause/resume, bid-strategy edits, and Meta-only post-launch delivery settings via `platformSpecificData`. At least one updatable field is required.  Bid strategy compatibility (per Meta's spec): - `LOWEST_COST_WITHOUT_CAP`: no `bidAmount`, no `roasAverageFloor`. - `LOWEST_COST_WITH_BID_CAP` / `COST_CAP`: `bidAmount` REQUIRED (whole currency units). - `LOWEST_COST_WITH_MIN_ROAS`: `roasAverageFloor` REQUIRED (decimal multiplier, e.g. 2.0 = 2.0x ROAS).  Delivery settings are validated by Meta against the campaign objective; incompatible combinations (e.g. a billingEvent the optimization goal doesn't allow) surface as 400s from Meta.  When updating `budget` on an ABO campaign: if the parent campaign is CBO, the response is 409 with code BUDGET_LEVEL_MISMATCH — route to PUT /v1/ads/campaigns/{campaignId} instead. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCampaignsApi.new
ad_set_id = 'ad_set_id_example' # String | Platform ad set ID
update_ad_set_request = Zernio::UpdateAdSetRequest.new({platform: 'facebook'}) # UpdateAdSetRequest | 

begin
  # Update an ad set
  result = api_instance.update_ad_set(ad_set_id, update_ad_set_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->update_ad_set: #{e}"
end
```

#### Using the update_ad_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateAdSet200Response>, Integer, Hash)> update_ad_set_with_http_info(ad_set_id, update_ad_set_request)

```ruby
begin
  # Update an ad set
  data, status_code, headers = api_instance.update_ad_set_with_http_info(ad_set_id, update_ad_set_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateAdSet200Response>
rescue Zernio::ApiError => e
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
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCampaignsApi.new
ad_set_id = 'ad_set_id_example' # String | Platform ad set ID
update_ad_campaign_status_request = Zernio::UpdateAdCampaignStatusRequest.new({status: 'active', platform: 'facebook'}) # UpdateAdCampaignStatusRequest | 

begin
  # Pause or resume a single ad set
  result = api_instance.update_ad_set_status(ad_set_id, update_ad_campaign_status_request)
  p result
rescue Zernio::ApiError => e
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
rescue Zernio::ApiError => e
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


## update_ad_status

> <UpdateAdStatus200Response> update_ad_status(ad_id, update_ad_status_request)

Pause or resume a single ad

Ad-scoped pause/resume — touches ONLY this ad, never its parent ad set or campaign (so sibling ads keep running). Thin wrapper over the `status` field of PUT /v1/ads/{adId}, for callers that want a URL symmetric to /v1/ads/campaigns/{campaignId}/status and /v1/ads/ad-sets/{adSetId}/status.  `{adId}` accepts the same identifier dialects as GET/PUT /v1/ads/{adId} (Zernio hex `_id`, Meta numeric `platformAdId`, or the creative's effective story/media IDs). `platform` is inferred from the ad, so it's not required in the body. Ads in terminal statuses (rejected, completed, cancelled) and no-op flips (already in the target state) are skipped. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCampaignsApi.new
ad_id = 'ad_id_example' # String | Zernio `_id` (hex), Meta `platformAdId` (numeric), or one of the creative's effective story/media IDs.
update_ad_status_request = Zernio::UpdateAdStatusRequest.new({status: 'active'}) # UpdateAdStatusRequest | 

begin
  # Pause or resume a single ad
  result = api_instance.update_ad_status(ad_id, update_ad_status_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->update_ad_status: #{e}"
end
```

#### Using the update_ad_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateAdStatus200Response>, Integer, Hash)> update_ad_status_with_http_info(ad_id, update_ad_status_request)

```ruby
begin
  # Pause or resume a single ad
  data, status_code, headers = api_instance.update_ad_status_with_http_info(ad_id, update_ad_status_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateAdStatus200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->update_ad_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_id** | **String** | Zernio &#x60;_id&#x60; (hex), Meta &#x60;platformAdId&#x60; (numeric), or one of the creative&#39;s effective story/media IDs. |  |
| **update_ad_status_request** | [**UpdateAdStatusRequest**](UpdateAdStatusRequest.md) |  |  |

### Return type

[**UpdateAdStatus200Response**](UpdateAdStatus200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

