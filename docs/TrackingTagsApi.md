# Zernio::TrackingTagsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_tracking_tag_shared_account**](TrackingTagsApi.md#add_tracking_tag_shared_account) | **POST** /v1/accounts/{accountId}/tracking-tags/{tagId}/shared-accounts | Share with an ad account |
| [**create_tracking_tag**](TrackingTagsApi.md#create_tracking_tag) | **POST** /v1/accounts/{accountId}/tracking-tags | Create a tracking tag |
| [**get_ad_tracking_tags**](TrackingTagsApi.md#get_ad_tracking_tags) | **GET** /v1/ads/{adId}/tracking-tags | Get ad tracking tags |
| [**get_tracking_tag**](TrackingTagsApi.md#get_tracking_tag) | **GET** /v1/accounts/{accountId}/tracking-tags/{tagId} | Get a tracking tag |
| [**get_tracking_tag_stats**](TrackingTagsApi.md#get_tracking_tag_stats) | **GET** /v1/accounts/{accountId}/tracking-tags/{tagId}/stats | Get aggregated event stats |
| [**list_tracking_tag_shared_accounts**](TrackingTagsApi.md#list_tracking_tag_shared_accounts) | **GET** /v1/accounts/{accountId}/tracking-tags/{tagId}/shared-accounts | List accounts it is shared with |
| [**list_tracking_tags**](TrackingTagsApi.md#list_tracking_tags) | **GET** /v1/accounts/{accountId}/tracking-tags | List tracking tags |
| [**remove_tracking_tag_shared_account**](TrackingTagsApi.md#remove_tracking_tag_shared_account) | **DELETE** /v1/accounts/{accountId}/tracking-tags/{tagId}/shared-accounts | Stop sharing with an account |
| [**update_ad_tracking_tags**](TrackingTagsApi.md#update_ad_tracking_tags) | **PATCH** /v1/ads/{adId}/tracking-tags | Set ad tracking tags |
| [**update_tracking_tag**](TrackingTagsApi.md#update_tracking_tag) | **PATCH** /v1/accounts/{accountId}/tracking-tags/{tagId} | Update a tracking tag |


## add_tracking_tag_shared_account

> <AddTrackingTagSharedAccount201Response> add_tracking_tag_shared_account(account_id, tag_id, add_tracking_tag_shared_account_request)

Share with an ad account

Shares the pixel with another ad account so campaigns/audiences in that account can use it. Requires that you administer both the pixel's owning Business Manager and the target ad account; a pixel on a personal (non-BM) ad account can't be shared (Meta will reject the call). Meta only (platform `metaads`); other platforms return 405. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TrackingTagsApi.new
account_id = 'account_id_example' # String | 
tag_id = 'tag_id_example' # String | Pixel id.
add_tracking_tag_shared_account_request = Zernio::AddTrackingTagSharedAccountRequest.new({ad_account_id: 'ad_account_id_example'}) # AddTrackingTagSharedAccountRequest | 

begin
  # Share with an ad account
  result = api_instance.add_tracking_tag_shared_account(account_id, tag_id, add_tracking_tag_shared_account_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->add_tracking_tag_shared_account: #{e}"
end
```

#### Using the add_tracking_tag_shared_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddTrackingTagSharedAccount201Response>, Integer, Hash)> add_tracking_tag_shared_account_with_http_info(account_id, tag_id, add_tracking_tag_shared_account_request)

```ruby
begin
  # Share with an ad account
  data, status_code, headers = api_instance.add_tracking_tag_shared_account_with_http_info(account_id, tag_id, add_tracking_tag_shared_account_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddTrackingTagSharedAccount201Response>
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->add_tracking_tag_shared_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **tag_id** | **String** | Pixel id. |  |
| **add_tracking_tag_shared_account_request** | [**AddTrackingTagSharedAccountRequest**](AddTrackingTagSharedAccountRequest.md) |  |  |

### Return type

[**AddTrackingTagSharedAccount201Response**](AddTrackingTagSharedAccount201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_tracking_tag

> <CreateTrackingTag201Response> create_tracking_tag(account_id, create_tracking_tag_request)

Create a tracking tag

Meta: creates a Meta Pixel on the given ad account (`POST /act_{id}/adspixels` — `name` is the only input). Returns the created tag including its install `code`. The pixel is owned by the Business Manager that owns the ad account; a pixel created on a personal (non-BM) ad account ends up with `ownerBusinessId: null` and can't be shared with other ad accounts.  Creating a Meta pixel does NOT install it — install the returned `code` snippet on the site, or send events server-side via `POST /v1/ads/conversions`. The check `installed` is derived from `lastFiredTime`.  OpenAI Ads: creates an OpenAI pixel AND provisions a Conversions API key for it in the same call (`adAccountId` is required by this endpoint but ignored — one API key maps to exactly one ad account, so there's nothing to select). Returns 422 (`FEATURE_NOT_AVAILABLE`) if the ad account isn't enabled for pixel management; contact your OpenAI partner representative to enable it. There is no delete API for OpenAI pixels. If the pixel is created but the Conversions API key provisioning then fails, the pixel is left live on OpenAI (it cannot be cleaned up) and the error message names the surviving pixel id and warns against retrying, since a retry would create a second, orphaned pixel.  NOT idempotent on either platform: each call creates a new pixel (and, for OpenAI, a new Conversions API key). Do not retry blindly on timeout. Meta (platform `metaads`) and OpenAI Ads (platform `openaiads`); other platforms return 405. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TrackingTagsApi.new
account_id = 'account_id_example' # String | Ads SocialAccount id (platform `metaads` or `openaiads`).
create_tracking_tag_request = Zernio::CreateTrackingTagRequest.new({ad_account_id: 'ad_account_id_example', name: 'name_example'}) # CreateTrackingTagRequest | 

begin
  # Create a tracking tag
  result = api_instance.create_tracking_tag(account_id, create_tracking_tag_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->create_tracking_tag: #{e}"
end
```

#### Using the create_tracking_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTrackingTag201Response>, Integer, Hash)> create_tracking_tag_with_http_info(account_id, create_tracking_tag_request)

```ruby
begin
  # Create a tracking tag
  data, status_code, headers = api_instance.create_tracking_tag_with_http_info(account_id, create_tracking_tag_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTrackingTag201Response>
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->create_tracking_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Ads SocialAccount id (platform &#x60;metaads&#x60; or &#x60;openaiads&#x60;). |  |
| **create_tracking_tag_request** | [**CreateTrackingTagRequest**](CreateTrackingTagRequest.md) |  |  |

### Return type

[**CreateTrackingTag201Response**](CreateTrackingTag201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_ad_tracking_tags

> <GetAdTrackingTags200Response> get_ad_tracking_tags(ad_id)

Get ad tracking tags

Unified read of the platform's native click-URL tracking params. - Meta (facebook/instagram): the creative's `url_tags` (and template_url_spec). - Google (googleads): the campaign's `trackingUrlTemplate` + `finalUrlSuffix`.   Subject to the Google Ads API access-tier daily quota; bulk audits need Standard access. - LinkedIn (linkedinads): the campaign's Dynamic UTM `dynamicValueParameters` + `customValueParameters`. Returns 405 for platforms without a click-URL tracking surface (TikTok, X, Pinterest). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TrackingTagsApi.new
ad_id = 'ad_id_example' # String | Ad id (hex _id, platformAdId, or effective story/media id).

begin
  # Get ad tracking tags
  result = api_instance.get_ad_tracking_tags(ad_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->get_ad_tracking_tags: #{e}"
end
```

#### Using the get_ad_tracking_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAdTrackingTags200Response>, Integer, Hash)> get_ad_tracking_tags_with_http_info(ad_id)

```ruby
begin
  # Get ad tracking tags
  data, status_code, headers = api_instance.get_ad_tracking_tags_with_http_info(ad_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAdTrackingTags200Response>
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->get_ad_tracking_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_id** | **String** | Ad id (hex _id, platformAdId, or effective story/media id). |  |

### Return type

[**GetAdTrackingTags200Response**](GetAdTrackingTags200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tracking_tag

> <GetTrackingTag200Response> get_tracking_tag(account_id, tag_id)

Get a tracking tag

Returns the full tag record including the base-code `code` snippet, `lastFiredTime`, `ownerBusinessId`, `isUnavailable`, etc. Meta only (platform `metaads`); other platforms return 405. OpenAI Ads has no get-by-id endpoint, so it 405s here too — use `GET /v1/accounts/{accountId}/tracking-tags` (list) instead. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TrackingTagsApi.new
account_id = 'account_id_example' # String | 
tag_id = 'tag_id_example' # String | Pixel id.

begin
  # Get a tracking tag
  result = api_instance.get_tracking_tag(account_id, tag_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->get_tracking_tag: #{e}"
end
```

#### Using the get_tracking_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTrackingTag200Response>, Integer, Hash)> get_tracking_tag_with_http_info(account_id, tag_id)

```ruby
begin
  # Get a tracking tag
  data, status_code, headers = api_instance.get_tracking_tag_with_http_info(account_id, tag_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTrackingTag200Response>
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->get_tracking_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **tag_id** | **String** | Pixel id. |  |

### Return type

[**GetTrackingTag200Response**](GetTrackingTag200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tracking_tag_stats

> <GetTrackingTagStats200Response> get_tracking_tag_stats(account_id, tag_id, opts)

Get aggregated event stats

Returns aggregated event counts for the pixel (`GET /{pixel_id}/stats`). Rows are passed through from Meta as-is — their shape depends on the `aggregation` requested. Meta only (platform `metaads`); other platforms return 405. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TrackingTagsApi.new
account_id = 'account_id_example' # String | 
tag_id = 'tag_id_example' # String | Pixel id.
opts = {
  aggregation: 'event', # String | Aggregation dimension. Defaults to `event`.
  start_time: 56, # Integer | Unix seconds lower bound.
  end_time: 56 # Integer | Unix seconds upper bound.
}

begin
  # Get aggregated event stats
  result = api_instance.get_tracking_tag_stats(account_id, tag_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->get_tracking_tag_stats: #{e}"
end
```

#### Using the get_tracking_tag_stats_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTrackingTagStats200Response>, Integer, Hash)> get_tracking_tag_stats_with_http_info(account_id, tag_id, opts)

```ruby
begin
  # Get aggregated event stats
  data, status_code, headers = api_instance.get_tracking_tag_stats_with_http_info(account_id, tag_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTrackingTagStats200Response>
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->get_tracking_tag_stats_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **tag_id** | **String** | Pixel id. |  |
| **aggregation** | **String** | Aggregation dimension. Defaults to &#x60;event&#x60;. | [optional][default to &#39;event&#39;] |
| **start_time** | **Integer** | Unix seconds lower bound. | [optional] |
| **end_time** | **Integer** | Unix seconds upper bound. | [optional] |

### Return type

[**GetTrackingTagStats200Response**](GetTrackingTagStats200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tracking_tag_shared_accounts

> <ListTrackingTagSharedAccounts200Response> list_tracking_tag_shared_accounts(account_id, tag_id)

List accounts it is shared with

Meta only (platform `metaads`); other platforms return 405.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TrackingTagsApi.new
account_id = 'account_id_example' # String | 
tag_id = 'tag_id_example' # String | Pixel id.

begin
  # List accounts it is shared with
  result = api_instance.list_tracking_tag_shared_accounts(account_id, tag_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->list_tracking_tag_shared_accounts: #{e}"
end
```

#### Using the list_tracking_tag_shared_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTrackingTagSharedAccounts200Response>, Integer, Hash)> list_tracking_tag_shared_accounts_with_http_info(account_id, tag_id)

```ruby
begin
  # List accounts it is shared with
  data, status_code, headers = api_instance.list_tracking_tag_shared_accounts_with_http_info(account_id, tag_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTrackingTagSharedAccounts200Response>
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->list_tracking_tag_shared_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **tag_id** | **String** | Pixel id. |  |

### Return type

[**ListTrackingTagSharedAccounts200Response**](ListTrackingTagSharedAccounts200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tracking_tags

> <ListTrackingTags200Response> list_tracking_tags(account_id, opts)

List tracking tags

Returns the tracking tags (Meta Pixels, or OpenAI Ads pixels) the connected ads account can see. Pass `?adAccountId=act_...` (Meta only) to scope the list to a single ad account; omit it to list every pixel reachable by the token (the name is then suffixed with the ad account it was discovered on, for disambiguation). The list view omits `code` — call `getTrackingTag` for the install snippet and full detail (Meta only; OpenAI Ads has no get-by-id endpoint).  Meta (platform `metaads`) and OpenAI Ads (platform `openaiads`); other platforms return 405. The `accountId` must be the ads SocialAccount created by the Ads add-on connect flow (Meta) or the OpenAI Ads connect flow, not a Facebook/Instagram posting account. Get your Meta `act_...` ids from `GET /v1/ads/accounts`; `adAccountId` is ignored for OpenAI Ads (one API key maps to exactly one ad account). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TrackingTagsApi.new
account_id = 'account_id_example' # String | Ads SocialAccount id (platform `metaads` or `openaiads`).
opts = {
  ad_account_id: 'ad_account_id_example' # String | Optional, Meta only. Scope to one ad account, e.g. `act_123456789`. Ignored for OpenAI Ads.
}

begin
  # List tracking tags
  result = api_instance.list_tracking_tags(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->list_tracking_tags: #{e}"
end
```

#### Using the list_tracking_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTrackingTags200Response>, Integer, Hash)> list_tracking_tags_with_http_info(account_id, opts)

```ruby
begin
  # List tracking tags
  data, status_code, headers = api_instance.list_tracking_tags_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTrackingTags200Response>
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->list_tracking_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Ads SocialAccount id (platform &#x60;metaads&#x60; or &#x60;openaiads&#x60;). |  |
| **ad_account_id** | **String** | Optional, Meta only. Scope to one ad account, e.g. &#x60;act_123456789&#x60;. Ignored for OpenAI Ads. | [optional] |

### Return type

[**ListTrackingTags200Response**](ListTrackingTags200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_tracking_tag_shared_account

> remove_tracking_tag_shared_account(account_id, tag_id, opts)

Stop sharing with an account

`adAccountId` may be passed as a query parameter (recommended) or as a JSON body field for clients that can send DELETE bodies. Meta only (platform `metaads`); other platforms return 405. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TrackingTagsApi.new
account_id = 'account_id_example' # String | 
tag_id = 'tag_id_example' # String | Pixel id.
opts = {
  ad_account_id: 'ad_account_id_example' # String | Ad account to unshare, e.g. `act_123456789`. May also be sent in the JSON body.
}

begin
  # Stop sharing with an account
  api_instance.remove_tracking_tag_shared_account(account_id, tag_id, opts)
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->remove_tracking_tag_shared_account: #{e}"
end
```

#### Using the remove_tracking_tag_shared_account_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> remove_tracking_tag_shared_account_with_http_info(account_id, tag_id, opts)

```ruby
begin
  # Stop sharing with an account
  data, status_code, headers = api_instance.remove_tracking_tag_shared_account_with_http_info(account_id, tag_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->remove_tracking_tag_shared_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **tag_id** | **String** | Pixel id. |  |
| **ad_account_id** | **String** | Ad account to unshare, e.g. &#x60;act_123456789&#x60;. May also be sent in the JSON body. | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_ad_tracking_tags

> update_ad_tracking_tags(ad_id, update_ad_tracking_tags_request)

Set ad tracking tags

Unified update. Send only the fields for the ad's platform: - Meta: `urlTags` (array of {key,value}). Meta creatives are immutable, so this rebuilds the   creative and repoints the ad. By DEFAULT we PRESERVE the existing creative verbatim   (re-post its object_story_spec + the new url_tags, reusing the image), so you send `urlTags`   ALONE — no need to read back headline/body/CTA. `creative` (headline, body, callToAction,   linkUrl, imageUrl) is OPTIONAL and only needed to rebuild explicitly, or for SHARE / page-post   / dark / asset_feed creatives whose object_story_spec Meta strips (those return 422 asking for   `creative`). - Google: `trackingUrlTemplate` and/or `finalUrlSuffix` (full template strings; account quota applies). - LinkedIn: `dynamicValueParameters` and/or `customValueParameters` (campaign-level Dynamic UTM). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TrackingTagsApi.new
ad_id = 'ad_id_example' # String | 
update_ad_tracking_tags_request = Zernio::UpdateAdTrackingTagsRequest.new # UpdateAdTrackingTagsRequest | 

begin
  # Set ad tracking tags
  api_instance.update_ad_tracking_tags(ad_id, update_ad_tracking_tags_request)
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->update_ad_tracking_tags: #{e}"
end
```

#### Using the update_ad_tracking_tags_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_ad_tracking_tags_with_http_info(ad_id, update_ad_tracking_tags_request)

```ruby
begin
  # Set ad tracking tags
  data, status_code, headers = api_instance.update_ad_tracking_tags_with_http_info(ad_id, update_ad_tracking_tags_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->update_ad_tracking_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_id** | **String** |  |  |
| **update_ad_tracking_tags_request** | [**UpdateAdTrackingTagsRequest**](UpdateAdTrackingTagsRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_tracking_tag

> <GetTrackingTag200Response> update_tracking_tag(account_id, tag_id, update_tracking_tag_request)

Update a tracking tag

Partial-update a pixel. Whitelisted fields: `name` (rename), `enableAutomaticMatching`, `automaticMatchingFields`, `firstPartyCookieStatus`, `dataUseSetting`. At least one is required. Returns the re-fetched canonical tag. Meta only (platform `metaads`); other platforms return 405.  There is no DELETE — Meta has no API to delete a pixel. To stop using one, unshare it from your ad accounts (`DELETE .../tracking-tags/{tagId}/shared-accounts`) or disable it in Events Manager. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TrackingTagsApi.new
account_id = 'account_id_example' # String | 
tag_id = 'tag_id_example' # String | Pixel id.
update_tracking_tag_request = Zernio::UpdateTrackingTagRequest.new # UpdateTrackingTagRequest | 

begin
  # Update a tracking tag
  result = api_instance.update_tracking_tag(account_id, tag_id, update_tracking_tag_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->update_tracking_tag: #{e}"
end
```

#### Using the update_tracking_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTrackingTag200Response>, Integer, Hash)> update_tracking_tag_with_http_info(account_id, tag_id, update_tracking_tag_request)

```ruby
begin
  # Update a tracking tag
  data, status_code, headers = api_instance.update_tracking_tag_with_http_info(account_id, tag_id, update_tracking_tag_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTrackingTag200Response>
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->update_tracking_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **tag_id** | **String** | Pixel id. |  |
| **update_tracking_tag_request** | [**UpdateTrackingTagRequest**](UpdateTrackingTagRequest.md) |  |  |

### Return type

[**GetTrackingTag200Response**](GetTrackingTag200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

