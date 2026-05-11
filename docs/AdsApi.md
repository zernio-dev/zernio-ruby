# Zernio::AdsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_conversion_associations**](AdsApi.md#add_conversion_associations) | **POST** /v1/accounts/{accountId}/conversion-destinations/{destinationId}/associations | Associate campaigns with a conversion destination |
| [**add_tracking_tag_shared_account**](AdsApi.md#add_tracking_tag_shared_account) | **POST** /v1/accounts/{accountId}/tracking-tags/{tagId}/shared-accounts | Share a tracking tag with an ad account |
| [**boost_post**](AdsApi.md#boost_post) | **POST** /v1/ads/boost | Boost post as ad |
| [**create_conversion_destination**](AdsApi.md#create_conversion_destination) | **POST** /v1/accounts/{accountId}/conversion-destinations | Create a conversion destination (LinkedIn) |
| [**create_ctwa_ad**](AdsApi.md#create_ctwa_ad) | **POST** /v1/ads/ctwa | Create Click-to-WhatsApp ad |
| [**create_standalone_ad**](AdsApi.md#create_standalone_ad) | **POST** /v1/ads/create | Create standalone ad |
| [**create_tracking_tag**](AdsApi.md#create_tracking_tag) | **POST** /v1/accounts/{accountId}/tracking-tags | Create a tracking tag (Meta Pixel) |
| [**delete_ad**](AdsApi.md#delete_ad) | **DELETE** /v1/ads/{adId} | Cancel an ad |
| [**delete_conversion_destination**](AdsApi.md#delete_conversion_destination) | **DELETE** /v1/accounts/{accountId}/conversion-destinations/{destinationId} | Soft-delete a conversion destination |
| [**get_ad**](AdsApi.md#get_ad) | **GET** /v1/ads/{adId} | Get ad details |
| [**get_ad_analytics**](AdsApi.md#get_ad_analytics) | **GET** /v1/ads/{adId}/analytics | Get ad analytics |
| [**get_ad_comments**](AdsApi.md#get_ad_comments) | **GET** /v1/ads/{adId}/comments | List comments on an ad |
| [**get_conversion_destination**](AdsApi.md#get_conversion_destination) | **GET** /v1/accounts/{accountId}/conversion-destinations/{destinationId} | Fetch a single conversion destination |
| [**get_conversion_metrics**](AdsApi.md#get_conversion_metrics) | **GET** /v1/accounts/{accountId}/conversion-destinations/{destinationId}/metrics | Fetch attribution metrics for a conversion destination |
| [**get_tracking_tag**](AdsApi.md#get_tracking_tag) | **GET** /v1/accounts/{accountId}/tracking-tags/{tagId} | Fetch a single tracking tag (Meta Pixel) |
| [**get_tracking_tag_stats**](AdsApi.md#get_tracking_tag_stats) | **GET** /v1/accounts/{accountId}/tracking-tags/{tagId}/stats | Aggregated event stats for a tracking tag (Meta Pixel) |
| [**list_ad_accounts**](AdsApi.md#list_ad_accounts) | **GET** /v1/ads/accounts | List ad accounts |
| [**list_ads**](AdsApi.md#list_ads) | **GET** /v1/ads | List ads |
| [**list_ads_business_centers**](AdsApi.md#list_ads_business_centers) | **GET** /v1/ads/business-centers | List TikTok Business Centers |
| [**list_conversion_associations**](AdsApi.md#list_conversion_associations) | **GET** /v1/accounts/{accountId}/conversion-destinations/{destinationId}/associations | List campaigns associated with a conversion destination |
| [**list_conversion_destinations**](AdsApi.md#list_conversion_destinations) | **GET** /v1/accounts/{accountId}/conversion-destinations | List destinations for the Conversions API |
| [**list_tracking_tag_shared_accounts**](AdsApi.md#list_tracking_tag_shared_accounts) | **GET** /v1/accounts/{accountId}/tracking-tags/{tagId}/shared-accounts | List ad accounts a tracking tag is shared with |
| [**list_tracking_tags**](AdsApi.md#list_tracking_tags) | **GET** /v1/accounts/{accountId}/tracking-tags | List tracking tags (Meta Pixels) |
| [**remove_conversion_associations**](AdsApi.md#remove_conversion_associations) | **DELETE** /v1/accounts/{accountId}/conversion-destinations/{destinationId}/associations | Remove campaign↔conversion associations |
| [**remove_tracking_tag_shared_account**](AdsApi.md#remove_tracking_tag_shared_account) | **DELETE** /v1/accounts/{accountId}/tracking-tags/{tagId}/shared-accounts | Stop sharing a tracking tag with an ad account |
| [**search_ad_interests**](AdsApi.md#search_ad_interests) | **GET** /v1/ads/interests | Search targeting interests |
| [**search_ad_targeting_locations**](AdsApi.md#search_ad_targeting_locations) | **GET** /v1/ads/targeting/search | Search geo targeting locations (Meta) |
| [**send_conversions**](AdsApi.md#send_conversions) | **POST** /v1/ads/conversions | Send conversion events to an ad platform |
| [**send_whats_app_conversion**](AdsApi.md#send_whats_app_conversion) | **POST** /v1/whatsapp/conversions | Send WhatsApp conversion event |
| [**update_ad**](AdsApi.md#update_ad) | **PUT** /v1/ads/{adId} | Update ad |
| [**update_conversion_destination**](AdsApi.md#update_conversion_destination) | **PATCH** /v1/accounts/{accountId}/conversion-destinations/{destinationId} | Update a conversion destination |
| [**update_tracking_tag**](AdsApi.md#update_tracking_tag) | **PATCH** /v1/accounts/{accountId}/tracking-tags/{tagId} | Update a tracking tag (Meta Pixel) |


## add_conversion_associations

> <AddConversionAssociations200Response> add_conversion_associations(account_id, destination_id, add_conversion_associations_request)

Associate campaigns with a conversion destination

Associate one or more campaigns with this conversion rule. Returns a per-campaign success/failure result so callers can retry only the rows that failed (e.g. wrong campaign type for the rule's objective). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdsApi.new
account_id = 'account_id_example' # String | 
destination_id = 'destination_id_example' # String | 
add_conversion_associations_request = Zernio::AddConversionAssociationsRequest.new({ad_account_id: 'ad_account_id_example', campaign_ids: ['campaign_ids_example']}) # AddConversionAssociationsRequest | 

begin
  # Associate campaigns with a conversion destination
  result = api_instance.add_conversion_associations(account_id, destination_id, add_conversion_associations_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->add_conversion_associations: #{e}"
end
```

#### Using the add_conversion_associations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddConversionAssociations200Response>, Integer, Hash)> add_conversion_associations_with_http_info(account_id, destination_id, add_conversion_associations_request)

```ruby
begin
  # Associate campaigns with a conversion destination
  data, status_code, headers = api_instance.add_conversion_associations_with_http_info(account_id, destination_id, add_conversion_associations_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddConversionAssociations200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->add_conversion_associations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **destination_id** | **String** |  |  |
| **add_conversion_associations_request** | [**AddConversionAssociationsRequest**](AddConversionAssociationsRequest.md) |  |  |

### Return type

[**AddConversionAssociations200Response**](AddConversionAssociations200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_tracking_tag_shared_account

> <AddTrackingTagSharedAccount201Response> add_tracking_tag_shared_account(account_id, tag_id, add_tracking_tag_shared_account_request)

Share a tracking tag with an ad account

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

api_instance = Zernio::AdsApi.new
account_id = 'account_id_example' # String | 
tag_id = 'tag_id_example' # String | Pixel id.
add_tracking_tag_shared_account_request = Zernio::AddTrackingTagSharedAccountRequest.new({ad_account_id: 'ad_account_id_example'}) # AddTrackingTagSharedAccountRequest | 

begin
  # Share a tracking tag with an ad account
  result = api_instance.add_tracking_tag_shared_account(account_id, tag_id, add_tracking_tag_shared_account_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->add_tracking_tag_shared_account: #{e}"
end
```

#### Using the add_tracking_tag_shared_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddTrackingTagSharedAccount201Response>, Integer, Hash)> add_tracking_tag_shared_account_with_http_info(account_id, tag_id, add_tracking_tag_shared_account_request)

```ruby
begin
  # Share a tracking tag with an ad account
  data, status_code, headers = api_instance.add_tracking_tag_shared_account_with_http_info(account_id, tag_id, add_tracking_tag_shared_account_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddTrackingTagSharedAccount201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->add_tracking_tag_shared_account_with_http_info: #{e}"
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

api_instance = Zernio::AdsApi.new
boost_post_request = Zernio::BoostPostRequest.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example', name: 'name_example', goal: 'engagement', budget: Zernio::BoostPostRequestBudget.new({amount: 3.56, type: 'daily'})}) # BoostPostRequest | 

begin
  # Boost post as ad
  result = api_instance.boost_post(boost_post_request)
  p result
rescue Zernio::ApiError => e
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
rescue Zernio::ApiError => e
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


## create_conversion_destination

> <CreateConversionDestination201Response> create_conversion_destination(account_id, create_conversion_destination_request)

Create a conversion destination (LinkedIn)

Create a new conversion rule on the platform. LinkedIn-only today; other platforms manage destinations in their own UIs and return 405.  For LinkedIn, the rule is created with `conversionMethod=CONVERSIONS_API` and (by default) auto-associated with all of the ad account's campaigns via `autoAssociationType=ALL_CAMPAIGNS`. Pass `autoAssociationType: NONE` to opt out and manage associations explicitly via the associations endpoints below.  365-day attribution windows are only valid for `SUBMIT_APPLICATION`, `PURCHASE`, `ADD_TO_CART`, `QUALIFIED_LEAD`, and `LEAD` rule types; the API rejects other combinations locally. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdsApi.new
account_id = 'account_id_example' # String | SocialAccount ID (linkedinads).
create_conversion_destination_request = Zernio::CreateConversionDestinationRequest.new({ad_account_id: 'ad_account_id_example', name: 'name_example', type: 'type_example'}) # CreateConversionDestinationRequest | 

begin
  # Create a conversion destination (LinkedIn)
  result = api_instance.create_conversion_destination(account_id, create_conversion_destination_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->create_conversion_destination: #{e}"
end
```

#### Using the create_conversion_destination_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateConversionDestination201Response>, Integer, Hash)> create_conversion_destination_with_http_info(account_id, create_conversion_destination_request)

```ruby
begin
  # Create a conversion destination (LinkedIn)
  data, status_code, headers = api_instance.create_conversion_destination_with_http_info(account_id, create_conversion_destination_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateConversionDestination201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->create_conversion_destination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | SocialAccount ID (linkedinads). |  |
| **create_conversion_destination_request** | [**CreateConversionDestinationRequest**](CreateConversionDestinationRequest.md) |  |  |

### Return type

[**CreateConversionDestination201Response**](CreateConversionDestination201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ctwa_ad

> <CreateCtwaAd201Response> create_ctwa_ad(create_ctwa_ad_request)

Create Click-to-WhatsApp ad

Creates a Click-to-WhatsApp (CTWA) ad on Meta. When tapped, the ad opens a WhatsApp conversation with the business attached to the supplied Facebook Page, and the full hierarchy (campaign, ad set, creative, ad) is created and activated in one call. The CTA is locked to WHATSAPP_MESSAGE and the destination is hard-coded to api.whatsapp.com/send; Meta resolves the actual WhatsApp number from the Page-to-WA pairing configured in Page settings or Business Manager. Prerequisites enforced by Meta (surfaced as platform_error on failure), the Facebook Page must be paired with a verified WhatsApp Business number, the WhatsApp Business Account must be business-verified, and the Meta access token must carry ads_management.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdsApi.new
create_ctwa_ad_request = Zernio::CreateCtwaAdRequest.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example', name: 'name_example', headline: 'headline_example', body: 'body_example', budget_amount: 3.56, budget_type: 'daily'}) # CreateCtwaAdRequest | 

begin
  # Create Click-to-WhatsApp ad
  result = api_instance.create_ctwa_ad(create_ctwa_ad_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->create_ctwa_ad: #{e}"
end
```

#### Using the create_ctwa_ad_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCtwaAd201Response>, Integer, Hash)> create_ctwa_ad_with_http_info(create_ctwa_ad_request)

```ruby
begin
  # Create Click-to-WhatsApp ad
  data, status_code, headers = api_instance.create_ctwa_ad_with_http_info(create_ctwa_ad_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCtwaAd201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->create_ctwa_ad_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_ctwa_ad_request** | [**CreateCtwaAdRequest**](CreateCtwaAdRequest.md) |  |  |

### Return type

[**CreateCtwaAd201Response**](CreateCtwaAd201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_standalone_ad

> <CreateStandaloneAd201Response> create_standalone_ad(create_standalone_ad_request)

Create standalone ad

Creates a paid ad with custom creative across Meta, Google Ads, Pinterest, TikTok, and X/Twitter. Supports three mutually-exclusive request shapes selected by the body, a legacy single-creative shape (all platforms, default), a Meta-only multi-creative shape via the creatives array (one ad set with N ads sharing budget and targeting), and a Meta-only attach shape via adSetId (adds one new ad to an existing ad set). Per-platform required fields, budget minimums, and video-ad rules (Meta only) are documented on each property below.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdsApi.new
create_standalone_ad_request = Zernio::CreateStandaloneAdRequest.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example', name: 'name_example'}) # CreateStandaloneAdRequest | 

begin
  # Create standalone ad
  result = api_instance.create_standalone_ad(create_standalone_ad_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->create_standalone_ad: #{e}"
end
```

#### Using the create_standalone_ad_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateStandaloneAd201Response>, Integer, Hash)> create_standalone_ad_with_http_info(create_standalone_ad_request)

```ruby
begin
  # Create standalone ad
  data, status_code, headers = api_instance.create_standalone_ad_with_http_info(create_standalone_ad_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateStandaloneAd201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->create_standalone_ad_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_standalone_ad_request** | [**CreateStandaloneAdRequest**](CreateStandaloneAdRequest.md) |  |  |

### Return type

[**CreateStandaloneAd201Response**](CreateStandaloneAd201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_tracking_tag

> <CreateTrackingTag201Response> create_tracking_tag(account_id, create_tracking_tag_request)

Create a tracking tag (Meta Pixel)

Creates a Meta Pixel on the given ad account (`POST /act_{id}/adspixels` — `name` is the only input). Returns the created tag including its install `code`. The pixel is owned by the Business Manager that owns the ad account; a pixel created on a personal (non-BM) ad account ends up with `ownerBusinessId: null` and can't be shared with other ad accounts.  Creating a pixel does NOT install it — install the returned `code` snippet on the site, or send events server-side via `POST /v1/ads/conversions`. The check `installed` is derived from `lastFiredTime`.  NOT idempotent: each call creates a new pixel. Do not retry blindly on timeout. Meta only (platform `metaads`); other platforms return 405. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdsApi.new
account_id = 'account_id_example' # String | Meta ads SocialAccount id (platform `metaads`).
create_tracking_tag_request = Zernio::CreateTrackingTagRequest.new({ad_account_id: 'ad_account_id_example', name: 'name_example'}) # CreateTrackingTagRequest | 

begin
  # Create a tracking tag (Meta Pixel)
  result = api_instance.create_tracking_tag(account_id, create_tracking_tag_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->create_tracking_tag: #{e}"
end
```

#### Using the create_tracking_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTrackingTag201Response>, Integer, Hash)> create_tracking_tag_with_http_info(account_id, create_tracking_tag_request)

```ruby
begin
  # Create a tracking tag (Meta Pixel)
  data, status_code, headers = api_instance.create_tracking_tag_with_http_info(account_id, create_tracking_tag_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTrackingTag201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->create_tracking_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Meta ads SocialAccount id (platform &#x60;metaads&#x60;). |  |
| **create_tracking_tag_request** | [**CreateTrackingTagRequest**](CreateTrackingTagRequest.md) |  |  |

### Return type

[**CreateTrackingTag201Response**](CreateTrackingTag201Response.md)

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
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdsApi.new
ad_id = 'ad_id_example' # String | 

begin
  # Cancel an ad
  result = api_instance.delete_ad(ad_id)
  p result
rescue Zernio::ApiError => e
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
rescue Zernio::ApiError => e
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


## delete_conversion_destination

> delete_conversion_destination(account_id, destination_id, opts)

Soft-delete a conversion destination

LinkedIn-only today. LinkedIn does not expose hard-delete on conversion rules — what their UI calls \"delete\" is the same `enabled: false` flip we apply here. The rule remains fetchable via GET with `status: 'inactive'`; the unified discovery endpoint hides it by default.  `adAccountId` may be passed as a query parameter (recommended) or as a JSON body field for clients that can send DELETE bodies. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdsApi.new
account_id = 'account_id_example' # String | 
destination_id = 'destination_id_example' # String | 
opts = {
  ad_account_id: 'ad_account_id_example' # String | Required as query OR in JSON body.
}

begin
  # Soft-delete a conversion destination
  api_instance.delete_conversion_destination(account_id, destination_id, opts)
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->delete_conversion_destination: #{e}"
end
```

#### Using the delete_conversion_destination_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_conversion_destination_with_http_info(account_id, destination_id, opts)

```ruby
begin
  # Soft-delete a conversion destination
  data, status_code, headers = api_instance.delete_conversion_destination_with_http_info(account_id, destination_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->delete_conversion_destination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **destination_id** | **String** |  |  |
| **ad_account_id** | **String** | Required as query OR in JSON body. | [optional] |

### Return type

nil (empty response body)

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
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdsApi.new
ad_id = 'ad_id_example' # String | 

begin
  # Get ad details
  result = api_instance.get_ad(ad_id)
  p result
rescue Zernio::ApiError => e
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
rescue Zernio::ApiError => e
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

Returns detailed performance analytics for an ad. Includes summary metrics, a daily timeline over the requested date range, and optional demographic breakdowns (Meta and TikTok only). If no date range is provided, defaults to the last 90 days. Date range is capped at 730 days max. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdsApi.new
ad_id = 'ad_id_example' # String | 
opts = {
  from_date: Date.parse('2013-10-20'), # Date | Start of date range (YYYY-MM-DD). Defaults to 90 days ago.
  to_date: Date.parse('2013-10-20'), # Date | End of date range (YYYY-MM-DD). Defaults to today. Max 730-day range.
  breakdowns: 'breakdowns_example' # String | Comma-separated breakdown dimensions. Meta: age, gender, country, publisher_platform, device_platform, region. TikTok: gender, age, country_code, platform, ac, language.
}

begin
  # Get ad analytics
  result = api_instance.get_ad_analytics(ad_id, opts)
  p result
rescue Zernio::ApiError => e
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
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->get_ad_analytics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_id** | **String** |  |  |
| **from_date** | **Date** | Start of date range (YYYY-MM-DD). Defaults to 90 days ago. | [optional] |
| **to_date** | **Date** | End of date range (YYYY-MM-DD). Defaults to today. Max 730-day range. | [optional] |
| **breakdowns** | **String** | Comma-separated breakdown dimensions. Meta: age, gender, country, publisher_platform, device_platform, region. TikTok: gender, age, country_code, platform, ac, language. | [optional] |

### Return type

[**GetAdAnalytics200Response**](GetAdAnalytics200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ad_comments

> <GetAdComments200Response> get_ad_comments(ad_id, opts)

List comments on an ad

Returns comments on an ad's underlying creative post. Useful for moderating or analyzing engagement on dark posts (ad creatives that never went live organically), which the regular GET /v1/inbox/comments/{postId} endpoint cannot serve because dark posts are not in Zernio's post database.  Resolves the ad's creative effective_object_story_id (Facebook) or effective_instagram_media_id (Instagram) via the Marketing API on each call (cached in-process by the platform client), then fetches comments from the Graph API.  Meta-only. Other ad platforms (TikTok, LinkedIn, Pinterest, Google, X) do not expose a public per-ad comments API and return feature_not_available.  Requires the Ads add-on. Response shape matches GET /v1/inbox/comments/{postId}. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdsApi.new
ad_id = 'ad_id_example' # String | Internal Zernio ad ID (ObjectId).
opts = {
  limit: 56, # Integer | 
  cursor: 'cursor_example' # String | Pagination cursor from a previous response.
}

begin
  # List comments on an ad
  result = api_instance.get_ad_comments(ad_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->get_ad_comments: #{e}"
end
```

#### Using the get_ad_comments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAdComments200Response>, Integer, Hash)> get_ad_comments_with_http_info(ad_id, opts)

```ruby
begin
  # List comments on an ad
  data, status_code, headers = api_instance.get_ad_comments_with_http_info(ad_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAdComments200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->get_ad_comments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_id** | **String** | Internal Zernio ad ID (ObjectId). |  |
| **limit** | **Integer** |  | [optional][default to 25] |
| **cursor** | **String** | Pagination cursor from a previous response. | [optional] |

### Return type

[**GetAdComments200Response**](GetAdComments200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_conversion_destination

> <CreateConversionDestination201Response> get_conversion_destination(account_id, destination_id, ad_account_id)

Fetch a single conversion destination

LinkedIn-only today. Returns the full destination record for one conversion rule. The `adAccountId` query parameter is required because LinkedIn rules are scoped to a sponsored ad account. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdsApi.new
account_id = 'account_id_example' # String | 
destination_id = 'destination_id_example' # String | 
ad_account_id = 'ad_account_id_example' # String | Numeric ID or full `urn:li:sponsoredAccount:{id}` URN.

begin
  # Fetch a single conversion destination
  result = api_instance.get_conversion_destination(account_id, destination_id, ad_account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->get_conversion_destination: #{e}"
end
```

#### Using the get_conversion_destination_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateConversionDestination201Response>, Integer, Hash)> get_conversion_destination_with_http_info(account_id, destination_id, ad_account_id)

```ruby
begin
  # Fetch a single conversion destination
  data, status_code, headers = api_instance.get_conversion_destination_with_http_info(account_id, destination_id, ad_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateConversionDestination201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->get_conversion_destination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **destination_id** | **String** |  |  |
| **ad_account_id** | **String** | Numeric ID or full &#x60;urn:li:sponsoredAccount:{id}&#x60; URN. |  |

### Return type

[**CreateConversionDestination201Response**](CreateConversionDestination201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_conversion_metrics

> <GetConversionMetrics200Response> get_conversion_metrics(account_id, destination_id, ad_account_id, start_date, opts)

Fetch attribution metrics for a conversion destination

LinkedIn-only today. Returns conversion-attribution metrics (`externalWebsiteConversions`, `externalWebsitePostClickConversions`, `externalWebsitePostViewConversions`, `conversionValueInLocalCurrency`, `qualifiedLeads`, `costInLocalCurrency`) bucketed by date.  Date-range constraints (passed through from LinkedIn): - `granularity=DAILY` is retained for ~6 months only - `granularity=ALL` with a range > 6 months auto-rounds to month boundaries - `granularity=MONTHLY`/`YEARLY` retains 24 months  Throttle: LinkedIn caps adAnalytics at 45M metric values per 5-minute window across the calling token. Single-rule queries are well within that limit; surfaces as 429 if hit. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdsApi.new
account_id = 'account_id_example' # String | 
destination_id = 'destination_id_example' # String | 
ad_account_id = 'ad_account_id_example' # String | 
start_date = 'start_date_example' # String | 
opts = {
  end_date: 'end_date_example', # String | 
  granularity: 'ALL' # String | 
}

begin
  # Fetch attribution metrics for a conversion destination
  result = api_instance.get_conversion_metrics(account_id, destination_id, ad_account_id, start_date, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->get_conversion_metrics: #{e}"
end
```

#### Using the get_conversion_metrics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetConversionMetrics200Response>, Integer, Hash)> get_conversion_metrics_with_http_info(account_id, destination_id, ad_account_id, start_date, opts)

```ruby
begin
  # Fetch attribution metrics for a conversion destination
  data, status_code, headers = api_instance.get_conversion_metrics_with_http_info(account_id, destination_id, ad_account_id, start_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetConversionMetrics200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->get_conversion_metrics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **destination_id** | **String** |  |  |
| **ad_account_id** | **String** |  |  |
| **start_date** | **String** |  |  |
| **end_date** | **String** |  | [optional] |
| **granularity** | **String** |  | [optional][default to &#39;DAILY&#39;] |

### Return type

[**GetConversionMetrics200Response**](GetConversionMetrics200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tracking_tag

> <CreateTrackingTag201Response> get_tracking_tag(account_id, tag_id)

Fetch a single tracking tag (Meta Pixel)

Returns the full tag record including the base-code `code` snippet, `lastFiredTime`, `ownerBusinessId`, `isUnavailable`, etc. Meta only (platform `metaads`); other platforms return 405. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdsApi.new
account_id = 'account_id_example' # String | 
tag_id = 'tag_id_example' # String | Pixel id.

begin
  # Fetch a single tracking tag (Meta Pixel)
  result = api_instance.get_tracking_tag(account_id, tag_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->get_tracking_tag: #{e}"
end
```

#### Using the get_tracking_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTrackingTag201Response>, Integer, Hash)> get_tracking_tag_with_http_info(account_id, tag_id)

```ruby
begin
  # Fetch a single tracking tag (Meta Pixel)
  data, status_code, headers = api_instance.get_tracking_tag_with_http_info(account_id, tag_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTrackingTag201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->get_tracking_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **tag_id** | **String** | Pixel id. |  |

### Return type

[**CreateTrackingTag201Response**](CreateTrackingTag201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tracking_tag_stats

> <GetTrackingTagStats200Response> get_tracking_tag_stats(account_id, tag_id, opts)

Aggregated event stats for a tracking tag (Meta Pixel)

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

api_instance = Zernio::AdsApi.new
account_id = 'account_id_example' # String | 
tag_id = 'tag_id_example' # String | Pixel id.
opts = {
  aggregation: 'event', # String | Aggregation dimension. Defaults to `event`.
  start_time: 56, # Integer | Unix seconds lower bound.
  end_time: 56 # Integer | Unix seconds upper bound.
}

begin
  # Aggregated event stats for a tracking tag (Meta Pixel)
  result = api_instance.get_tracking_tag_stats(account_id, tag_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->get_tracking_tag_stats: #{e}"
end
```

#### Using the get_tracking_tag_stats_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTrackingTagStats200Response>, Integer, Hash)> get_tracking_tag_stats_with_http_info(account_id, tag_id, opts)

```ruby
begin
  # Aggregated event stats for a tracking tag (Meta Pixel)
  data, status_code, headers = api_instance.get_tracking_tag_stats_with_http_info(account_id, tag_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTrackingTagStats200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->get_tracking_tag_stats_with_http_info: #{e}"
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


## list_ad_accounts

> <ListAdAccounts200Response> list_ad_accounts(account_id, opts)

List ad accounts

Returns the platform ad accounts available for the given social account (e.g. Meta ad accounts, TikTok advertiser IDs, Google Ads customer IDs).  For TikTok agencies: enumerates every advertiser under every Business Center the token can read (paginated server-side), then chunks the lookup against TikTok's `/advertiser/info/` endpoint (which has a per-call cap of ≤100 IDs). Solo advertisers without a BC fall back to the OAuth-time `advertiser_ids` list. Cached for 1h on the SocialAccount; lazy-refreshed on first call after expiry. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdsApi.new
account_id = 'account_id_example' # String | Social account ID
opts = {
  ad_account_id: 'ad_account_id_example', # String | Filter response to a single platform ad account ID (e.g. `act_123` for Meta, advertiser_id for TikTok). Returns at most one item.
  limit: 56 # Integer | Clamp the returned `accounts[]` length. Useful for typeahead pickers on agency tokens with hundreds of advertisers.
}

begin
  # List ad accounts
  result = api_instance.list_ad_accounts(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->list_ad_accounts: #{e}"
end
```

#### Using the list_ad_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAdAccounts200Response>, Integer, Hash)> list_ad_accounts_with_http_info(account_id, opts)

```ruby
begin
  # List ad accounts
  data, status_code, headers = api_instance.list_ad_accounts_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAdAccounts200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->list_ad_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Social account ID |  |
| **ad_account_id** | **String** | Filter response to a single platform ad account ID (e.g. &#x60;act_123&#x60; for Meta, advertiser_id for TikTok). Returns at most one item. | [optional] |
| **limit** | **Integer** | Clamp the returned &#x60;accounts[]&#x60; length. Useful for typeahead pickers on agency tokens with hundreds of advertisers. | [optional] |

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

Returns a paginated list of ads with metrics computed over an optional date range. Use source=all to include externally-synced ads from platform ad managers. If no date range is provided, defaults to the last 90 days. Date range is capped at 730 days max. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdsApi.new
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
  from_date: Date.parse('2013-10-20'), # Date | Start of metrics date range (YYYY-MM-DD). Defaults to 90 days ago.
  to_date: Date.parse('2013-10-20') # Date | End of metrics date range (YYYY-MM-DD). Defaults to today. Max 730-day range.
}

begin
  # List ads
  result = api_instance.list_ads(opts)
  p result
rescue Zernio::ApiError => e
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
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->list_ads_with_http_info: #{e}"
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
| **from_date** | **Date** | Start of metrics date range (YYYY-MM-DD). Defaults to 90 days ago. | [optional] |
| **to_date** | **Date** | End of metrics date range (YYYY-MM-DD). Defaults to today. Max 730-day range. | [optional] |

### Return type

[**ListAds200Response**](ListAds200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ads_business_centers

> <ListAdsBusinessCenters200Response> list_ads_business_centers(account_id)

List TikTok Business Centers

Returns the TikTok Business Centers (BCs) the connected `tiktokads` account can read. Each BC reports its advertiser count so callers can build agency-style pickers without re-walking `/v1/ads/accounts` per BC.  TikTok-only. Solo advertisers (non-agency tokens) return an empty array. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdsApi.new
account_id = 'account_id_example' # String | ID of the `tiktokads` (or parent `tiktok` posting) SocialAccount

begin
  # List TikTok Business Centers
  result = api_instance.list_ads_business_centers(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->list_ads_business_centers: #{e}"
end
```

#### Using the list_ads_business_centers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAdsBusinessCenters200Response>, Integer, Hash)> list_ads_business_centers_with_http_info(account_id)

```ruby
begin
  # List TikTok Business Centers
  data, status_code, headers = api_instance.list_ads_business_centers_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAdsBusinessCenters200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->list_ads_business_centers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | ID of the &#x60;tiktokads&#x60; (or parent &#x60;tiktok&#x60; posting) SocialAccount |  |

### Return type

[**ListAdsBusinessCenters200Response**](ListAdsBusinessCenters200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_conversion_associations

> <ListConversionAssociations200Response> list_conversion_associations(account_id, destination_id, ad_account_id)

List campaigns associated with a conversion destination

LinkedIn-only today. Returns the campaigns currently associated with this conversion rule. Note that auto-association on rule creation runs once at create time; campaigns created after the rule still need explicit association. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdsApi.new
account_id = 'account_id_example' # String | 
destination_id = 'destination_id_example' # String | 
ad_account_id = 'ad_account_id_example' # String | 

begin
  # List campaigns associated with a conversion destination
  result = api_instance.list_conversion_associations(account_id, destination_id, ad_account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->list_conversion_associations: #{e}"
end
```

#### Using the list_conversion_associations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListConversionAssociations200Response>, Integer, Hash)> list_conversion_associations_with_http_info(account_id, destination_id, ad_account_id)

```ruby
begin
  # List campaigns associated with a conversion destination
  data, status_code, headers = api_instance.list_conversion_associations_with_http_info(account_id, destination_id, ad_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListConversionAssociations200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->list_conversion_associations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **destination_id** | **String** |  |  |
| **ad_account_id** | **String** |  |  |

### Return type

[**ListConversionAssociations200Response**](ListConversionAssociations200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_conversion_destinations

> <ListConversionDestinations200Response> list_conversion_destinations(account_id)

List destinations for the Conversions API

Returns the list of pixels (Meta), conversion actions (Google), or conversion rules (LinkedIn) accessible to the connected ads account. Use the returned `id` as `destinationId` when posting to `POST /v1/ads/conversions`.  For Google and LinkedIn, each destination's `type` reflects the conversion type (PURCHASE, LEAD, SIGN_UP, etc.) — the event type is locked to the destination. For Meta, `type` is absent: pixels accept any event name per request.  For LinkedIn, destinations are returned across every sponsored ad account the connected token can access; the `adAccountId` field on each destination identifies the parent ad account and is required for subsequent CRUD calls (update, delete, associations, metrics). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdsApi.new
account_id = 'account_id_example' # String | SocialAccount ID (metaads, googleads, or linkedinads).

begin
  # List destinations for the Conversions API
  result = api_instance.list_conversion_destinations(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->list_conversion_destinations: #{e}"
end
```

#### Using the list_conversion_destinations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListConversionDestinations200Response>, Integer, Hash)> list_conversion_destinations_with_http_info(account_id)

```ruby
begin
  # List destinations for the Conversions API
  data, status_code, headers = api_instance.list_conversion_destinations_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListConversionDestinations200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->list_conversion_destinations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | SocialAccount ID (metaads, googleads, or linkedinads). |  |

### Return type

[**ListConversionDestinations200Response**](ListConversionDestinations200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tracking_tag_shared_accounts

> <ListTrackingTagSharedAccounts200Response> list_tracking_tag_shared_accounts(account_id, tag_id)

List ad accounts a tracking tag is shared with

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

api_instance = Zernio::AdsApi.new
account_id = 'account_id_example' # String | 
tag_id = 'tag_id_example' # String | Pixel id.

begin
  # List ad accounts a tracking tag is shared with
  result = api_instance.list_tracking_tag_shared_accounts(account_id, tag_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->list_tracking_tag_shared_accounts: #{e}"
end
```

#### Using the list_tracking_tag_shared_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTrackingTagSharedAccounts200Response>, Integer, Hash)> list_tracking_tag_shared_accounts_with_http_info(account_id, tag_id)

```ruby
begin
  # List ad accounts a tracking tag is shared with
  data, status_code, headers = api_instance.list_tracking_tag_shared_accounts_with_http_info(account_id, tag_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTrackingTagSharedAccounts200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->list_tracking_tag_shared_accounts_with_http_info: #{e}"
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

List tracking tags (Meta Pixels)

Returns the tracking tags (Meta Pixels) the connected ads account can see. Pass `?adAccountId=act_...` to scope the list to a single ad account; omit it to list every pixel reachable by the token (the name is then suffixed with the ad account it was discovered on, for disambiguation). The list view omits `code` — call `getTrackingTag` for the install snippet and full detail.  Meta only today (platform `metaads`); other platforms return 405. The `accountId` must be the Meta *ads* SocialAccount created by the Ads add-on connect flow, not a Facebook/Instagram posting account. Get your `act_...` ids from `GET /v1/ads/accounts`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdsApi.new
account_id = 'account_id_example' # String | Meta ads SocialAccount id (platform `metaads`).
opts = {
  ad_account_id: 'ad_account_id_example' # String | Optional. Scope to one ad account, e.g. `act_123456789`.
}

begin
  # List tracking tags (Meta Pixels)
  result = api_instance.list_tracking_tags(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->list_tracking_tags: #{e}"
end
```

#### Using the list_tracking_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTrackingTags200Response>, Integer, Hash)> list_tracking_tags_with_http_info(account_id, opts)

```ruby
begin
  # List tracking tags (Meta Pixels)
  data, status_code, headers = api_instance.list_tracking_tags_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTrackingTags200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->list_tracking_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Meta ads SocialAccount id (platform &#x60;metaads&#x60;). |  |
| **ad_account_id** | **String** | Optional. Scope to one ad account, e.g. &#x60;act_123456789&#x60;. | [optional] |

### Return type

[**ListTrackingTags200Response**](ListTrackingTags200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_conversion_associations

> <RemoveConversionAssociations200Response> remove_conversion_associations(account_id, destination_id, ad_account_id, campaign_ids)

Remove campaign↔conversion associations

Remove one or more campaign associations from this conversion rule. Pass `adAccountId` and `campaignIds` as query parameters (`campaignIds` is comma-separated). The route also accepts a JSON body with the same fields for clients that prefer DELETE-with-body, but the documented surface is query-only because some SDK code generators (e.g. Python) collapse query + body parameters with the same name into a single kwarg. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdsApi.new
account_id = 'account_id_example' # String | 
destination_id = 'destination_id_example' # String | 
ad_account_id = 'ad_account_id_example' # String | 
campaign_ids = 'campaign_ids_example' # String | Comma-separated list of campaign IDs.

begin
  # Remove campaign↔conversion associations
  result = api_instance.remove_conversion_associations(account_id, destination_id, ad_account_id, campaign_ids)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->remove_conversion_associations: #{e}"
end
```

#### Using the remove_conversion_associations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoveConversionAssociations200Response>, Integer, Hash)> remove_conversion_associations_with_http_info(account_id, destination_id, ad_account_id, campaign_ids)

```ruby
begin
  # Remove campaign↔conversion associations
  data, status_code, headers = api_instance.remove_conversion_associations_with_http_info(account_id, destination_id, ad_account_id, campaign_ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoveConversionAssociations200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->remove_conversion_associations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **destination_id** | **String** |  |  |
| **ad_account_id** | **String** |  |  |
| **campaign_ids** | **String** | Comma-separated list of campaign IDs. |  |

### Return type

[**RemoveConversionAssociations200Response**](RemoveConversionAssociations200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_tracking_tag_shared_account

> remove_tracking_tag_shared_account(account_id, tag_id, opts)

Stop sharing a tracking tag with an ad account

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

api_instance = Zernio::AdsApi.new
account_id = 'account_id_example' # String | 
tag_id = 'tag_id_example' # String | Pixel id.
opts = {
  ad_account_id: 'ad_account_id_example' # String | Ad account to unshare, e.g. `act_123456789`. May also be sent in the JSON body.
}

begin
  # Stop sharing a tracking tag with an ad account
  api_instance.remove_tracking_tag_shared_account(account_id, tag_id, opts)
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->remove_tracking_tag_shared_account: #{e}"
end
```

#### Using the remove_tracking_tag_shared_account_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> remove_tracking_tag_shared_account_with_http_info(account_id, tag_id, opts)

```ruby
begin
  # Stop sharing a tracking tag with an ad account
  data, status_code, headers = api_instance.remove_tracking_tag_shared_account_with_http_info(account_id, tag_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->remove_tracking_tag_shared_account_with_http_info: #{e}"
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


## search_ad_interests

> <SearchAdInterests200Response> search_ad_interests(q, account_id)

Search targeting interests

Search for interest-based targeting options available on the platform.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdsApi.new
q = 'q_example' # String | Search query
account_id = 'account_id_example' # String | Social account ID

begin
  # Search targeting interests
  result = api_instance.search_ad_interests(q, account_id)
  p result
rescue Zernio::ApiError => e
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
rescue Zernio::ApiError => e
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


## search_ad_targeting_locations

> <SearchAdTargetingLocations200Response> search_ad_targeting_locations(account_id, q, opts)

Search geo targeting locations (Meta)

Resolve a human-readable location name into Meta's opaque `key` used in `targeting.cities[]` / `targeting.regions[]` on `POST /v1/ads/create` (and the same fields under `targeting.geo_locations` on `POST /v1/ads/boost`). Wraps Meta's `/search?type=adgeolocation` endpoint.  Meta-only for now. Other platforms have their own location id systems and are not exposed here.  Per Meta's docs, `q` must contain only the locality name (e.g. `\"Amsterdam\"`, not `\"Amsterdam, NL\"`). Use `countryCode` to disambiguate when the same name exists in multiple countries. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdsApi.new
account_id = 'account_id_example' # String | Social account ID (must be a connected Facebook or Instagram account).
q = 'q_example' # String | Location name. Locality only — no region/country suffix.
opts = {
  type: 'country', # String | Type of location to search. Defaults to city.
  country_code: 'country_code_example', # String | ISO 3166-1 alpha-2 country code (e.g. NL) to scope the search.
  limit: 56 # Integer | Maximum results to return.
}

begin
  # Search geo targeting locations (Meta)
  result = api_instance.search_ad_targeting_locations(account_id, q, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->search_ad_targeting_locations: #{e}"
end
```

#### Using the search_ad_targeting_locations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchAdTargetingLocations200Response>, Integer, Hash)> search_ad_targeting_locations_with_http_info(account_id, q, opts)

```ruby
begin
  # Search geo targeting locations (Meta)
  data, status_code, headers = api_instance.search_ad_targeting_locations_with_http_info(account_id, q, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchAdTargetingLocations200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->search_ad_targeting_locations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Social account ID (must be a connected Facebook or Instagram account). |  |
| **q** | **String** | Location name. Locality only — no region/country suffix. |  |
| **type** | **String** | Type of location to search. Defaults to city. | [optional][default to &#39;city&#39;] |
| **country_code** | **String** | ISO 3166-1 alpha-2 country code (e.g. NL) to scope the search. | [optional] |
| **limit** | **Integer** | Maximum results to return. | [optional][default to 25] |

### Return type

[**SearchAdTargetingLocations200Response**](SearchAdTargetingLocations200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## send_conversions

> <SendConversions200Response> send_conversions(send_conversions_request)

Send conversion events to an ad platform

Relay one or more conversion events to the target ad platform's native Conversions API. Supported platforms: Meta (metaads) via Graph API, Google Ads (googleads) via Data Manager API `ingestEvents`, LinkedIn (linkedinads) via `/rest/conversionEvents`.  Platform is inferred from the provided `accountId`. `destinationId` semantics differ per platform: - Meta: pixel (dataset) ID, e.g. \"123456789012345\" - Google: conversion action resource name, e.g.   \"customers/1234567890/conversionActions/987654321\" - LinkedIn: conversion rule ID or URN, e.g. \"104012\" or   \"urn:lla:llaPartnerConversion:104012\"  Callers can list valid destinations via `GET /v1/accounts/{accountId}/conversion-destinations`.  All PII (email, phone, names, external IDs) is hashed with SHA-256 server-side per each platform's normalization spec (including Google's Gmail-specific dot/plus-suffix stripping). Send plaintext. Note: LinkedIn `externalIds` are passed through as plaintext per LinkedIn's spec — only emails and phones are hashed.  Requires the Ads add-on. For LinkedIn, the connected account must have been authorized after the Conversions API rollout (i.e. the OAuth grant must include `rw_conversions`); older accounts must reconnect.  Batching: Meta caps at 1000 events per request and rejects the entire batch if any event is malformed. Google caps at 2000. LinkedIn caps at 5000 and is also all-or-nothing per chunk. All three are handled automatically.  Dedup: pass a stable `eventId` on every event. Meta and LinkedIn use it to dedupe against browser-side pixel/Insight Tag events; Google maps it to transactionId.  Per-platform `eventName` semantics: - Meta: free-form. Standard names (Purchase, Lead, ...) match Meta's   built-in events; custom strings are accepted. - Google: ignored — the conversion action's category determines the   event type. Send the standard name closest to your action for   documentation, but the platform will not branch on it. - LinkedIn: ignored — the conversion rule's `type` (LEAD, PURCHASE,   etc.) is locked to the destination at rule-creation time. Send the   standard name for documentation; LinkedIn does not branch on it. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdsApi.new
send_conversions_request = Zernio::SendConversionsRequest.new({account_id: 'account_id_example', destination_id: 'destination_id_example', events: [Zernio::ConversionEvent.new({event_name: 'Purchase', event_time: 1744732800, event_id: 'order_abc_123', user: Zernio::ConversionEventUser.new})]}) # SendConversionsRequest | 

begin
  # Send conversion events to an ad platform
  result = api_instance.send_conversions(send_conversions_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->send_conversions: #{e}"
end
```

#### Using the send_conversions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendConversions200Response>, Integer, Hash)> send_conversions_with_http_info(send_conversions_request)

```ruby
begin
  # Send conversion events to an ad platform
  data, status_code, headers = api_instance.send_conversions_with_http_info(send_conversions_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendConversions200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->send_conversions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **send_conversions_request** | [**SendConversionsRequest**](SendConversionsRequest.md) |  |  |

### Return type

[**SendConversions200Response**](SendConversions200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_whats_app_conversion

> <SendWhatsAppConversion200Response> send_whats_app_conversion(send_whats_app_conversion_request)

Send WhatsApp conversion event

Forward a WhatsApp Business Messaging conversion event (`LeadSubmitted`, `Purchase`, `AddToCart`, `InitiateCheckout`, `ViewContent`) to Meta's Conversions API with `action_source = business_messaging` and `messaging_channel = whatsapp`. The endpoint looks up the originating CTWA click ID (`ctwa_clid`) captured on the first inbound message of the conversation and replays it on every event so Meta can attribute the conversion back to the Click-to-WhatsApp ad that drove the chat.  Configuration prerequisites on the WhatsApp account metadata:   - `metaCapiDatasetId`: the Meta Pixel/Dataset ID linked to the WABA.   - `connectedFacebookPageId`: the Facebook Page paired with the     WhatsApp Business number.  Identify the conversation by either `conversationId` (preferred) or `phoneE164` (digits only, no `+`). At least one is required. If the conversation has no captured `ctwa_clid`, the request returns 422 because there is nothing to attribute.  Token and dataset coupling: the WhatsApp account's accessToken must have access to the configured `metaCapiDatasetId`. By default a WABA's system-user token is scoped to the WABA's own Business Manager and cannot post to a pixel owned by a different Business; Meta returns code 100 in that case. Either share the dataset with the WhatsApp app's Business in BM, or use a dataset already in the same Business as the WABA. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdsApi.new
send_whats_app_conversion_request = Zernio::SendWhatsAppConversionRequest.new({account_id: 'account_id_example', event_name: 'LeadSubmitted', event_id: 'event_id_example'}) # SendWhatsAppConversionRequest | 

begin
  # Send WhatsApp conversion event
  result = api_instance.send_whats_app_conversion(send_whats_app_conversion_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->send_whats_app_conversion: #{e}"
end
```

#### Using the send_whats_app_conversion_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendWhatsAppConversion200Response>, Integer, Hash)> send_whats_app_conversion_with_http_info(send_whats_app_conversion_request)

```ruby
begin
  # Send WhatsApp conversion event
  data, status_code, headers = api_instance.send_whats_app_conversion_with_http_info(send_whats_app_conversion_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendWhatsAppConversion200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->send_whats_app_conversion_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **send_whats_app_conversion_request** | [**SendWhatsAppConversionRequest**](SendWhatsAppConversionRequest.md) |  |  |

### Return type

[**SendWhatsAppConversion200Response**](SendWhatsAppConversion200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_ad

> <UpdateAd200Response> update_ad(ad_id, update_ad_request)

Update ad

Patch one or more fields on an ad. Status, budget, targeting, and creative changes are propagated to the platform.  Per-platform support: - **Meta** (Facebook + Instagram): all fields supported. - **TikTok**: status, budget, targeting (via `/v2/adgroup/update/`), and creative   (via `/v2/ad/update/` patch-style — `headline` is ignored, `body` becomes `ad_text`). - **Pinterest / X / LinkedIn / Google**: status + budget only. Sending `targeting`   or `creative` returns 501 with code `unsupported_platform_operation`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdsApi.new
ad_id = 'ad_id_example' # String | 
update_ad_request = Zernio::UpdateAdRequest.new # UpdateAdRequest | 

begin
  # Update ad
  result = api_instance.update_ad(ad_id, update_ad_request)
  p result
rescue Zernio::ApiError => e
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
rescue Zernio::ApiError => e
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


## update_conversion_destination

> <CreateConversionDestination201Response> update_conversion_destination(account_id, destination_id, update_conversion_destination_request)

Update a conversion destination

Partial-update a conversion rule. LinkedIn-only today. Whitelisted fields: `name`, `enabled`, attribution windows, `valueType`, `value`, `attributionType`. The rule's `type` and parent ad account are intentionally not exposed for update — recreate the rule if those need to change. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdsApi.new
account_id = 'account_id_example' # String | 
destination_id = 'destination_id_example' # String | 
update_conversion_destination_request = Zernio::UpdateConversionDestinationRequest.new({ad_account_id: 'ad_account_id_example'}) # UpdateConversionDestinationRequest | 

begin
  # Update a conversion destination
  result = api_instance.update_conversion_destination(account_id, destination_id, update_conversion_destination_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->update_conversion_destination: #{e}"
end
```

#### Using the update_conversion_destination_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateConversionDestination201Response>, Integer, Hash)> update_conversion_destination_with_http_info(account_id, destination_id, update_conversion_destination_request)

```ruby
begin
  # Update a conversion destination
  data, status_code, headers = api_instance.update_conversion_destination_with_http_info(account_id, destination_id, update_conversion_destination_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateConversionDestination201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->update_conversion_destination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **destination_id** | **String** |  |  |
| **update_conversion_destination_request** | [**UpdateConversionDestinationRequest**](UpdateConversionDestinationRequest.md) |  |  |

### Return type

[**CreateConversionDestination201Response**](CreateConversionDestination201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_tracking_tag

> <CreateTrackingTag201Response> update_tracking_tag(account_id, tag_id, update_tracking_tag_request)

Update a tracking tag (Meta Pixel)

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

api_instance = Zernio::AdsApi.new
account_id = 'account_id_example' # String | 
tag_id = 'tag_id_example' # String | Pixel id.
update_tracking_tag_request = Zernio::UpdateTrackingTagRequest.new # UpdateTrackingTagRequest | 

begin
  # Update a tracking tag (Meta Pixel)
  result = api_instance.update_tracking_tag(account_id, tag_id, update_tracking_tag_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->update_tracking_tag: #{e}"
end
```

#### Using the update_tracking_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTrackingTag201Response>, Integer, Hash)> update_tracking_tag_with_http_info(account_id, tag_id, update_tracking_tag_request)

```ruby
begin
  # Update a tracking tag (Meta Pixel)
  data, status_code, headers = api_instance.update_tracking_tag_with_http_info(account_id, tag_id, update_tracking_tag_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTrackingTag201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->update_tracking_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **tag_id** | **String** | Pixel id. |  |
| **update_tracking_tag_request** | [**UpdateTrackingTagRequest**](UpdateTrackingTagRequest.md) |  |  |

### Return type

[**CreateTrackingTag201Response**](CreateTrackingTag201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

