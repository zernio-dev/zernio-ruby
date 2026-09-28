# Zernio::TrackingTagsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_tracking_tag_shared_account**](TrackingTagsApi.md#add_tracking_tag_shared_account) | **POST** /v1/accounts/{accountId}/tracking-tags/{tagId}/shared-accounts | Share with an ad account |
| [**assign_tracking_tag_user**](TrackingTagsApi.md#assign_tracking_tag_user) | **POST** /v1/accounts/{accountId}/tracking-tags/{tagId}/users | Assign a user to a tag |
| [**create_tracking_tag**](TrackingTagsApi.md#create_tracking_tag) | **POST** /v1/accounts/{accountId}/tracking-tags | Create a tracking tag |
| [**create_tracking_tag_event**](TrackingTagsApi.md#create_tracking_tag_event) | **POST** /v1/accounts/{accountId}/tracking-tags/{tagId}/events | Create a conversion event |
| [**delete_tracking_tag_event**](TrackingTagsApi.md#delete_tracking_tag_event) | **DELETE** /v1/accounts/{accountId}/tracking-tags/{tagId}/events/{eventId} | Delete a conversion event |
| [**get_ad_tracking_tags**](TrackingTagsApi.md#get_ad_tracking_tags) | **GET** /v1/ads/{adId}/tracking-tags | Get ad tracking tags |
| [**get_tracking_tag**](TrackingTagsApi.md#get_tracking_tag) | **GET** /v1/accounts/{accountId}/tracking-tags/{tagId} | Get a tracking tag |
| [**get_tracking_tag_diagnostics**](TrackingTagsApi.md#get_tracking_tag_diagnostics) | **GET** /v1/accounts/{accountId}/tracking-tags/{tagId}/diagnostics | Get tag diagnostics |
| [**get_tracking_tag_stats**](TrackingTagsApi.md#get_tracking_tag_stats) | **GET** /v1/accounts/{accountId}/tracking-tags/{tagId}/stats | Get aggregated event stats |
| [**get_tracking_tag_store_install**](TrackingTagsApi.md#get_tracking_tag_store_install) | **GET** /v1/accounts/{accountId}/tracking-tags/{tagId}/install | Get store install status |
| [**install_tracking_tag_on_store**](TrackingTagsApi.md#install_tracking_tag_on_store) | **POST** /v1/accounts/{accountId}/tracking-tags/{tagId}/install | Install on a Shopify store or WordPress site |
| [**list_tracking_tag_events**](TrackingTagsApi.md#list_tracking_tag_events) | **GET** /v1/accounts/{accountId}/tracking-tags/{tagId}/events | List conversion events |
| [**list_tracking_tag_partners**](TrackingTagsApi.md#list_tracking_tag_partners) | **GET** /v1/accounts/{accountId}/tracking-tags/{tagId}/partners | List partner businesses of a tag |
| [**list_tracking_tag_shared_accounts**](TrackingTagsApi.md#list_tracking_tag_shared_accounts) | **GET** /v1/accounts/{accountId}/tracking-tags/{tagId}/shared-accounts | List accounts it is shared with |
| [**list_tracking_tag_users**](TrackingTagsApi.md#list_tracking_tag_users) | **GET** /v1/accounts/{accountId}/tracking-tags/{tagId}/users | List tag users |
| [**list_tracking_tags**](TrackingTagsApi.md#list_tracking_tags) | **GET** /v1/accounts/{accountId}/tracking-tags | List tracking tags |
| [**remove_tracking_tag_from_store**](TrackingTagsApi.md#remove_tracking_tag_from_store) | **DELETE** /v1/accounts/{accountId}/tracking-tags/{tagId}/install | Remove from a Shopify store or WordPress site |
| [**remove_tracking_tag_shared_account**](TrackingTagsApi.md#remove_tracking_tag_shared_account) | **DELETE** /v1/accounts/{accountId}/tracking-tags/{tagId}/shared-accounts | Stop sharing with an account |
| [**remove_tracking_tag_user**](TrackingTagsApi.md#remove_tracking_tag_user) | **DELETE** /v1/accounts/{accountId}/tracking-tags/{tagId}/users/{userId} | Remove a user from a tag |
| [**update_ad_tracking_tags**](TrackingTagsApi.md#update_ad_tracking_tags) | **PATCH** /v1/ads/{adId}/tracking-tags | Set ad tracking tags |
| [**update_tracking_tag**](TrackingTagsApi.md#update_tracking_tag) | **PATCH** /v1/accounts/{accountId}/tracking-tags/{tagId} | Update a tracking tag |
| [**update_tracking_tag_event**](TrackingTagsApi.md#update_tracking_tag_event) | **PATCH** /v1/accounts/{accountId}/tracking-tags/{tagId}/events/{eventId} | Update a conversion event |


## add_tracking_tag_shared_account

> <AddTrackingTagSharedAccount201Response> add_tracking_tag_shared_account(account_id, tag_id, add_tracking_tag_shared_account_request)

Share with an ad account

Shares the pixel with another ad account so campaigns/audiences in that account can use it. Requires that you administer both the pixel's owning Business Manager and the target ad account; a pixel on a personal (non-BM) ad account can't be shared (Meta will reject the call). Meta and LinkedIn; other platforms return 501.  LinkedIn (`linkedinads`): grants `USE_ONLY` access from the ad account that created the tag, so the target can use the tag and its conversions but cannot edit or reshare it. `adAccountId` is the numeric LinkedIn ad account id. An ad account uses one Insight Tag at a time, so a target that already has one answers 400. 

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


## assign_tracking_tag_user

> <AssignTrackingTagUser200Response> assign_tracking_tag_user(account_id, tag_id, assign_tracking_tag_user_request)

Assign a user to a tag

Gives a user of the owning business access to the tag. Assigning an already assigned user replaces their task set.  Meta: `tasks` are `AA_ANALYZE`, `ADVERTISE`, `ANALYZE`, `EDIT`, `UPLOAD`; `userId` is the business-scoped id from `GET /v1/ads/businesses/users`. A pixel on a personal ad account answers 400. Needs `business_management` like the list. 

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
tag_id = 'tag_id_example' # String | Tag id (`TrackingTag.id`).
assign_tracking_tag_user_request = Zernio::AssignTrackingTagUserRequest.new({user_id: 'user_id_example', tasks: ['tasks_example']}) # AssignTrackingTagUserRequest | 

begin
  # Assign a user to a tag
  result = api_instance.assign_tracking_tag_user(account_id, tag_id, assign_tracking_tag_user_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->assign_tracking_tag_user: #{e}"
end
```

#### Using the assign_tracking_tag_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssignTrackingTagUser200Response>, Integer, Hash)> assign_tracking_tag_user_with_http_info(account_id, tag_id, assign_tracking_tag_user_request)

```ruby
begin
  # Assign a user to a tag
  data, status_code, headers = api_instance.assign_tracking_tag_user_with_http_info(account_id, tag_id, assign_tracking_tag_user_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssignTrackingTagUser200Response>
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->assign_tracking_tag_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **tag_id** | **String** | Tag id (&#x60;TrackingTag.id&#x60;). |  |
| **assign_tracking_tag_user_request** | [**AssignTrackingTagUserRequest**](AssignTrackingTagUserRequest.md) |  |  |

### Return type

[**AssignTrackingTagUser200Response**](AssignTrackingTagUser200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_tracking_tag

> <CreateTrackingTag201Response> create_tracking_tag(account_id, create_tracking_tag_request)

Create a tracking tag

Meta: creates a Meta Pixel on the given ad account (`POST /act_{id}/adspixels`, where `name` is the only input). Returns the created tag including its install `code`. The pixel is owned by the Business Manager that owns the ad account; a pixel created on a personal (non-BM) ad account ends up with `ownerBusinessId: null` and can't be shared with other ad accounts.  Creating a Meta pixel does NOT install it. Install the returned `code` snippet on the site, or send events server-side via `POST /v1/ads/conversions`. The check `installed` is derived from `lastFiredTime`.  OpenAI Ads: creates an OpenAI pixel AND provisions a Conversions API key for it in the same call (`adAccountId` is required by this endpoint but ignored: one API key maps to exactly one ad account, so there's nothing to select). Returns 422 (`FEATURE_NOT_AVAILABLE`) if the ad account isn't enabled for pixel management; contact your OpenAI partner representative to enable it. There is no delete API for OpenAI pixels. If the pixel is created but the Conversions API key provisioning then fails, the pixel is left live on OpenAI (it cannot be cleaned up) and the error message names the surviving pixel id and warns against retrying, since a retry would create a second, orphaned pixel.  NOT idempotent on either platform: each call creates a new pixel (and, for OpenAI, a new Conversions API key plus, with `defaultEventType`, a new conversion event setting). Do not retry blindly on timeout. Meta (platform `metaads`) and OpenAI Ads (platform `openaiads`); other platforms return 501.  LinkedIn (`linkedinads`): creates the ad account's Insight Tag (`POST /rest/insightTags`). Idempotent: an ad account holds at most one Insight Tag, so when it already has one that tag is returned and nothing is created. `name` is ignored (LinkedIn tags have no name) and there is no API to delete an Insight Tag.  Pinterest (platform `pinterestads`): creates a Pinterest tag on the numeric ad account `adAccountId` (`POST /v5/ad_accounts/{id}/conversion_tags`). Returns the tag with Pinterest's `code` snippet. `automaticMatchingFields` switches on automatic enhanced match for those fields. NOT idempotent and Pinterest has no dry-run and no delete for tags (DELETE on `conversion_tags/{id}` answers 405), so never retry blindly: list first.  Google Ads (`googleads`): every Google Ads account has exactly one Google tag (`AW-...`), so this is idempotent. `adAccountId` is the 10-digit customer id. When the account already tracks conversions the existing tag is returned (201) and nothing is created. Otherwise a first WEBPAGE conversion action named `name` (category DEFAULT) is created, which is what switches Google's conversion tracking on, and the tag is returned with it as its first event. 

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


## create_tracking_tag_event

> <CreateTrackingTagEvent201Response> create_tracking_tag_event(account_id, tag_id, create_tracking_tag_event_request)

Create a conversion event

Creates a conversion event tied to the tag. Pass the platform's own event type in `type` (e.g. Google `PURCHASE`, LinkedIn `ADD_TO_CART`, X `CHECKOUT_INITIATED`) or a neutral `siteEvent` the platform maps to its closest type. Each platform stores a subset of the optional fields; sending one it does not store answers 400 naming the supported fields. NOT idempotent unless noted per platform: do not retry blindly.  OpenAI Ads: creates a conversion event setting on the pixel (`POST /conversions/event_settings`, source = the pixel). Accepts `name`, `type` and `siteEvent` only. `type` is a standard event (`order_created`, `lead_created`, `items_added`, `contents_viewed`, `checkout_started`, `registration_completed`, `subscription_created`, `trial_started`, `appointment_scheduled`, `page_viewed`, `app_installed`, `app_opened`) or, for anything else, the custom event name itself (1 to 64 letters, digits, underscores or dashes; stored lowercase). `siteEvent` maps `search` and `add_payment_info` to the custom events `search` and `addpaymentinfo`, the names Zernio's Shopify pixel sends. The click attribution window is 30 days, the only value OpenAI documents. Only standard events can be a conversions campaign's optimization goal.  LinkedIn (`linkedinads`): creates an event-specific Insight Tag conversion rule (no URL match rules), the kind a page or the Shopify pixel fires by id. `type` is a LinkedIn conversion type (e.g. `PURCHASE`, `ADD_TO_CART`, `START_CHECKOUT`, `LEAD`); `siteEvent` maps to `KEY_PAGE_VIEW`, `VIEW_CONTENT`, `ADD_TO_CART`, `SEARCH`, `START_CHECKOUT`, `ADD_BILLING_INFO` or `PURCHASE`. `defaultValue` needs `currency` (the ad account currency) and is a fallback: a value sent with the event wins. Click and view windows are in days (LinkedIn validates them: the docs list 1, 7 and 30, and rules with 90 exist). Stores name, type, siteEvent, enabled, defaultValue, currency, clickWindowDays, viewWindowDays. Not idempotent.  Meta: creates a custom conversion on `adAccountId` (default: the pixel's owner ad account). Accepts `name`, `type` (Meta `custom_event_type`: `PURCHASE`, `LEAD`, `ADD_TO_CART`, `COMPLETE_REGISTRATION`, `OTHER`...), `siteEvent`, `urlContains` and `defaultValue` (in the ad account currency). The rule matches the standard event of `siteEvent` (or of `type`), plus `urlContains` when given; `urlContains` alone matches page views on that URL. `type: OTHER` needs `siteEvent` or `urlContains`. Idempotent by name: an active conversion with the same name on this pixel is returned instead of a duplicate. Meta caps custom conversions per ad account; the cap answers 400.  Google Ads (`googleads`): creates a WEBPAGE conversion action. `type` is a ConversionActionCategory (e.g. `PURCHASE`, `SIGNUP`, `DEFAULT`); `siteEvent` maps page_view, add_to_cart, initiate_checkout and purchase, while view_content, search and add_payment_info answer 400 (Google has no category for them). Stored fields: name, type, defaultValue, currency, alwaysUseDefaultValue, clickWindowDays (1 to 90), viewWindowDays (1 to 30), primary, countingType, enabled. Actions are created enabled (`enabled: false` answers 400); Google blocks the HIDDEN status on WEBPAGE actions. Names are unique per account, so a replay answers 400 (DUPLICATE_NAME) instead of creating a second one.  Pinterest (platform `pinterestads`): creates an advertiser defined event on the tag's ad account. Fields: `name` (1-100 letters, digits, `_` or `-`, case-insensitive, max 15 per ad account) and `type` (one of Pinterest's optimizable types: SIGNUP, ADD_TO_CART, LEAD, CHECKOUT, SUBSCRIBE, ADD_TO_WISHLIST, ADD_PAYMENT_INFO, INITIATE_CHECKOUT, CONTACT, CUSTOMIZE_PRODUCT, FIND_LOCATION, SCHEDULE, SUBMIT_APPLICATION, START_TRIAL, PAGE_VISIT, VIEW_CATEGORY, VIEW_CONTENT, SEARCH, WATCH_VIDEO) or `siteEvent`. A duplicate name answers 400. 

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
tag_id = 'tag_id_example' # String | Tag id (`TrackingTag.id`).
create_tracking_tag_event_request = Zernio::CreateTrackingTagEventRequest.new({name: 'name_example'}) # CreateTrackingTagEventRequest | 

begin
  # Create a conversion event
  result = api_instance.create_tracking_tag_event(account_id, tag_id, create_tracking_tag_event_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->create_tracking_tag_event: #{e}"
end
```

#### Using the create_tracking_tag_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTrackingTagEvent201Response>, Integer, Hash)> create_tracking_tag_event_with_http_info(account_id, tag_id, create_tracking_tag_event_request)

```ruby
begin
  # Create a conversion event
  data, status_code, headers = api_instance.create_tracking_tag_event_with_http_info(account_id, tag_id, create_tracking_tag_event_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTrackingTagEvent201Response>
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->create_tracking_tag_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **tag_id** | **String** | Tag id (&#x60;TrackingTag.id&#x60;). |  |
| **create_tracking_tag_event_request** | [**CreateTrackingTagEventRequest**](CreateTrackingTagEventRequest.md) |  |  |

### Return type

[**CreateTrackingTagEvent201Response**](CreateTrackingTagEvent201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_tracking_tag_event

> <DeleteTrackingTagEvent200Response> delete_tracking_tag_event(account_id, tag_id, event_id, opts)

Delete a conversion event

Removes the conversion event. Platforms without a hard delete archive or disable it instead; `state` in the response says which (`deleted`, `archived`, `disabled`).  OpenAI Ads answers 501: there is no delete or archive route for event settings (`DELETE /v1/conversions/event_settings/{id}` and `POST .../{id}/archive` answer 404 \"Invalid URL\"). Archive the event in OpenAI Ads Manager.  LinkedIn (`linkedinads`): LinkedIn has no delete for conversion rules (not in the conversion-tracking API, and `DELETE /rest/conversions/{id}` has no route), so the rule is disabled (`enabled: false`) and `state` is `disabled`. Re-enable it with `enabled: true`.  Meta: `archived`. Meta's delete archives the custom conversion (it stays readable with `status: archived`) and there is no hard delete; deleting an archived one is a no-op.  Google Ads (`googleads`): removes the conversion action (state `archived`). Google keeps it with status REMOVED and its history; PATCH with `enabled: true` restores it. Deleting an already archived action succeeds without a call to Google.  Pinterest (platform `pinterestads`): stops Pinterest tracking the event name (`state: disabled`); Pinterest keeps the event's history. 

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
tag_id = 'tag_id_example' # String | 
event_id = 'event_id_example' # String | Event id (`TrackingTagEvent.id`).
opts = {
  ad_account_id: 'ad_account_id_example' # String | Scopes the lookup on platforms whose tag ids live inside an ad account.
}

begin
  # Delete a conversion event
  result = api_instance.delete_tracking_tag_event(account_id, tag_id, event_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->delete_tracking_tag_event: #{e}"
end
```

#### Using the delete_tracking_tag_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteTrackingTagEvent200Response>, Integer, Hash)> delete_tracking_tag_event_with_http_info(account_id, tag_id, event_id, opts)

```ruby
begin
  # Delete a conversion event
  data, status_code, headers = api_instance.delete_tracking_tag_event_with_http_info(account_id, tag_id, event_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteTrackingTagEvent200Response>
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->delete_tracking_tag_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **tag_id** | **String** |  |  |
| **event_id** | **String** | Event id (&#x60;TrackingTagEvent.id&#x60;). |  |
| **ad_account_id** | **String** | Scopes the lookup on platforms whose tag ids live inside an ad account. | [optional] |

### Return type

[**DeleteTrackingTagEvent200Response**](DeleteTrackingTagEvent200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ad_tracking_tags

> <GetAdTrackingTags200Response> get_ad_tracking_tags(ad_id)

Get ad tracking tags

Unified read of the platform's native click-URL tracking params. - Meta (facebook/instagram): the creative's `url_tags` (and template_url_spec). - Google (googleads): the campaign's `trackingUrlTemplate` + `finalUrlSuffix`. - LinkedIn (linkedinads): the campaign's Dynamic UTM `dynamicValueParameters` + `customValueParameters`. Returns 405 for platforms without a click-URL tracking surface (TikTok, X, Pinterest).  **Not pixels.** Despite the shared path segment, this endpoint has nothing to do with measurement tags. For an ad account's pixels use `GET /v1/accounts/{accountId}/tracking-tags?adAccountId=act_...` (Meta Pixels, with `kind` and `ownerAdAccountId`) or `GET /v1/accounts/{accountId}/conversion-destinations`. 

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

> <GetTrackingTag200Response> get_tracking_tag(account_id, tag_id, opts)

Get a tracking tag

Returns the full tag record including the base-code `code` snippet, `lastFiredTime`, `ownerBusinessId`, `isUnavailable`, etc. Meta only (platform `metaads`); other platforms return 501.  OpenAI Ads (`openaiads`): `tagId` is the pixel's API id (`cds_...`) or its `pixel_id`. OpenAI documents no single-pixel read, so the tag is resolved from the pixel list; the response adds `code` (the official `oaiq` base code plus `page_viewed`) and `events` (the conversion event settings whose source is this pixel). `siteTagId` is the `pixel_id` the site and the Conversions API send; `id` is what event settings reference.  LinkedIn (`linkedinads`): `code` is LinkedIn's base code, `lastFiredTime` is the most recent callback across the tag's domains (unix seconds, null when it never fired) and `events` lists the ad account's conversion rules. `siteEvent` and `siteEventId` are set only on rules a page can fire (event-specific Insight Tag rules: not Conversions API rules, no URL match rules). `adAccountId` picks which ad account's rules to read; it defaults to the account that created the tag.  Pinterest (platform `pinterestads`): returns the tag with Pinterest's own `code` snippet and `lastFiredTime`. Without `adAccountId` Zernio finds the ad account that owns the tag (404 when no readable ad account holds it). 

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
tag_id = 'tag_id_example' # String | Tag id (`TrackingTag.id`).
opts = {
  ad_account_id: 'ad_account_id_example' # String | Scopes the lookup on platforms whose tag ids live inside an ad account. Ignored elsewhere.
}

begin
  # Get a tracking tag
  result = api_instance.get_tracking_tag(account_id, tag_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->get_tracking_tag: #{e}"
end
```

#### Using the get_tracking_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTrackingTag200Response>, Integer, Hash)> get_tracking_tag_with_http_info(account_id, tag_id, opts)

```ruby
begin
  # Get a tracking tag
  data, status_code, headers = api_instance.get_tracking_tag_with_http_info(account_id, tag_id, opts)
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
| **tag_id** | **String** | Tag id (&#x60;TrackingTag.id&#x60;). |  |
| **ad_account_id** | **String** | Scopes the lookup on platforms whose tag ids live inside an ad account. Ignored elsewhere. | [optional] |

### Return type

[**GetTrackingTag200Response**](GetTrackingTag200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tracking_tag_diagnostics

> <GetTrackingTagDiagnostics200Response> get_tracking_tag_diagnostics(account_id, tag_id)

Get tag diagnostics

The platform's health checks for the tag. Platforms without tag diagnostics answer 501.  Meta: the pixel's checks from Events Manager (`da_checks`), e.g. whether events miss parameters or their content ids do not match the pixel's catalogs. 

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
tag_id = 'tag_id_example' # String | Tag id (`TrackingTag.id`).

begin
  # Get tag diagnostics
  result = api_instance.get_tracking_tag_diagnostics(account_id, tag_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->get_tracking_tag_diagnostics: #{e}"
end
```

#### Using the get_tracking_tag_diagnostics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTrackingTagDiagnostics200Response>, Integer, Hash)> get_tracking_tag_diagnostics_with_http_info(account_id, tag_id)

```ruby
begin
  # Get tag diagnostics
  data, status_code, headers = api_instance.get_tracking_tag_diagnostics_with_http_info(account_id, tag_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTrackingTagDiagnostics200Response>
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->get_tracking_tag_diagnostics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **tag_id** | **String** | Tag id (&#x60;TrackingTag.id&#x60;). |  |

### Return type

[**GetTrackingTagDiagnostics200Response**](GetTrackingTagDiagnostics200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tracking_tag_stats

> <GetTrackingTagStats200Response> get_tracking_tag_stats(account_id, tag_id, opts)

Get aggregated event stats

Returns event counts / health for the tag, where the platform exposes them. Meta: aggregated counts (`GET /{pixel_id}/stats`), rows passed through as-is; their shape depends on the `aggregation` requested. Platforms without a stats API answer 501.  OpenAI Ads: the recent-events stream (`GET /conversions/events`), the latest (at most 50) Pixel SDK events received in the last 15 minutes, one row per event (`event_type`, `api_channel`, `event_timestamp_ms`, `received_at_ms`, ...). Conversions API events are not included. It is a fixed window: `startTime`/`endTime` answer 400. Use it to confirm an install fires; attributed totals come from ads analytics. Accounts not enabled for the stream answer 422 `feature_not_available`.  LinkedIn (`linkedinads`): health rows rather than counts, since LinkedIn exposes no per- event fire counts: one row per site domain the tag has seen (`kind: domain`, `domainName`, `lastFiredTime`, `creationTime`, `blocked`) and one per conversion rule (`kind: conversion_rule`, `id`, `name`, `type`, `conversionMethod`, `status`, `lastFiredTime`). Times are unix seconds; `startTime`/`endTime` are ignored.  Pinterest (platform `pinterestads`): rows typed by `type`: one `tag` row (`lastFiredTime`, `status`, `enhancedMatchStatus`), `event` rows for the conversion events Pinterest has seen on the tag (`source` is `page_visit` or `ocpm_eligible`, the latter meaning the event can be optimized for, with the neutral `siteEvent` where one maps), and `event_quality` rows with the ad account's Event Quality Score for tag events over the last `1d` and `14d` (ad-account level, not per tag; an account Pinterest cannot score yet carries `error` instead). Pinterest has no time-bounded counts, so `startTime`/`endTime` answer 400. 

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
tag_id = 'tag_id_example' # String | Tag id (`TrackingTag.id`).
opts = {
  ad_account_id: 'ad_account_id_example', # String | Scopes the lookup on platforms whose tag ids live inside an ad account. Ignored elsewhere.
  aggregation: 'event', # String | Meta only (400 on other platforms): aggregation dimension. Defaults to `event`.
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
| **tag_id** | **String** | Tag id (&#x60;TrackingTag.id&#x60;). |  |
| **ad_account_id** | **String** | Scopes the lookup on platforms whose tag ids live inside an ad account. Ignored elsewhere. | [optional] |
| **aggregation** | **String** | Meta only (400 on other platforms): aggregation dimension. Defaults to &#x60;event&#x60;. | [optional][default to &#39;event&#39;] |
| **start_time** | **Integer** | Unix seconds lower bound. | [optional] |
| **end_time** | **Integer** | Unix seconds upper bound. | [optional] |

### Return type

[**GetTrackingTagStats200Response**](GetTrackingTagStats200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tracking_tag_store_install

> <GetTrackingTagStoreInstall200Response> get_tracking_tag_store_install(account_id, tag_id, store_account_id, opts)

Get store install status

Whether this tag is the one the Shopify store fires for its platform. `installedTagId` names the tag of that platform the store currently fires, which can be a different tag, and `tags` lists every Zernio tag on the store (all platforms).  WordPress: whether the Zernio widget for this pixel is live (in an active widget area, script intact), plus a read-only `preflight` with the theme's widget areas and, when an install would be blocked, the `reason` POST would return. The preflight reads capabilities only, so `ready: true` is not a guarantee: `DISALLOW_UNFILTERED_HTML` or a multisite admin who is not a Super Admin still strips the script, which POST detects. `tags` lists every Zernio widget on the site (all platforms, with `active`). 

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
tag_id = 'tag_id_example' # String | Tag id (`TrackingTag.id`).
store_account_id = 'store_account_id_example' # String | The connected Shopify or WordPress account id.
opts = {
  ad_account_id: 'ad_account_id_example' # String | Scopes the tag lookup on platforms whose tag ids live inside an ad account.
}

begin
  # Get store install status
  result = api_instance.get_tracking_tag_store_install(account_id, tag_id, store_account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->get_tracking_tag_store_install: #{e}"
end
```

#### Using the get_tracking_tag_store_install_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTrackingTagStoreInstall200Response>, Integer, Hash)> get_tracking_tag_store_install_with_http_info(account_id, tag_id, store_account_id, opts)

```ruby
begin
  # Get store install status
  data, status_code, headers = api_instance.get_tracking_tag_store_install_with_http_info(account_id, tag_id, store_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTrackingTagStoreInstall200Response>
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->get_tracking_tag_store_install_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **tag_id** | **String** | Tag id (&#x60;TrackingTag.id&#x60;). |  |
| **store_account_id** | **String** | The connected Shopify or WordPress account id. |  |
| **ad_account_id** | **String** | Scopes the tag lookup on platforms whose tag ids live inside an ad account. | [optional] |

### Return type

[**GetTrackingTagStoreInstall200Response**](GetTrackingTagStoreInstall200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## install_tracking_tag_on_store

> <InstallTrackingTagOnStore200Response> install_tracking_tag_on_store(account_id, tag_id, install_tracking_tag_on_store_request)

Install on a Shopify store or WordPress site

Puts the Meta pixel on a connected Shopify store's storefront and checkout through Zernio's Shopify web pixel (a Shopify app pixel, no theme edits). The store then sends PageView, ViewContent, AddToCart, Search, InitiateCheckout, AddPaymentInfo and Purchase (with value, currency, content_ids and contents) to the pixel, each with an event id. Purchase uses `shopify_order_{orderId}` as its event id, so a Conversions API Purchase you send for the same order with that `eventId` is deduplicated by Meta.  Idempotent: a store runs one Zernio web pixel holding one tag per platform, so calling it again updates the install, installing a different tag of the same platform replaces the previous one (reported in `replacedTagId`), and other platforms' tags are kept. Events respect the store's customer privacy settings (marketing consent).  `accountId` is the Meta ads account that owns the pixel (`tagId`); `storeAccountId` is the Shopify account.  OpenAI Ads on Shopify: each event is sent through OpenAI's documented image tag (`GET https://bzr.openai.com/v1/sdk/events`) as `page_viewed`, `contents_viewed`, `items_added`, `checkout_started`, `order_created`, and custom events `search` and `addpaymentinfo` (lowercase, so a Conversions API Search/AddPaymentInfo with the same event id deduplicates). Amounts are sent in the currency's minor unit. The landing page's `oppref` click id is kept in the `__oppref` cookie for 30 days and sent with every event. The image tag cannot carry the `__obref` browser id (OpenAI rejects the parameter), and the search text is never sent. On WordPress the widget holds the official `oaiq` base code and a `page_viewed` call.  Stores connected before pixel support must re-approve the Zernio app: the call then answers 409 `reconnect_required` with `details.authUrl` to send the merchant to (the Shopify account id stays the same). Platforms without an install path return 501.  **WordPress** (`storeAccountId` is a connected WordPress.com or self-hosted site): Zernio adds a Custom HTML widget with the Meta pixel base code (fbevents.js, `init`, `PageView`) to a widget area of the active theme (a footer area when there is one, else the first active area; pass `sidebarId` to choose), then reads the widget back to confirm WordPress kept the `<script>` tag. The widget carries a Zernio marker, so the call is idempotent per pixel: repeating it updates or moves the same widget, and pixel code the site owner pasted by hand is never touched. Several pixels can run side by side (one widget each). When the site cannot run the pixel, nothing is left behind and the call answers 422 `tracking_tag_install_blocked` with `details.reason`: - `insufficient_permissions`: the connected user lacks `edit_theme_options` (needs Administrator). - `scripts_stripped`: WordPress removed the script (the user lacks `unfiltered_html`, e.g. a multisite admin who is not a Super Admin, or `DISALLOW_UNFILTERED_HTML` is set). - `wordpress_com_plan`: a WordPress.com plan that strips scripts (plans without plugins). - `no_widget_areas`: the theme has no widget areas (block themes such as Twenty Twenty-Five). - `widgets_api_unavailable`: no widgets REST API (WordPress older than 5.8, or disabled). The `error` message names the manual alternative (Meta's official WordPress plugin). With `verifyHomepage` (default true) the homepage is fetched afterwards and `homepageCheck` says whether the pixel is visible; `not_found` can be a stale page cache, the widget read-back is authoritative.  **LinkedIn** (`linkedinads`): Shopify sends every page view to the Insight Tag, plus each store event that has an enabled event-specific Insight Tag conversion rule of the matching type (view_content = VIEW_CONTENT, add_to_cart = ADD_TO_CART, search = SEARCH, initiate_checkout = START_CHECKOUT, add_payment_info = ADD_BILLING_INFO, purchase = PURCHASE). Each conversion carries the event id; Purchase uses `shopify_order_{orderId}`, so a Conversions API event sent to a separate CONVERSIONS_API rule with that `eventId` is deduplicated by LinkedIn. Conversions API rules cannot be fired from a page, and no rule is created for you. The `li_fat_id` click id is read from the landing URL and kept in a first-party cookie for 30 days. WordPress gets LinkedIn's base code, which records page views.  **Pinterest (platform `pinterestads`)**: Shopify sends `pagevisit`, `viewcontent`, `addtocart`, `search`, `initiatecheckout`, `addpaymentinfo` and `checkout` to the tag, each with `event_id` (Purchase: `shopify_order_{orderId}`, for dedup with the Pinterest Conversions API), value, currency, order quantity and line items, plus the `epik` click id kept in the `_epik` cookie. WordPress gets Pinterest's base code (core.js, `load`, `page`) with a `pagevisit` event; the manual fallback is the official Pinterest for WooCommerce plugin (WooCommerce stores). 

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
tag_id = 'tag_id_example' # String | Tag id (`TrackingTag.id`).
install_tracking_tag_on_store_request = Zernio::InstallTrackingTagOnStoreRequest.new({store_account_id: 'store_account_id_example'}) # InstallTrackingTagOnStoreRequest | 

begin
  # Install on a Shopify store or WordPress site
  result = api_instance.install_tracking_tag_on_store(account_id, tag_id, install_tracking_tag_on_store_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->install_tracking_tag_on_store: #{e}"
end
```

#### Using the install_tracking_tag_on_store_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InstallTrackingTagOnStore200Response>, Integer, Hash)> install_tracking_tag_on_store_with_http_info(account_id, tag_id, install_tracking_tag_on_store_request)

```ruby
begin
  # Install on a Shopify store or WordPress site
  data, status_code, headers = api_instance.install_tracking_tag_on_store_with_http_info(account_id, tag_id, install_tracking_tag_on_store_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InstallTrackingTagOnStore200Response>
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->install_tracking_tag_on_store_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **tag_id** | **String** | Tag id (&#x60;TrackingTag.id&#x60;). |  |
| **install_tracking_tag_on_store_request** | [**InstallTrackingTagOnStoreRequest**](InstallTrackingTagOnStoreRequest.md) |  |  |

### Return type

[**InstallTrackingTagOnStore200Response**](InstallTrackingTagOnStore200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_tracking_tag_events

> <ListTrackingTagEvents200Response> list_tracking_tag_events(account_id, tag_id, opts)

List conversion events

The tag's conversion events, on platforms where each conversion is its own object: Google conversion actions, LinkedIn conversion rules, X web event tags, OpenAI event settings, TikTok pixel events, Meta custom conversions, Pinterest advertiser defined events.  OpenAI Ads: the account's conversion event settings whose source is this pixel. `siteEventId` is the event name the site sends (a standard event such as `order_created`, or the lowercase custom event name); `clickWindowDays` is the attribution window.  LinkedIn (`linkedinads`): the conversion rules of the ad account (`adAccountId`, default the account that created the tag), including Conversions API and URL-match rules. `siteEventId` (the rule id a page fires) is set only on event-specific Insight Tag rules; `defaultValue`/`currency` come from the rule value, `clickWindowDays`/`viewWindowDays` from its post-click and view-through windows.  Meta: the pixel's custom conversions. Meta keeps them per AD ACCOUNT (a pixel has no custom conversions edge), so the list reads `adAccountId` (default: the pixel's owner ad account) and keeps the conversions whose pixel is this one. Archived conversions are included with `status: archived`. `urlContains` and `siteEvent` are parsed from Meta's rule.  Google Ads (`googleads`): the enabled WEBPAGE conversion actions of the account; `siteEventId` is the conversion label (the part after `AW-.../` in `send_to`), and value settings, lookback windows, `primary` and `countingType` are returned. Archived (removed) actions are listed with status `REMOVED`; imported (GA4, upload, app) actions are not events of the tag.  Pinterest (platform `pinterestads`): the ad account's advertiser defined events, custom event names mapped to a standard type (`type`, e.g. `SIGNUP`). They belong to the ad account, so every tag on it shares them. `id`, `name` and `siteEventId` are all the event name, which the site sends as `pintrk('track', '<name>')` or the Conversions API sends as `event_name`. Standard events (`pagevisit`, `checkout`...) need no object and are not listed. 

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
tag_id = 'tag_id_example' # String | Tag id (`TrackingTag.id`).
opts = {
  ad_account_id: 'ad_account_id_example' # String | Scopes the lookup on platforms whose tag ids live inside an ad account.
}

begin
  # List conversion events
  result = api_instance.list_tracking_tag_events(account_id, tag_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->list_tracking_tag_events: #{e}"
end
```

#### Using the list_tracking_tag_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTrackingTagEvents200Response>, Integer, Hash)> list_tracking_tag_events_with_http_info(account_id, tag_id, opts)

```ruby
begin
  # List conversion events
  data, status_code, headers = api_instance.list_tracking_tag_events_with_http_info(account_id, tag_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTrackingTagEvents200Response>
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->list_tracking_tag_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **tag_id** | **String** | Tag id (&#x60;TrackingTag.id&#x60;). |  |
| **ad_account_id** | **String** | Scopes the lookup on platforms whose tag ids live inside an ad account. | [optional] |

### Return type

[**ListTrackingTagEvents200Response**](ListTrackingTagEvents200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tracking_tag_partners

> <ListTrackingTagPartners200Response> list_tracking_tag_partners(account_id, tag_id)

List partner businesses of a tag

Other businesses the tag is shared with. Read-only. Platforms without partner sharing answer 501.  Meta: the pixel's shared agencies. Sharing a pixel with a new partner is not available: `/{pixel}/agencies` answers \"(#3) Application does not have the capability to make this API call\" for our app. 

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
tag_id = 'tag_id_example' # String | Tag id (`TrackingTag.id`).

begin
  # List partner businesses of a tag
  result = api_instance.list_tracking_tag_partners(account_id, tag_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->list_tracking_tag_partners: #{e}"
end
```

#### Using the list_tracking_tag_partners_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTrackingTagPartners200Response>, Integer, Hash)> list_tracking_tag_partners_with_http_info(account_id, tag_id)

```ruby
begin
  # List partner businesses of a tag
  data, status_code, headers = api_instance.list_tracking_tag_partners_with_http_info(account_id, tag_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTrackingTagPartners200Response>
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->list_tracking_tag_partners_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **tag_id** | **String** | Tag id (&#x60;TrackingTag.id&#x60;). |  |

### Return type

[**ListTrackingTagPartners200Response**](ListTrackingTagPartners200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tracking_tag_shared_accounts

> <ListTrackingTagSharedAccounts200Response> list_tracking_tag_shared_accounts(account_id, tag_id)

List accounts it is shared with

Meta (`metaads`) and LinkedIn (`linkedinads`); other platforms return 501.  LinkedIn (`linkedinads`): the ad accounts this connection can see that hold access to the Insight Tag; the role (`FULL` or `USE_ONLY`) is appended to `name`. LinkedIn exposes permissions per ad account only, so accounts the connection cannot see are not listed. 

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


## list_tracking_tag_users

> <ListTrackingTagUsers200Response> list_tracking_tag_users(account_id, tag_id)

List tag users

People and system users of the owning business with access to the tag. Platforms without tag user assignment answer 501.  Meta: the pixel's assigned users in its owning Business Manager. A pixel on a personal ad account has no business and returns an empty list. Needs the `business_management` permission on the connecting Meta user (an admin of the owning business); without it the call answers 403 asking to reconnect. 

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
tag_id = 'tag_id_example' # String | Tag id (`TrackingTag.id`).

begin
  # List tag users
  result = api_instance.list_tracking_tag_users(account_id, tag_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->list_tracking_tag_users: #{e}"
end
```

#### Using the list_tracking_tag_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTrackingTagUsers200Response>, Integer, Hash)> list_tracking_tag_users_with_http_info(account_id, tag_id)

```ruby
begin
  # List tag users
  data, status_code, headers = api_instance.list_tracking_tag_users_with_http_info(account_id, tag_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTrackingTagUsers200Response>
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->list_tracking_tag_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **tag_id** | **String** | Tag id (&#x60;TrackingTag.id&#x60;). |  |

### Return type

[**ListTrackingTagUsers200Response**](ListTrackingTagUsers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tracking_tags

> <ListTrackingTags200Response> list_tracking_tags(account_id, opts)

List tracking tags

Returns the tracking tags (Meta Pixels, or OpenAI Ads pixels) the connected ads account can see. Pass `?adAccountId=act_...` (Meta only) to scope the list to a single ad account; omit it to list every pixel reachable by the token (the name is then suffixed with the ad account it was discovered on, for disambiguation). The list view omits `code`. Call `getTrackingTag` for the install snippet and full detail.  Meta (platform `metaads`) and OpenAI Ads (platform `openaiads`); other platforms return 501. The `accountId` must be the ads SocialAccount created by the Ads add-on connect flow (Meta) or the OpenAI Ads connect flow, not a Facebook/Instagram posting account. Get your Meta `act_...` ids from `GET /v1/ads/accounts`; `adAccountId` is ignored for OpenAI Ads (one API key maps to exactly one ad account).  LinkedIn (`linkedinads`): lists the Insight Tag of each ad account (LinkedIn allows one per ad account; a tag shared with several accounts appears once). `adAccountId` is the numeric ad account id or `urn:li:sponsoredAccount:{id}`; omit it to scan every active ad account the connection can see. The tag `id` IS the partner id the site embeds, so `siteTagId` equals `id`. LinkedIn tags have no name; it is shown as `Insight Tag {id}`.  Pinterest (platform `pinterestads`): lists Pinterest tags (conversion tags). `adAccountId` is the numeric Pinterest ad account id (no prefix); omit it to walk every ad account the connection can read (an ad account the user has no Business Access role on is skipped). `id` equals `siteTagId`, the id the site loads with `pintrk('load', id)`. 

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


## remove_tracking_tag_from_store

> <RemoveTrackingTagFromStore200Response> remove_tracking_tag_from_store(account_id, tag_id, store_account_id, opts)

Remove from a Shopify store or WordPress site

Removes the tag from the store. Idempotent: nothing installed returns 200 with `installed: false`. If the store fires a different tag of the same platform, nothing is removed and the call answers 409 `invalid_resource_state`. Shopify: other platforms' tags stay; the web pixel itself is deleted once no tag remains.  WordPress: deletes every widget Zernio created for this pixel and reports how many in `removed` (0 when nothing was installed). Pixel code added by hand is left alone. 

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
tag_id = 'tag_id_example' # String | Tag id (`TrackingTag.id`).
store_account_id = 'store_account_id_example' # String | The connected Shopify or WordPress account id.
opts = {
  ad_account_id: 'ad_account_id_example' # String | Scopes the tag lookup on platforms whose tag ids live inside an ad account.
}

begin
  # Remove from a Shopify store or WordPress site
  result = api_instance.remove_tracking_tag_from_store(account_id, tag_id, store_account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->remove_tracking_tag_from_store: #{e}"
end
```

#### Using the remove_tracking_tag_from_store_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoveTrackingTagFromStore200Response>, Integer, Hash)> remove_tracking_tag_from_store_with_http_info(account_id, tag_id, store_account_id, opts)

```ruby
begin
  # Remove from a Shopify store or WordPress site
  data, status_code, headers = api_instance.remove_tracking_tag_from_store_with_http_info(account_id, tag_id, store_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoveTrackingTagFromStore200Response>
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->remove_tracking_tag_from_store_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **tag_id** | **String** | Tag id (&#x60;TrackingTag.id&#x60;). |  |
| **store_account_id** | **String** | The connected Shopify or WordPress account id. |  |
| **ad_account_id** | **String** | Scopes the tag lookup on platforms whose tag ids live inside an ad account. | [optional] |

### Return type

[**RemoveTrackingTagFromStore200Response**](RemoveTrackingTagFromStore200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_tracking_tag_shared_account

> remove_tracking_tag_shared_account(account_id, tag_id, opts)

Stop sharing with an account

`adAccountId` may be passed as a query parameter (recommended) or as a JSON body field for clients that can send DELETE bodies. Meta and LinkedIn; other platforms return 501.  LinkedIn (`linkedinads`): revokes the ad account's access. Zernio answers 400 instead of revoking the last ad account that holds the tag: LinkedIn accepts that call and the tag is orphaned (verified live). 

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


## remove_tracking_tag_user

> <RemoveTrackingTagUser200Response> remove_tracking_tag_user(account_id, tag_id, user_id)

Remove a user from a tag

Removes a user's access to the tag, on platforms whose API allows it.  Meta answers 501: the Business SDK has no delete on the pixel's assigned users, `DELETE /{pixel}/assigned_users` answers \"Unsupported delete request\" (code 100, subcode 33) and re-assigning with no tasks is refused. Remove the user in Business Settings. 

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
tag_id = 'tag_id_example' # String | 
user_id = 'user_id_example' # String | User id (`TrackingTagUser.id`).

begin
  # Remove a user from a tag
  result = api_instance.remove_tracking_tag_user(account_id, tag_id, user_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->remove_tracking_tag_user: #{e}"
end
```

#### Using the remove_tracking_tag_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoveTrackingTagUser200Response>, Integer, Hash)> remove_tracking_tag_user_with_http_info(account_id, tag_id, user_id)

```ruby
begin
  # Remove a user from a tag
  data, status_code, headers = api_instance.remove_tracking_tag_user_with_http_info(account_id, tag_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoveTrackingTagUser200Response>
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->remove_tracking_tag_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **tag_id** | **String** |  |  |
| **user_id** | **String** | User id (&#x60;TrackingTagUser.id&#x60;). |  |

### Return type

[**RemoveTrackingTagUser200Response**](RemoveTrackingTagUser200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_ad_tracking_tags

> <UpdateAdTrackingTags200Response> update_ad_tracking_tags(ad_id, update_ad_tracking_tags_request)

Set ad tracking tags

Unified update. Send only the fields for the ad's platform: - Meta: `urlTags` (array of {key,value}). Meta creatives are immutable, so this rebuilds the   creative and repoints the ad. By DEFAULT we PRESERVE the existing creative verbatim   (re-post its object_story_spec + the new url_tags, reusing the image), so you send `urlTags`   ALONE, with no need to read back headline/body/CTA. `creative` (headline, body, callToAction,   linkUrl, imageUrl) is OPTIONAL and only needed to rebuild explicitly, or for SHARE / page-post   / dark / asset_feed creatives whose object_story_spec Meta strips (those return 422 asking for   `creative`). - Google: `trackingUrlTemplate` and/or `finalUrlSuffix` (full template strings; account quota applies). - LinkedIn: `dynamicValueParameters` and/or `customValueParameters` (campaign-level Dynamic UTM). 

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
  result = api_instance.update_ad_tracking_tags(ad_id, update_ad_tracking_tags_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->update_ad_tracking_tags: #{e}"
end
```

#### Using the update_ad_tracking_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateAdTrackingTags200Response>, Integer, Hash)> update_ad_tracking_tags_with_http_info(ad_id, update_ad_tracking_tags_request)

```ruby
begin
  # Set ad tracking tags
  data, status_code, headers = api_instance.update_ad_tracking_tags_with_http_info(ad_id, update_ad_tracking_tags_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateAdTrackingTags200Response>
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

[**UpdateAdTrackingTags200Response**](UpdateAdTrackingTags200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_tracking_tag

> <GetTrackingTag200Response> update_tracking_tag(account_id, tag_id, update_tracking_tag_request)

Update a tracking tag

Partial-update a pixel. Whitelisted fields: `name` (rename), `enableAutomaticMatching`, `automaticMatchingFields`, `firstPartyCookieStatus`, `dataUseSetting`. At least one is required. Returns the re-fetched canonical tag. Meta only (platform `metaads`); other platforms return 501.  OpenAI Ads answers 501: its API has no pixel update or delete route (`POST`/`PATCH`/`PUT`/`DELETE /v1/conversions/pixels/{id}` answer 405 \"Invalid method\"); rename a pixel in OpenAI Ads Manager.  Google Ads (`googleads`): the only writable tag setting is `autoTagging` (the account's gclid auto-tagging, without which the tag cannot attribute conversions to ad clicks). Google rejects every write to `conversion_tracking_setting` for our developer token (`SERVICE_ACCESS_DENIED`), so the tag id and cross-account ownership stay managed in the Google Ads UI.  There is no DELETE: Meta has no API to delete a pixel. To stop using one, unshare it from your ad accounts (`DELETE .../tracking-tags/{tagId}/shared-accounts`) or disable it in Events Manager.  LinkedIn (`linkedinads`): only `firstPartyCookieStatus` (`first_party_cookie_enabled` or `first_party_cookie_disabled`), which sets the tag's first-party tracking. It applies to every ad account using the tag. `empty` answers 400: LinkedIn has no unset state.  Pinterest (platform `pinterestads`): 501. Pinterest API v5 has no endpoint to edit a tag: its spec lists only POST/GET on `conversion_tags` and GET on `conversion_tags/{id}`, and PATCH or PUT on `conversion_tags/{id}` answer 405 \"Method not allowed\". Set enhanced match at creation (`automaticMatchingFields`) or change it and the name in Pinterest Ads Manager. 

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


## update_tracking_tag_event

> <CreateTrackingTagEvent201Response> update_tracking_tag_event(account_id, tag_id, event_id, tracking_tag_event_input)

Update a conversion event

Partial update; at least one field. A field the platform does not store answers 400.  OpenAI Ads answers 501: OpenAI documents only list and create for event settings, and `POST`/`PATCH`/`PUT /v1/conversions/event_settings/{id}` answer 404 \"Invalid URL\". Create a new event instead.  LinkedIn (`linkedinads`): partial update of the conversion rule; same fields as create. Pass `adAccountId` when the rule lives in another ad account than the one that created the tag.  Meta: only `name` and `defaultValue` can change (Meta's custom conversion update takes nothing else); `type`, `siteEvent` and `urlContains` answer 400, create a new event instead.  Google Ads (`googleads`): same fields as create, on the account's WEBPAGE actions (others answer 404). `enabled: false` archives the action (same as DELETE) and `enabled: true` restores an archived one.  Pinterest (platform `pinterestads`): remaps the event to another `type` or `siteEvent`. Pinterest identifies the event by its name, so `name` cannot change (400): create the new name and delete the old one. 

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
tag_id = 'tag_id_example' # String | 
event_id = 'event_id_example' # String | Event id (`TrackingTagEvent.id`).
tracking_tag_event_input = Zernio::TrackingTagEventInput.new # TrackingTagEventInput | 

begin
  # Update a conversion event
  result = api_instance.update_tracking_tag_event(account_id, tag_id, event_id, tracking_tag_event_input)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->update_tracking_tag_event: #{e}"
end
```

#### Using the update_tracking_tag_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTrackingTagEvent201Response>, Integer, Hash)> update_tracking_tag_event_with_http_info(account_id, tag_id, event_id, tracking_tag_event_input)

```ruby
begin
  # Update a conversion event
  data, status_code, headers = api_instance.update_tracking_tag_event_with_http_info(account_id, tag_id, event_id, tracking_tag_event_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTrackingTagEvent201Response>
rescue Zernio::ApiError => e
  puts "Error when calling TrackingTagsApi->update_tracking_tag_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **tag_id** | **String** |  |  |
| **event_id** | **String** | Event id (&#x60;TrackingTagEvent.id&#x60;). |  |
| **tracking_tag_event_input** | [**TrackingTagEventInput**](TrackingTagEventInput.md) |  |  |

### Return type

[**CreateTrackingTagEvent201Response**](CreateTrackingTagEvent201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

