# Zernio::AdCampaignsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**attach_campaign_assets**](AdCampaignsApi.md#attach_campaign_assets) | **POST** /v1/ads/campaigns/{campaignId}/assets | Attach extension assets to a Google Search campaign |
| [**boost_post**](AdCampaignsApi.md#boost_post) | **POST** /v1/ads/boost | Boost post as ad |
| [**bulk_update_ad_campaign_status**](AdCampaignsApi.md#bulk_update_ad_campaign_status) | **POST** /v1/ads/campaigns/bulk-status | Pause or resume many campaigns |
| [**create_ad_campaign**](AdCampaignsApi.md#create_ad_campaign) | **POST** /v1/ads/campaigns | Create a standalone campaign |
| [**create_standalone_ad**](AdCampaignsApi.md#create_standalone_ad) | **POST** /v1/ads/create | Create standalone ad |
| [**delete_ad**](AdCampaignsApi.md#delete_ad) | **DELETE** /v1/ads/{adId} | Cancel an ad |
| [**delete_ad_campaign**](AdCampaignsApi.md#delete_ad_campaign) | **DELETE** /v1/ads/campaigns/{campaignId} | Delete a campaign |
| [**delete_ad_set**](AdCampaignsApi.md#delete_ad_set) | **DELETE** /v1/ads/ad-sets/{adSetId} | Delete an ad set |
| [**duplicate_ad**](AdCampaignsApi.md#duplicate_ad) | **POST** /v1/ads/{adId}/duplicate | Duplicate an ad |
| [**duplicate_ad_campaign**](AdCampaignsApi.md#duplicate_ad_campaign) | **POST** /v1/ads/campaigns/{campaignId}/duplicate | Duplicate a campaign |
| [**duplicate_ad_set**](AdCampaignsApi.md#duplicate_ad_set) | **POST** /v1/ads/ad-sets/{adSetId}/duplicate | Duplicate an ad set |
| [**get_ad**](AdCampaignsApi.md#get_ad) | **GET** /v1/ads/{adId} | Get ad details |
| [**get_ad_set_details**](AdCampaignsApi.md#get_ad_set_details) | **GET** /v1/ads/ad-sets/{adSetId} | Live ad-set details incl. learning phase |
| [**get_ad_tree**](AdCampaignsApi.md#get_ad_tree) | **GET** /v1/ads/tree | Get campaign tree |
| [**get_ads_timeline**](AdCampaignsApi.md#get_ads_timeline) | **GET** /v1/ads/timeline | Get daily account metrics |
| [**list_ad_campaigns**](AdCampaignsApi.md#list_ad_campaigns) | **GET** /v1/ads/campaigns | List campaigns |
| [**list_ad_keywords**](AdCampaignsApi.md#list_ad_keywords) | **GET** /v1/ads/keywords | List Search keywords |
| [**list_ads**](AdCampaignsApi.md#list_ads) | **GET** /v1/ads | List ads |
| [**update_ad**](AdCampaignsApi.md#update_ad) | **PUT** /v1/ads/{adId} | Update ad |
| [**update_ad_campaign**](AdCampaignsApi.md#update_ad_campaign) | **PUT** /v1/ads/campaigns/{campaignId} | Update a campaign |
| [**update_ad_campaign_status**](AdCampaignsApi.md#update_ad_campaign_status) | **PUT** /v1/ads/campaigns/{campaignId}/status | Pause or resume a campaign |
| [**update_ad_set**](AdCampaignsApi.md#update_ad_set) | **PUT** /v1/ads/ad-sets/{adSetId} | Update an ad set |
| [**update_ad_set_status**](AdCampaignsApi.md#update_ad_set_status) | **PUT** /v1/ads/ad-sets/{adSetId}/status | Pause or resume a single ad set |
| [**update_ad_status**](AdCampaignsApi.md#update_ad_status) | **PUT** /v1/ads/{adId}/status | Pause or resume a single ad |


## attach_campaign_assets

> <AttachCampaignAssets201Response> attach_campaign_assets(campaign_id, attach_campaign_assets_request)

Attach extension assets to a Google Search campaign

Attach sitelinks, callouts and/or structured snippets to an already-existing Google Search campaign — the same builders POST /v1/ads/create uses, but without rebuilding the hierarchy. At least one of sitelinks, callouts or structuredSnippets is required.  Google-only. Other platforms have no equivalent extension surface and return 501.  Approval status is Google-async; poll `asset.policy_summary` after review. Assets stay in the account library even if the campaign is later deleted.

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
campaign_id = 'campaign_id_example' # String | Numeric Google platform campaign id.
attach_campaign_assets_request = Zernio::AttachCampaignAssetsRequest.new({account_id: 'account_id_example'}) # AttachCampaignAssetsRequest | 

begin
  # Attach extension assets to a Google Search campaign
  result = api_instance.attach_campaign_assets(campaign_id, attach_campaign_assets_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->attach_campaign_assets: #{e}"
end
```

#### Using the attach_campaign_assets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AttachCampaignAssets201Response>, Integer, Hash)> attach_campaign_assets_with_http_info(campaign_id, attach_campaign_assets_request)

```ruby
begin
  # Attach extension assets to a Google Search campaign
  data, status_code, headers = api_instance.attach_campaign_assets_with_http_info(campaign_id, attach_campaign_assets_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AttachCampaignAssets201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->attach_campaign_assets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | Numeric Google platform campaign id. |  |
| **attach_campaign_assets_request** | [**AttachCampaignAssetsRequest**](AttachCampaignAssetsRequest.md) |  |  |

### Return type

[**AttachCampaignAssets201Response**](AttachCampaignAssets201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## boost_post

> <UpdateAd200Response> boost_post(boost_post_request, opts)

Boost post as ad

Creates a paid ad from an existing published post, keeping the post's engagement. By default it provisions the whole hierarchy (campaign, ad set, ad).  **Attach shape (Meta).** Send `adSetId` to put the ad under an EXISTING ad set instead, so that ad set keeps its learning phase. It then owns `budget`, `schedule` and `targeting`, and sending any of those alongside `adSetId` is a 400 rather than a silent drop. `budget` is required only without `adSetId`.  `instagramAccountId`, `destinationType` and `adSetId` are Meta-only and return 400 on other platforms.  **Retries.** Boosts are NOT idempotent and can take minutes when Meta requires re-hosting an Instagram video, so do not retry on client timeout. Send an Idempotency-Key header to make retries safe: same key and body replays the original 201, and distinct keys always create distinct ads. Without the header, an identical request is treated as a retry: while one is in flight it returns 409, and within 10 minutes of a completed boost it returns the already-created ad instead of creating another. To intentionally duplicate an ad, send distinct Idempotency-Keys (or vary the body, e.g. the name). 

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
boost_post_request = Zernio::BoostPostRequest.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example', name: 'name_example', goal: 'engagement'}) # BoostPostRequest | 
opts = {
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes retries safe. Same key + same body replays the original response; same key + different body → 422; key still processing → 409.
}

begin
  # Boost post as ad
  result = api_instance.boost_post(boost_post_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->boost_post: #{e}"
end
```

#### Using the boost_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateAd200Response>, Integer, Hash)> boost_post_with_http_info(boost_post_request, opts)

```ruby
begin
  # Boost post as ad
  data, status_code, headers = api_instance.boost_post_with_http_info(boost_post_request, opts)
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
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes retries safe. Same key + same body replays the original response; same key + different body → 422; key still processing → 409. | [optional] |

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

> <CreateAdCampaign201Response> create_ad_campaign(create_ad_campaign_request, opts)

Create a standalone campaign

Creates a campaign WITHOUT its first ad set / ad (the ODAX shell only). Ad sets join it later via `existingCampaignId` on the create endpoints. A budget here is campaign-level (CBO) by definition; omit it for ABO (each ad set carries its own budget). Created `PAUSED` unless `status: ACTIVE`. The campaign materializes in `/v1/ads/tree` via the next sync discovery pass.  **Idempotency:** send an `Idempotency-Key` header to make retries safe.

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
opts = {
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes retries safe. Same key + same body replays the original response; same key + different body → 422; key still processing → 409. Only 2xx responses are stored, so a request that failed with a 4xx can be retried with a corrected body under the SAME key.
}

begin
  # Create a standalone campaign
  result = api_instance.create_ad_campaign(create_ad_campaign_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->create_ad_campaign: #{e}"
end
```

#### Using the create_ad_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAdCampaign201Response>, Integer, Hash)> create_ad_campaign_with_http_info(create_ad_campaign_request, opts)

```ruby
begin
  # Create a standalone campaign
  data, status_code, headers = api_instance.create_ad_campaign_with_http_info(create_ad_campaign_request, opts)
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
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes retries safe. Same key + same body replays the original response; same key + different body → 422; key still processing → 409. Only 2xx responses are stored, so a request that failed with a 4xx can be retried with a corrected body under the SAME key. | [optional] |

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

Creates a paid ad with custom creative across Meta, Google Ads, Pinterest, TikTok, X/Twitter, LinkedIn, and OpenAI Ads (ChatGPT Ads). Supports three mutually-exclusive request shapes selected by the body, a legacy single-creative shape (all platforms, default), a Meta-only multi-creative shape via the creatives array (one ad set with N ads sharing budget and targeting), and an attach shape via adSetId that adds one new ad to an existing ad set, inheriting its budget, targeting, and schedule (Meta, TikTok, and LinkedIn; on LinkedIn adSetId is the existing Campaign id, and the budget, schedule, targeting and bidding fields must be omitted). Per-platform required fields, budget minimums, and video-ad rules are documented on each property below. LinkedIn creates a Single Image or Single Video Ad backed by a Direct Sponsored Content \"dark post\" authored by a Company Page (see `organizationId`); supported goals are engagement, traffic, awareness, and video_views (video ads use the `video` field; video_views requires a video), and traffic ads require `linkUrl`.  **Idempotency:** this endpoint is not idempotent at the platform level (a blind retry creates a second campaign/ad set/ad). Send an `Idempotency-Key` header to make retries safe: the first request with a given key creates the ad and we store the response; a retry with the same key replays that exact response (with `Idempotent-Replayed: true`) instead of creating duplicates. Reusing a key with a different body returns 422; a key whose first request is still in flight returns 409 (retry after a short backoff). Keys are scoped to your credential and expire after 24h.

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
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes retries safe. Same key + same body replays the original response; same key + different body → 422; key still processing → 409.
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
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes retries safe. Same key + same body replays the original response; same key + different body → 422; key still processing → 409. | [optional] |

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

Deletes the whole campaign on the platform, cascading to its ad sets and ads. Locally, all Ad documents for this campaign are marked `status: cancelled`.  **Empty campaigns.** A campaign with zero ads has no local Ad documents to resolve, so it is invisible to `/v1/ads/tree` and this endpoint would 404. That state is produced by the two-step create flow (campaign, then ads via `existingCampaignId`) whenever Meta rejects the ad step. To delete such a shell, send `accountId` in the body: we skip the local lookup entirely and forward the delete to Meta. `accountId` is ignored when the campaign does have ads. 

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


## delete_ad_set

> <DeleteAdSet200Response> delete_ad_set(ad_set_id)

Delete an ad set

Deletes the ad set on the platform, cascading to its ads only (never the campaign). Locally, every Ad document under the ad set is marked `status: cancelled`.  Delete is soft on platforms that have no hard delete: LinkedIn moves the campaign to `PENDING_DELETION`, Pinterest archives the ad group, and X soft-flags the line item. Google removes the ad group. All remain readable for reporting. 

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

begin
  # Delete an ad set
  result = api_instance.delete_ad_set(ad_set_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->delete_ad_set: #{e}"
end
```

#### Using the delete_ad_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteAdSet200Response>, Integer, Hash)> delete_ad_set_with_http_info(ad_set_id)

```ruby
begin
  # Delete an ad set
  data, status_code, headers = api_instance.delete_ad_set_with_http_info(ad_set_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteAdSet200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->delete_ad_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_set_id** | **String** | Platform ad set ID |  |

### Return type

[**DeleteAdSet200Response**](DeleteAdSet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
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
  idempotency_key: 'idempotency_key_example', # String | Optional client-generated unique key (e.g. a UUID) that makes retries safe. Same key + same body replays the original response; same key + different body → 422; key still processing → 409. Only 2xx responses are stored, so a request that failed with a 4xx can be retried with a corrected body under the SAME key.
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
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes retries safe. Same key + same body replays the original response; same key + different body → 422; key still processing → 409. Only 2xx responses are stored, so a request that failed with a 4xx can be retried with a corrected body under the SAME key. | [optional] |
| **duplicate_ad_request** | [**DuplicateAdRequest**](DuplicateAdRequest.md) |  | [optional] |

### Return type

[**DuplicateAd200Response**](DuplicateAd200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## duplicate_ad_campaign

> <DuplicateAdCampaign200Response> duplicate_ad_campaign(campaign_id, duplicate_ad_campaign_request, opts)

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
opts = {
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes retries safe. Same key + same body replays the original response; same key + different body → 422; key still processing → 409. Only 2xx responses are stored, so a request that failed with a 4xx can be retried with a corrected body under the SAME key.
}

begin
  # Duplicate a campaign
  result = api_instance.duplicate_ad_campaign(campaign_id, duplicate_ad_campaign_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->duplicate_ad_campaign: #{e}"
end
```

#### Using the duplicate_ad_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DuplicateAdCampaign200Response>, Integer, Hash)> duplicate_ad_campaign_with_http_info(campaign_id, duplicate_ad_campaign_request, opts)

```ruby
begin
  # Duplicate a campaign
  data, status_code, headers = api_instance.duplicate_ad_campaign_with_http_info(campaign_id, duplicate_ad_campaign_request, opts)
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
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes retries safe. Same key + same body replays the original response; same key + different body → 422; key still processing → 409. Only 2xx responses are stored, so a request that failed with a 4xx can be retried with a corrected body under the SAME key. | [optional] |

### Return type

[**DuplicateAdCampaign200Response**](DuplicateAdCampaign200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## duplicate_ad_set

> <DuplicateAdSet200Response> duplicate_ad_set(ad_set_id, duplicate_ad_set_request, opts)

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
opts = {
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes retries safe. Same key + same body replays the original response; same key + different body → 422; key still processing → 409. Only 2xx responses are stored, so a request that failed with a 4xx can be retried with a corrected body under the SAME key.
}

begin
  # Duplicate an ad set
  result = api_instance.duplicate_ad_set(ad_set_id, duplicate_ad_set_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->duplicate_ad_set: #{e}"
end
```

#### Using the duplicate_ad_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DuplicateAdSet200Response>, Integer, Hash)> duplicate_ad_set_with_http_info(ad_set_id, duplicate_ad_set_request, opts)

```ruby
begin
  # Duplicate an ad set
  data, status_code, headers = api_instance.duplicate_ad_set_with_http_info(ad_set_id, duplicate_ad_set_request, opts)
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
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes retries safe. Same key + same body replays the original response; same key + different body → 422; key still processing → 409. Only 2xx responses are stored, so a request that failed with a 4xx can be retried with a corrected body under the SAME key. | [optional] |

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

> <AdTreeResponse> get_ad_tree(opts)

Get campaign tree

Returns a nested Campaign > Ad Set > Ad hierarchy with rolled-up metrics at each level. Uses a two-stage aggregation: ads are grouped into ad sets, then ad sets into campaigns. Metrics are computed over an optional date range, then rolled up from ad level to ad set and campaign levels. Pagination is at the campaign level. Ads without a campaign or ad set ID are grouped into synthetic \"Ungrouped\" buckets. If no date range is provided, defaults to the last 90 days. Date range is capped at 730 days max.  Pass `timeIncrement=1` to also get a daily breakdown: each node gains a `daily[]` array of per-day metrics (same fields as the aggregated `metrics`) in the same call. Use `dailyLevel` (`campaign` default, or `adset` / `ad`) to choose which levels carry the series. This replaces calling the tree once per day for per-campaign daily trends.  **Deleted objects stay in the tree.** Deleting an ad or a campaign is a soft delete: the Ad documents move to `status: cancelled` and are kept indefinitely, so their historical spend still counts toward the metrics of any date range they fall in. There is no pruning job and no retention window. Filter on `status` if your view should hide them, but do that after reading the totals, not before. 

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
  ad_account_id: 'ad_account_id_example', # String | One or more platform ad account IDs to scope the tree to (agency profiles connect a whole Business Manager but a workspace usually cares about a subset). Comma-separate for multiple (`?adAccountId=act_1,act_2,act_3`); single value keeps its old shape. Max 50 accounts per request; the plural aliases `adAccountIds` and `platformAdAccountIds` are rejected with a 400 to stop them from silently returning the unfiltered fleet.
  page_id: 'page_id_example', # String | Meta only: Facebook Page ID. Prunes the tree to ads whose creative is backed by this Page — campaigns and ad sets with no ad on the Page drop out, and rolled-up metrics cover only the Page's ads. Mirrors the same filter on /v1/ads and /v1/ads/campaigns.
  account_id: 'account_id_example', # String | Social account ID
  profile_id: 'profile_id_example', # String | Profile ID
  campaign_id: 'campaign_id_example', # String | Restrict the tree to a single campaign by its platform campaign id (the id the platform assigns, e.g. Meta's numeric campaign id). Filters the campaign set itself, so it works regardless of account size and pagination — pass this when you already hold a campaign id instead of paging the tree to find it. Mirrors the `campaignId` filter on GET /v1/ads.
  from_date: Date.parse('2013-10-20'), # Date | Start of the METRICS date range (YYYY-MM-DD). On its own it affects only the spend/impression numbers overlaid on each node, not which campaigns are returned — pass `hasDelivery` or `minSpend` to also filter the campaign set to this window. Defaults to 90 days ago.
  to_date: Date.parse('2013-10-20'), # Date | End of metrics date range (YYYY-MM-DD). Defaults to today. Max 730-day range.
  has_delivery: true, # Boolean | Return only campaigns that delivered between `fromDate` and `toDate` — spend above zero, or impressions served at zero spend. Unlike `status`, which reads a campaign's CURRENT state, this filters on what happened inside the window, so a campaign that spent then and is paused today is still returned. Filters the campaign set itself, so `pagination.total` counts only matching campaigns.
  min_spend: 8.14, # Float | Return only campaigns whose spend between `fromDate` and `toDate` reaches this amount. Expressed in each campaign's OWN currency (the `currency` field on the campaign node): spend is stored per ad account in its native currency and one response can span several. Implies `hasDelivery`; `minSpend=0` applies no filter.
  sort: 'newest', # String | Campaign-level sort order. `newest` (default) / `oldest` order by the campaign's newest-ad createdAt. `spend_desc` / `spend_asc` order by aggregated spend in the requested date range; campaigns with no spend land at the end.
  time_increment: 1, # Integer | Set to `1` to also return a daily breakdown. Mirrors Meta Insights' `time_increment=1`: each node gains a `daily[]` array of per-day metrics (same fields as the aggregated `metrics`) alongside the range total, so you get per-entity daily trends in ONE call instead of calling the tree once per day. Only `1` (daily) is supported. The daily series covers the same date range and uses the same source data as `metrics`, except `reach` on Meta and TikTok: the range total is the platform's de-duplicated value, so daily reach does not sum to it. See `dailyLevel` to control which levels carry it.
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

> <Array(<AdTreeResponse>, Integer, Hash)> get_ad_tree_with_http_info(opts)

```ruby
begin
  # Get campaign tree
  data, status_code, headers = api_instance.get_ad_tree_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdTreeResponse>
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
| **ad_account_id** | **String** | One or more platform ad account IDs to scope the tree to (agency profiles connect a whole Business Manager but a workspace usually cares about a subset). Comma-separate for multiple (&#x60;?adAccountId&#x3D;act_1,act_2,act_3&#x60;); single value keeps its old shape. Max 50 accounts per request; the plural aliases &#x60;adAccountIds&#x60; and &#x60;platformAdAccountIds&#x60; are rejected with a 400 to stop them from silently returning the unfiltered fleet. | [optional] |
| **page_id** | **String** | Meta only: Facebook Page ID. Prunes the tree to ads whose creative is backed by this Page — campaigns and ad sets with no ad on the Page drop out, and rolled-up metrics cover only the Page&#39;s ads. Mirrors the same filter on /v1/ads and /v1/ads/campaigns. | [optional] |
| **account_id** | **String** | Social account ID | [optional] |
| **profile_id** | **String** | Profile ID | [optional] |
| **campaign_id** | **String** | Restrict the tree to a single campaign by its platform campaign id (the id the platform assigns, e.g. Meta&#39;s numeric campaign id). Filters the campaign set itself, so it works regardless of account size and pagination — pass this when you already hold a campaign id instead of paging the tree to find it. Mirrors the &#x60;campaignId&#x60; filter on GET /v1/ads. | [optional] |
| **from_date** | **Date** | Start of the METRICS date range (YYYY-MM-DD). On its own it affects only the spend/impression numbers overlaid on each node, not which campaigns are returned — pass &#x60;hasDelivery&#x60; or &#x60;minSpend&#x60; to also filter the campaign set to this window. Defaults to 90 days ago. | [optional] |
| **to_date** | **Date** | End of metrics date range (YYYY-MM-DD). Defaults to today. Max 730-day range. | [optional] |
| **has_delivery** | **Boolean** | Return only campaigns that delivered between &#x60;fromDate&#x60; and &#x60;toDate&#x60; — spend above zero, or impressions served at zero spend. Unlike &#x60;status&#x60;, which reads a campaign&#39;s CURRENT state, this filters on what happened inside the window, so a campaign that spent then and is paused today is still returned. Filters the campaign set itself, so &#x60;pagination.total&#x60; counts only matching campaigns. | [optional] |
| **min_spend** | **Float** | Return only campaigns whose spend between &#x60;fromDate&#x60; and &#x60;toDate&#x60; reaches this amount. Expressed in each campaign&#39;s OWN currency (the &#x60;currency&#x60; field on the campaign node): spend is stored per ad account in its native currency and one response can span several. Implies &#x60;hasDelivery&#x60;; &#x60;minSpend&#x3D;0&#x60; applies no filter. | [optional] |
| **sort** | **String** | Campaign-level sort order. &#x60;newest&#x60; (default) / &#x60;oldest&#x60; order by the campaign&#39;s newest-ad createdAt. &#x60;spend_desc&#x60; / &#x60;spend_asc&#x60; order by aggregated spend in the requested date range; campaigns with no spend land at the end. | [optional][default to &#39;newest&#39;] |
| **time_increment** | **Integer** | Set to &#x60;1&#x60; to also return a daily breakdown. Mirrors Meta Insights&#39; &#x60;time_increment&#x3D;1&#x60;: each node gains a &#x60;daily[]&#x60; array of per-day metrics (same fields as the aggregated &#x60;metrics&#x60;) alongside the range total, so you get per-entity daily trends in ONE call instead of calling the tree once per day. Only &#x60;1&#x60; (daily) is supported. The daily series covers the same date range and uses the same source data as &#x60;metrics&#x60;, except &#x60;reach&#x60; on Meta and TikTok: the range total is the platform&#39;s de-duplicated value, so daily reach does not sum to it. See &#x60;dailyLevel&#x60; to control which levels carry it. | [optional] |
| **daily_level** | **String** | Which tree levels get the &#x60;daily[]&#x60; series when &#x60;timeIncrement&#x3D;1&#x60;. &#x60;campaign&#x60; (default) attaches it on campaign nodes only — the common per-campaign-trend case, and the smallest payload. &#x60;adset&#x60; adds it on ad sets too; &#x60;ad&#x60; adds it on every ad in &#x60;ads[]&#x60; as well (heaviest — a long range × up to 100 ads per ad set). Scope with &#x60;campaignId&#x60; to keep &#x60;ad&#x60;-level responses small. Ignored when &#x60;timeIncrement&#x60; is unset. | [optional][default to &#39;campaign&#39;] |

### Return type

[**AdTreeResponse**](AdTreeResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ads_timeline

> <AdsTimelineResponse> get_ads_timeline(account_id, opts)

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

> <Array(<AdsTimelineResponse>, Integer, Hash)> get_ads_timeline_with_http_info(account_id, opts)

```ruby
begin
  # Get daily account metrics
  data, status_code, headers = api_instance.get_ads_timeline_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdsTimelineResponse>
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

[**AdsTimelineResponse**](AdsTimelineResponse.md)

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
  include_empty: true, # Boolean | Meta only. Campaign reads aggregate over ad documents, so a campaign with ZERO ads is normally invisible here — the state the two-step create (campaign, then ads via `existingCampaignId`) leaves behind whenever Meta rejects the ad step. Set true to list those too, with `adCount: 0` and zeroed metrics. Requires `accountId` and `adAccountId`, since an empty campaign has no ad row to resolve a token or ad account from.
  page: 56, # Integer | Page number (1-based)
  limit: 56, # Integer | 
  source: 'zernio', # String | `all` (default) returns both Zernio-created ads and those discovered from the platform's ad manager — matches the web UI's default view. Pass `zernio` to restrict to isExternal=false only. Status is NOT filtered by default — use the `status` param for that.
  platform: 'facebook', # String | 
  status: Zernio::AdStatus::ACTIVE, # AdStatus | Filter by derived campaign status (post-aggregation)
  ad_account_id: 'ad_account_id_example', # String | Platform ad account ID (e.g. act_123 for Meta)
  page_id: 'page_id_example', # String | Meta only: Facebook Page ID. Campaigns have no Page of their own, so this keeps campaigns having at least one ad backed by this Page, with adCount and metrics computed over those ads only. Mirrors the same filter on /v1/ads and /v1/ads/tree.
  account_id: 'account_id_example', # String | Social account ID
  profile_id: 'profile_id_example', # String | Profile ID
  from_date: Date.parse('2013-10-20'), # Date | Start of metrics date range (YYYY-MM-DD, inclusive). Defaults to 90 days ago when both date params are omitted.
  to_date: Date.parse('2013-10-20'), # Date | End of metrics date range (YYYY-MM-DD, inclusive). Defaults to today. Max 730-day range.
  has_delivery: true, # Boolean | Return only campaigns that delivered between `fromDate` and `toDate` — spend above zero, or impressions served at zero spend. Unlike `status`, which reads a campaign's CURRENT state, this filters on what happened inside the window. Filters the campaign set itself, so `pagination.total` counts only matching campaigns. Mirrors the same filter on /v1/ads/tree.
  min_spend: 8.14 # Float | Return only campaigns whose spend between `fromDate` and `toDate` reaches this amount, in each campaign's OWN currency (the `currency` field on the campaign). Implies `hasDelivery`; `minSpend=0` applies no filter. Mirrors the same filter on /v1/ads/tree.
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
| **include_empty** | **Boolean** | Meta only. Campaign reads aggregate over ad documents, so a campaign with ZERO ads is normally invisible here — the state the two-step create (campaign, then ads via &#x60;existingCampaignId&#x60;) leaves behind whenever Meta rejects the ad step. Set true to list those too, with &#x60;adCount: 0&#x60; and zeroed metrics. Requires &#x60;accountId&#x60; and &#x60;adAccountId&#x60;, since an empty campaign has no ad row to resolve a token or ad account from. | [optional] |
| **page** | **Integer** | Page number (1-based) | [optional][default to 1] |
| **limit** | **Integer** |  | [optional][default to 20] |
| **source** | **String** | &#x60;all&#x60; (default) returns both Zernio-created ads and those discovered from the platform&#39;s ad manager — matches the web UI&#39;s default view. Pass &#x60;zernio&#x60; to restrict to isExternal&#x3D;false only. Status is NOT filtered by default — use the &#x60;status&#x60; param for that. | [optional][default to &#39;all&#39;] |
| **platform** | **String** |  | [optional] |
| **status** | [**AdStatus**](.md) | Filter by derived campaign status (post-aggregation) | [optional] |
| **ad_account_id** | **String** | Platform ad account ID (e.g. act_123 for Meta) | [optional] |
| **page_id** | **String** | Meta only: Facebook Page ID. Campaigns have no Page of their own, so this keeps campaigns having at least one ad backed by this Page, with adCount and metrics computed over those ads only. Mirrors the same filter on /v1/ads and /v1/ads/tree. | [optional] |
| **account_id** | **String** | Social account ID | [optional] |
| **profile_id** | **String** | Profile ID | [optional] |
| **from_date** | **Date** | Start of metrics date range (YYYY-MM-DD, inclusive). Defaults to 90 days ago when both date params are omitted. | [optional] |
| **to_date** | **Date** | End of metrics date range (YYYY-MM-DD, inclusive). Defaults to today. Max 730-day range. | [optional] |
| **has_delivery** | **Boolean** | Return only campaigns that delivered between &#x60;fromDate&#x60; and &#x60;toDate&#x60; — spend above zero, or impressions served at zero spend. Unlike &#x60;status&#x60;, which reads a campaign&#39;s CURRENT state, this filters on what happened inside the window. Filters the campaign set itself, so &#x60;pagination.total&#x60; counts only matching campaigns. Mirrors the same filter on /v1/ads/tree. | [optional] |
| **min_spend** | **Float** | Return only campaigns whose spend between &#x60;fromDate&#x60; and &#x60;toDate&#x60; reaches this amount, in each campaign&#39;s OWN currency (the &#x60;currency&#x60; field on the campaign). Implies &#x60;hasDelivery&#x60;; &#x60;minSpend&#x3D;0&#x60; applies no filter. Mirrors the same filter on /v1/ads/tree. | [optional] |

### Return type

[**ListAdCampaigns200Response**](ListAdCampaigns200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ad_keywords

> <ListAdKeywords200Response> list_ad_keywords(opts)

List Search keywords

Returns the Google Search keyword criteria (positive and negative) synced from connected Google Ads accounts, one row per ad-group keyword. Refreshed about once a week per Google Ads customer (the keyword sweep rides the ads discovery pass on a slower slot, to stay inside Google's shared daily API quota), so keywords added on Google can take several days to appear. A customer synced for the first time is populated on the next discovery pass rather than waiting for its weekly slot, and connecting an account or triggering a manual sync refreshes it immediately. Campaign-level negative keywords are not included; only ad-group-level criteria are. 

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
  account_id: 'account_id_example', # String | Social account ID
  ad_account_id: 'ad_account_id_example', # String | Platform ad account ID (Google customer ID). Mirrors the same filter on /v1/ads.
  profile_id: 'profile_id_example', # String | Profile ID
  campaign_id: 'campaign_id_example', # String | Platform campaign ID
  ad_set_id: 'ad_set_id_example', # String | Platform ad group ID (Google ad group)
  status: 'active', # String | Keyword criterion status
  match_type: 'exact', # String | 
  negative: true, # Boolean | true = negative keywords only, false = positive only. Omit for both.
  search: 'search_example' # String | Case-insensitive substring match on the keyword text
}

begin
  # List Search keywords
  result = api_instance.list_ad_keywords(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->list_ad_keywords: #{e}"
end
```

#### Using the list_ad_keywords_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAdKeywords200Response>, Integer, Hash)> list_ad_keywords_with_http_info(opts)

```ruby
begin
  # List Search keywords
  data, status_code, headers = api_instance.list_ad_keywords_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAdKeywords200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdCampaignsApi->list_ad_keywords_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number (1-based) | [optional][default to 1] |
| **limit** | **Integer** |  | [optional][default to 50] |
| **account_id** | **String** | Social account ID | [optional] |
| **ad_account_id** | **String** | Platform ad account ID (Google customer ID). Mirrors the same filter on /v1/ads. | [optional] |
| **profile_id** | **String** | Profile ID | [optional] |
| **campaign_id** | **String** | Platform campaign ID | [optional] |
| **ad_set_id** | **String** | Platform ad group ID (Google ad group) | [optional] |
| **status** | **String** | Keyword criterion status | [optional] |
| **match_type** | **String** |  | [optional] |
| **negative** | **Boolean** | true &#x3D; negative keywords only, false &#x3D; positive only. Omit for both. | [optional] |
| **search** | **String** | Case-insensitive substring match on the keyword text | [optional] |

### Return type

[**ListAdKeywords200Response**](ListAdKeywords200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ads

> <AdsListResponse> list_ads(opts)

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
  page_id: 'page_id_example', # String | Meta only: Facebook Page ID. Returns only ads whose creative is backed by this Page (a Meta ad account serves ads for every Page in the Business Manager). Matches each ad's `creative.pageId`; ads with no page signal (rare IG-only creatives) never match. Mirrors the same filter on /v1/ads/campaigns and /v1/ads/tree.
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

> <Array(<AdsListResponse>, Integer, Hash)> list_ads_with_http_info(opts)

```ruby
begin
  # List ads
  data, status_code, headers = api_instance.list_ads_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdsListResponse>
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
| **page_id** | **String** | Meta only: Facebook Page ID. Returns only ads whose creative is backed by this Page (a Meta ad account serves ads for every Page in the Business Manager). Matches each ad&#39;s &#x60;creative.pageId&#x60;; ads with no page signal (rare IG-only creatives) never match. Mirrors the same filter on /v1/ads/campaigns and /v1/ads/tree. | [optional] |
| **profile_id** | **String** | Profile ID | [optional] |
| **campaign_id** | **String** | Platform campaign ID (filter ads within a campaign) | [optional] |
| **platform_ad_id** | **String** | Meta ad ID. Returns the ad with this platform-side ad ID. | [optional] |
| **effective_object_story_id** | **String** | Facebook &#x60;{pageId}_{postId}&#x60; of the post the ad&#39;s engagement lives on (Meta &#x60;effective_object_story_id&#x60;). Use to map a Business-Manager-visible post back to the Zernio ad. | [optional] |
| **effective_instagram_media_id** | **String** | Instagram media ID of the boosted post (Meta &#x60;effective_instagram_media_id&#x60;). Use to map a Business-Manager-visible IG post back to the Zernio ad. | [optional] |
| **from_date** | **Date** | Start of metrics date range (YYYY-MM-DD). Defaults to 90 days ago. | [optional] |
| **to_date** | **Date** | End of metrics date range (YYYY-MM-DD). Defaults to today. Max 730-day range. | [optional] |

### Return type

[**AdsListResponse**](AdsListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_ad

> <UpdateAd200Response> update_ad(ad_id, update_ad_request)

Update ad

Patch one or more fields on an ad. Status, budget, targeting, and creative changes are propagated to the platform.  Per-platform support: - **Meta** (Facebook + Instagram): all fields supported. - **TikTok**: status, budget, targeting (via `/v2/adgroup/update/`), and creative   (via `/v2/ad/update/` patch-style — `headline` is ignored, `body` becomes `ad_text`). - **Google**: status, budget, and KEYWORD edits via `targeting.keywords` /   `targeting.negativeKeywords` — each list you send becomes the FULL new set of its   kind on the ad group (criteria not in the list are removed); a kind left out is   untouched. Any other `targeting` field returns 400: Google cannot mutate broad   targeting post-create without recreating the campaign. `creative` returns 501. - **LinkedIn**: status, budget, targeting (geo countries only, applied to the   LinkedIn Campaign via PARTIAL_UPDATE), and creative (uploads new media, creates a   replacement inline creative on the same campaign, pauses the old one). - **Pinterest / X / OpenAI Ads**: status + budget only. Sending   `targeting` or `creative` returns 501 with code `unsupported_platform_operation`.   OpenAI Ads budget is lifetime-only (see `budget.type` below). 

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

Campaign-level edits. Send at least one of `budget`, `bidStrategy`, `name` or `platformSpecificData`. An unsupported field is always an error, never a silent drop.  | Body field | Meta | Google | Others | |---|---|---|---| | `bidStrategy` | Yes | Yes | 501 | | `bidAmount`, `roasAverageFloor` | 400 — ad-set level | Yes | 400 | | `budget` (CBO; ABO returns 409) | Yes | 501 | 501 | | `name` | Yes | 501 | 501 | | `platformSpecificData.spendCap` | Yes | 400 | 400 | | `accountId` (empty campaigns) | Yes | - | - |  Google maps the shared enum onto its own strategies: `LOWEST_COST_WITHOUT_CAP` to Maximize Clicks, `LOWEST_COST_WITH_BID_CAP` to Maximize Clicks with a max CPC (`bidAmount`), `COST_CAP` to Target CPA (`bidAmount`), `LOWEST_COST_WITH_MIN_ROAS` to Target ROAS (`roasAverageFloor`). A campaign on a PORTFOLIO bidding strategy is rejected: detach it in Google Ads first, since it is shared across campaigns.  `accountId` forwards the update straight to Meta for a campaign with zero ads, which would otherwise 404; the response then carries `updated: 0`. 

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

Writes the campaign's own on/off switch, then lets the platform cascade delivery to its ad sets and ads. Makes one platform API call, not one per ad.  The switch is always written, whatever delivery status the ads underneath report: an ad still in review does not block resuming its campaign. The echoed `status` is the confirmation that it landed.  `updated` / `skipped` describe only the ads whose own stored status CHANGED alongside it, so `updated: 0` is a normal successful response, not a no-op. Ads are skipped when they are in a terminal status (rejected, completed, cancelled), already in the target state, or switched on but not yet delivering — the last group keeps its `pending_review` / `error` status until the platform reports what it became. `skippedReasons` names which case applies.  On Meta this flips the campaign only. An ad set paused in its own right stays paused, so pair this with PUT /v1/ads/ad-sets/{adSetId}/status when you also need the ad set switched back on. 

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

Ad-set-level writes. Use this for ABO budget updates, ad-set-scoped pause/resume, bid-strategy edits, Meta value-rule-set attach/detach, and Meta-only post-launch delivery settings via `platformSpecificData`. At least one updatable field is required.  Value rule sets (Meta only, see `/v1/ads/value-rule-sets`): - ATTACH or REPLACE: send `valueRuleSetId`. Attachment is driven by the id's   presence, so `valueRulesApplied: true` is optional. Sending a different id   replaces the previous association; there is no separate replace call. - DETACH: send `valueRulesApplied: false` and OMIT `valueRuleSetId`. - Sending `valueRulesApplied: false` TOGETHER with `valueRuleSetId` returns 400   `mutually_exclusive_fields`. This is deliberate: Meta attaches the rule set   whenever `value_rule_set_id` is present, even with `value_rules_applied` false,   so echoing stored state while asking to detach would silently keep the bid   adjustments live. - Eligibility: only ad sets on `LOWEST_COST_WITHOUT_CAP` or `COST_CAP`. Meta   rejects the rest server-side. - Read back with `GET /v1/ads/ad-sets/{adSetId}?fields=value_rule_set_id`. Meta   does not document `value_rules_applied` as a readable ad-set field, so the   boolean cannot be read back.  Bid strategy compatibility (per Meta's spec): - `LOWEST_COST_WITHOUT_CAP`: no `bidAmount`, no `roasAverageFloor`. - `LOWEST_COST_WITH_BID_CAP` / `COST_CAP`: `bidAmount` REQUIRED (whole currency units). - `LOWEST_COST_WITH_MIN_ROAS`: `roasAverageFloor` REQUIRED (decimal multiplier, e.g. 2.0 = 2.0x ROAS). - Meta only: send `bidAmount` WITHOUT `bidStrategy` to change the cap amount on an ad set   under a COST_CAP / LOWEST_COST_WITH_BID_CAP parent campaign, leaving the strategy itself   (inherited from the campaign) untouched. `roasAverageFloor` without `bidStrategy` is   rejected (it has no meaning outside LOWEST_COST_WITH_MIN_ROAS).  Delivery settings are validated by Meta against the campaign objective; incompatible combinations (e.g. a billingEvent the optimization goal doesn't allow) surface as 400s from Meta.  When updating `budget` on an ABO campaign: if the parent campaign is CBO, the response is 409 with code BUDGET_LEVEL_MISMATCH — route to PUT /v1/ads/campaigns/{campaignId} instead. 

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

Ad-set-scoped pause/resume (doesn't touch sibling ad sets). Thin wrapper over PUT /v1/ads/ad-sets/{adSetId} for callers that only want the status toggle and prefer a symmetric URL to /v1/ads/campaigns/{campaignId}/status.  On Meta and LinkedIn this writes the ad set's own on/off switch (Meta: `configured_status`), whatever delivery status its ads report — an ad still in review does not block resuming its ad set. The echoed `status` is the confirmation that it landed. Where the platform has no ad-set switch (TikTok and others) the toggle is emulated by flipping the child ads; a call with no actionable ad then writes nothing and returns a `message` with no `status`.  `updated` / `skipped` describe only the ads whose own stored status CHANGED alongside the switch, so `updated: 0` is a normal successful response. See `skippedReasons` for which of the three cases applies (terminal, already in the target state, or switched on but not yet delivering).  A campaign created paused needs its campaign resumed as well: pair this with PUT /v1/ads/campaigns/{campaignId}/status. 

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

