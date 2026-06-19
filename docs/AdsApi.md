# Zernio::AdsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_conversion_associations**](AdsApi.md#add_conversion_associations) | **POST** /v1/accounts/{accountId}/conversion-destinations/{destinationId}/associations | Associate campaigns with a conversion destination |
| [**adjust_conversions**](AdsApi.md#adjust_conversions) | **POST** /v1/ads/conversions/adjustments | Adjust already-uploaded conversions (Google only) |
| [**archive_lead_form**](AdsApi.md#archive_lead_form) | **DELETE** /v1/ads/lead-forms/{formId} | Archive a Lead Gen form |
| [**boost_post**](AdsApi.md#boost_post) | **POST** /v1/ads/boost | Boost post as ad |
| [**create_conversion_destination**](AdsApi.md#create_conversion_destination) | **POST** /v1/accounts/{accountId}/conversion-destinations | Create a conversion destination (LinkedIn, Google Ads) |
| [**create_ctwa_ad**](AdsApi.md#create_ctwa_ad) | **POST** /v1/ads/ctwa | Create Click-to-WhatsApp ad(s) |
| [**create_lead_form**](AdsApi.md#create_lead_form) | **POST** /v1/ads/lead-forms | Create a Lead Gen (Instant) form |
| [**create_standalone_ad**](AdsApi.md#create_standalone_ad) | **POST** /v1/ads/create | Create standalone ad |
| [**create_test_lead**](AdsApi.md#create_test_lead) | **POST** /v1/ads/lead-forms/{formId}/test-leads | Create a synthetic test lead |
| [**delete_ad**](AdsApi.md#delete_ad) | **DELETE** /v1/ads/{adId} | Cancel an ad |
| [**delete_conversion_destination**](AdsApi.md#delete_conversion_destination) | **DELETE** /v1/accounts/{accountId}/conversion-destinations/{destinationId} | Soft-delete a conversion destination |
| [**estimate_ad_reach**](AdsApi.md#estimate_ad_reach) | **POST** /v1/ads/targeting/reach-estimate | Estimate audience reach |
| [**get_ad**](AdsApi.md#get_ad) | **GET** /v1/ads/{adId} | Get ad details |
| [**get_ad_analytics**](AdsApi.md#get_ad_analytics) | **GET** /v1/ads/{adId}/analytics | Get ad analytics |
| [**get_ad_comments**](AdsApi.md#get_ad_comments) | **GET** /v1/ads/{adId}/comments | List comments on an ad |
| [**get_ad_tracking_tags**](AdsApi.md#get_ad_tracking_tags) | **GET** /v1/ads/{adId}/tracking-tags | Read an ad&#39;s click-URL tracking tags |
| [**get_conversion_destination**](AdsApi.md#get_conversion_destination) | **GET** /v1/accounts/{accountId}/conversion-destinations/{destinationId} | Fetch a single conversion destination |
| [**get_conversion_metrics**](AdsApi.md#get_conversion_metrics) | **GET** /v1/accounts/{accountId}/conversion-destinations/{destinationId}/metrics | Fetch attribution metrics for a conversion destination |
| [**get_conversions_quality**](AdsApi.md#get_conversions_quality) | **GET** /v1/ads/conversions/quality | Read Event Match Quality + coverage for a Meta pixel |
| [**get_lead_form**](AdsApi.md#get_lead_form) | **GET** /v1/ads/lead-forms/{formId} | Get a single Lead Gen form |
| [**list_ad_accounts**](AdsApi.md#list_ad_accounts) | **GET** /v1/ads/accounts | List ad accounts |
| [**list_ad_catalog_product_sets**](AdsApi.md#list_ad_catalog_product_sets) | **GET** /v1/ads/catalogs/{catalogId}/product-sets | List a catalog&#39;s product sets |
| [**list_ad_catalogs**](AdsApi.md#list_ad_catalogs) | **GET** /v1/ads/catalogs | List Meta product catalogs |
| [**list_ads**](AdsApi.md#list_ads) | **GET** /v1/ads | List ads |
| [**list_ads_business_centers**](AdsApi.md#list_ads_business_centers) | **GET** /v1/ads/business-centers | List TikTok Business Centers |
| [**list_conversion_associations**](AdsApi.md#list_conversion_associations) | **GET** /v1/accounts/{accountId}/conversion-destinations/{destinationId}/associations | List campaigns associated with a conversion destination |
| [**list_conversion_destinations**](AdsApi.md#list_conversion_destinations) | **GET** /v1/accounts/{accountId}/conversion-destinations | List destinations for the Conversions API |
| [**list_form_leads**](AdsApi.md#list_form_leads) | **GET** /v1/ads/lead-forms/{formId}/leads | List leads for a single form |
| [**list_lead_forms**](AdsApi.md#list_lead_forms) | **GET** /v1/ads/lead-forms | List Lead Gen (Instant) forms |
| [**list_leads**](AdsApi.md#list_leads) | **GET** /v1/ads/leads | List submitted leads (cross-form CRM view) |
| [**list_whats_app_conversions**](AdsApi.md#list_whats_app_conversions) | **GET** /v1/whatsapp/conversions | List recent WhatsApp conversion events |
| [**remove_conversion_associations**](AdsApi.md#remove_conversion_associations) | **DELETE** /v1/accounts/{accountId}/conversion-destinations/{destinationId}/associations | Remove campaign↔conversion associations |
| [**search_ad_interests**](AdsApi.md#search_ad_interests) | **GET** /v1/ads/interests | Search targeting interests (deprecated) |
| [**search_ad_targeting**](AdsApi.md#search_ad_targeting) | **GET** /v1/ads/targeting/search | Search targeting options |
| [**send_conversions**](AdsApi.md#send_conversions) | **POST** /v1/ads/conversions | Send conversion events to an ad platform |
| [**send_whats_app_conversion**](AdsApi.md#send_whats_app_conversion) | **POST** /v1/whatsapp/conversions | Send WhatsApp conversion event |
| [**update_ad**](AdsApi.md#update_ad) | **PUT** /v1/ads/{adId} | Update ad |
| [**update_ad_tracking_tags**](AdsApi.md#update_ad_tracking_tags) | **PATCH** /v1/ads/{adId}/tracking-tags | Set/update an ad&#39;s click-URL tracking tags |
| [**update_conversion_destination**](AdsApi.md#update_conversion_destination) | **PATCH** /v1/accounts/{accountId}/conversion-destinations/{destinationId} | Update a conversion destination |


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


## adjust_conversions

> <AdjustConversions200Response> adjust_conversions(adjust_conversions_request)

Adjust already-uploaded conversions (Google only)

Adjust conversions that were previously uploaded via `POST /v1/ads/conversions` — retract them, restate their value, or enhance them with first-party data. Requires the Ads add-on.  **Google Ads only.** Google handles adjustments through the classic Google Ads API (`ConversionAdjustmentUploadService`); the Data Manager `ingestEvents` path used for sending conversions is ingest-only. Meta and LinkedIn have no equivalent, so this endpoint returns `405` for those platforms.  Adjustment types:  - `RETRACTION` — remove the conversion entirely (refund, chargeback, cancelled order, churn). - `RESTATEMENT` — change the conversion's value (upgrade / downgrade / partial refund). Send the corrected **total** value in `restatementValue` (not a delta). - `ENHANCEMENT` — attach first-party identifiers (hashed email / phone) to an existing conversion (enhanced conversions applied after the fact).  Identifying the original conversion (per adjustment):  - `orderId` — the transaction ID you sent as `eventId` on the original conversion. Recommended, and **required** for `ENHANCEMENT`. - or `gclid` + `conversionTime` — the click ID and the original conversion's time (unix seconds). Not available for `ENHANCEMENT`.  `destinationId` is the conversion action resource name, e.g. `customers/1234567890/conversionActions/987654321` (same value you send to `POST /v1/ads/conversions`). PII in `user` is hashed with SHA-256 server-side (Gmail-specific normalization included). Send plaintext.  Times are unix seconds; we convert to Google's required `yyyy-MM-dd HH:mm:ss+00:00` format. Up to 2000 adjustments per request; partial failure is supported (inspect `adjustmentsFailed` / `failures[]`). 

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
adjust_conversions_request = Zernio::AdjustConversionsRequest.new({account_id: 'account_id_example', destination_id: 'destination_id_example', adjustments: [Zernio::AdjustConversionsRequestAdjustmentsInner.new({adjustment_type: 'RETRACTION', adjustment_time: 3.56})]}) # AdjustConversionsRequest | 

begin
  # Adjust already-uploaded conversions (Google only)
  result = api_instance.adjust_conversions(adjust_conversions_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->adjust_conversions: #{e}"
end
```

#### Using the adjust_conversions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdjustConversions200Response>, Integer, Hash)> adjust_conversions_with_http_info(adjust_conversions_request)

```ruby
begin
  # Adjust already-uploaded conversions (Google only)
  data, status_code, headers = api_instance.adjust_conversions_with_http_info(adjust_conversions_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdjustConversions200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->adjust_conversions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **adjust_conversions_request** | [**AdjustConversionsRequest**](AdjustConversionsRequest.md) |  |  |

### Return type

[**AdjustConversions200Response**](AdjustConversions200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## archive_lead_form

> <ArchiveLeadForm200Response> archive_lead_form(form_id, account_id)

Archive a Lead Gen form

Meta has no hard delete for forms; this archives the form (status=ARCHIVED).

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
form_id = 'form_id_example' # String | 
account_id = 'account_id_example' # String | 

begin
  # Archive a Lead Gen form
  result = api_instance.archive_lead_form(form_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->archive_lead_form: #{e}"
end
```

#### Using the archive_lead_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ArchiveLeadForm200Response>, Integer, Hash)> archive_lead_form_with_http_info(form_id, account_id)

```ruby
begin
  # Archive a Lead Gen form
  data, status_code, headers = api_instance.archive_lead_form_with_http_info(form_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ArchiveLeadForm200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->archive_lead_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form_id** | **String** |  |  |
| **account_id** | **String** |  |  |

### Return type

[**ArchiveLeadForm200Response**](ArchiveLeadForm200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
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

Create a conversion destination (LinkedIn, Google Ads)

Create a new conversion destination on the platform. Supported for LinkedIn (conversion rule) and Google Ads (conversion action). Meta manages destinations in its own UI and returns 405.  **LinkedIn:** creation is NOT idempotent. A retry creates a second destination. Deduplicate before retrying.  **Google Ads:** calling with a name that already exists reuses the existing conversion action transparently (the response is identical to a fresh create). Calling with the same name but a different category returns a typed `IDEMPOTENCY_CONFLICT` (409) rather than silently returning the mismatched action.  **LinkedIn:** the rule is created with `conversionMethod=CONVERSIONS_API` and (by default) auto-associated with all of the ad account's campaigns via `autoAssociationType=ALL_CAMPAIGNS`. Pass `autoAssociationType: NONE` to opt out and manage associations explicitly via the associations endpoints below.  365-day attribution windows are only valid for `SUBMIT_APPLICATION`, `PURCHASE`, `ADD_TO_CART`, `QUALIFIED_LEAD`, and `LEAD` rule types; the API rejects other combinations locally.  **Google Ads:** the conversion action is created with `type=UPLOAD_CLICKS` (required for API-uploaded offline conversions, immutable after creation). The `type` field carries the Google `ConversionActionCategory` enum value, e.g. `PURCHASE`, `SUBSCRIBE_PAID`, `SIGNUP`, `IMPORTED_LEAD`, `BOOK_APPOINTMENT`. Unified standard event names (e.g. `Purchase`, `Subscribe`, `CompleteRegistration`, `Lead`, `Schedule`) are resolved to their Google category equivalents automatically. The action defaults to secondary (non-primary) to avoid immediately steering Smart Bidding; pass `primaryForGoal: true` to opt in. 

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
account_id = 'account_id_example' # String | SocialAccount ID (linkedinads or googleads).
create_conversion_destination_request = Zernio::CreateConversionDestinationRequest.new({ad_account_id: 'ad_account_id_example', name: 'name_example', type: 'type_example'}) # CreateConversionDestinationRequest | 

begin
  # Create a conversion destination (LinkedIn, Google Ads)
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
  # Create a conversion destination (LinkedIn, Google Ads)
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
| **account_id** | **String** | SocialAccount ID (linkedinads or googleads). |  |
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

Create Click-to-WhatsApp ad(s)

Creates one or more Click-to-WhatsApp (CTWA) ads on Meta under a single campaign and ad set. When tapped, each ad opens a WhatsApp conversation with the business attached to the supplied Facebook Page. The full hierarchy (campaign, ad set, creative(s), ad(s)) is created and activated in one call. The CTA is locked to WHATSAPP_MESSAGE and the destination is hard-coded to api.whatsapp.com/send; Meta resolves the actual WhatsApp number from the Page-to-WA pairing configured in Page settings or Business Manager.  Supports two mutually-exclusive shapes:  - **Single-creative**: supply top-level `headline`, `body`, and one of   `imageUrl` / `video`. Creates 1 campaign + 1 ad set + 1 ad.  - **Multi-creative**: supply a `creatives[]` array with N entries   (each carrying its own headline, body, and image/video). Creates   1 campaign + 1 ad set + N ads sharing budget and targeting so Meta   A/Bs the creatives inside a single auction instead of fragmenting   budget across N parallel campaigns. Recommended when launching   multiple creative variants for the same campaign.   Prerequisites enforced by Meta (surfaced as platform_error on failure): the Facebook Page must be paired with a verified WhatsApp Business number, the WhatsApp Business Account must be business-verified, and the Meta access token must carry ads_management.

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
create_ctwa_ad_request = Zernio::CreateCtwaAdRequest.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example', name: 'name_example', budget_amount: 3.56, budget_type: 'daily'}) # CreateCtwaAdRequest | 

begin
  # Create Click-to-WhatsApp ad(s)
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
  # Create Click-to-WhatsApp ad(s)
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


## create_lead_form

> <CreateLeadForm200Response> create_lead_form(create_lead_form_request)

Create a Lead Gen (Instant) form

Creates a Lead Gen form on the connected Facebook Page (POST /{page-id}/leadgen_forms). NOT idempotent — a retry creates a second form. Prefilled question types (EMAIL, PHONE, FULL_NAME, …) must omit label/key; CUSTOM questions require both. Requires the Ads add-on. 

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
create_lead_form_request = Zernio::CreateLeadFormRequest.new({account_id: 'account_id_example', name: 'name_example', questions: [Zernio::CreateLeadFormRequestQuestionsInner.new({type: 'type_example'})], privacy_policy_url: 'privacy_policy_url_example'}) # CreateLeadFormRequest | 

begin
  # Create a Lead Gen (Instant) form
  result = api_instance.create_lead_form(create_lead_form_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->create_lead_form: #{e}"
end
```

#### Using the create_lead_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateLeadForm200Response>, Integer, Hash)> create_lead_form_with_http_info(create_lead_form_request)

```ruby
begin
  # Create a Lead Gen (Instant) form
  data, status_code, headers = api_instance.create_lead_form_with_http_info(create_lead_form_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateLeadForm200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->create_lead_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_lead_form_request** | [**CreateLeadFormRequest**](CreateLeadFormRequest.md) |  |  |

### Return type

[**CreateLeadForm200Response**](CreateLeadForm200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_standalone_ad

> <CreateStandaloneAd201Response> create_standalone_ad(create_standalone_ad_request, opts)

Create standalone ad

Creates a paid ad with custom creative across Meta, Google Ads, Pinterest, TikTok, X/Twitter, and LinkedIn. Supports three mutually-exclusive request shapes selected by the body, a legacy single-creative shape (all platforms, default), a Meta-only multi-creative shape via the creatives array (one ad set with N ads sharing budget and targeting), and a Meta-only attach shape via adSetId (adds one new ad to an existing ad set). Per-platform required fields, budget minimums, and video-ad rules are documented on each property below. LinkedIn creates a Single Image or Single Video Ad backed by a Direct Sponsored Content \"dark post\" authored by a Company Page (see `organizationId`); supported goals are engagement, traffic, awareness, and video_views (video ads use the `video` field; video_views requires a video), and traffic ads require `linkUrl`.  **Idempotency:** this endpoint is not idempotent at the platform level (a blind retry creates a second campaign/ad set/ad). Send an `Idempotency-Key` header to make retries safe: the first request with a given key creates the ad and we store the response; a retry with the same key replays that exact response (with `Idempotent-Replayed: true`) instead of creating duplicates. Reusing a key with a different body returns 422; a key whose first request is still in flight returns 409 (retry after a short backoff). Keys are scoped to your credential and expire after 24h.

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
opts = {
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes create retries safe. Same key + same body replays the original response; same key + different body → 422; key still processing → 409.
}

begin
  # Create standalone ad
  result = api_instance.create_standalone_ad(create_standalone_ad_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->create_standalone_ad: #{e}"
end
```

#### Using the create_standalone_ad_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateStandaloneAd201Response>, Integer, Hash)> create_standalone_ad_with_http_info(create_standalone_ad_request, opts)

```ruby
begin
  # Create standalone ad
  data, status_code, headers = api_instance.create_standalone_ad_with_http_info(create_standalone_ad_request, opts)
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
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes create retries safe. Same key + same body replays the original response; same key + different body → 422; key still processing → 409. | [optional] |

### Return type

[**CreateStandaloneAd201Response**](CreateStandaloneAd201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_test_lead

> <CreateTestLead200Response> create_test_lead(form_id, create_test_lead_request)

Create a synthetic test lead

Submits a test lead against the form (POST /{form-id}/test_leads) to exercise retrieval without waiting for real ad impressions. Meta allows one test lead per form at a time. 

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
form_id = 'form_id_example' # String | 
create_test_lead_request = Zernio::CreateTestLeadRequest.new({account_id: 'account_id_example', field_data: [Zernio::CreateTestLeadRequestFieldDataInner.new({name: 'name_example', values: ['values_example']})]}) # CreateTestLeadRequest | 

begin
  # Create a synthetic test lead
  result = api_instance.create_test_lead(form_id, create_test_lead_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->create_test_lead: #{e}"
end
```

#### Using the create_test_lead_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTestLead200Response>, Integer, Hash)> create_test_lead_with_http_info(form_id, create_test_lead_request)

```ruby
begin
  # Create a synthetic test lead
  data, status_code, headers = api_instance.create_test_lead_with_http_info(form_id, create_test_lead_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTestLead200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->create_test_lead_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form_id** | **String** |  |  |
| **create_test_lead_request** | [**CreateTestLeadRequest**](CreateTestLeadRequest.md) |  |  |

### Return type

[**CreateTestLead200Response**](CreateTestLead200Response.md)

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

api_instance = Zernio::AdsApi.new
estimate_ad_reach_request = Zernio::EstimateAdReachRequest.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example', spec: Zernio::TargetingSpec.new}) # EstimateAdReachRequest | 

begin
  # Estimate audience reach
  result = api_instance.estimate_ad_reach(estimate_ad_reach_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->estimate_ad_reach: #{e}"
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
  puts "Error when calling AdsApi->estimate_ad_reach_with_http_info: #{e}"
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

api_instance = Zernio::AdsApi.new
ad_id = 'ad_id_example' # String | Zernio `_id` (hex), Meta `platformAdId` (numeric), or one of the creative's effective story/media IDs. See description for details. 

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
| **ad_id** | **String** | Zernio &#x60;_id&#x60; (hex), Meta &#x60;platformAdId&#x60; (numeric), or one of the creative&#39;s effective story/media IDs. See description for details.  |  |

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

Returns comments on an ad's underlying creative post. Useful for moderating or analyzing engagement on dark posts (ad creatives that never went live organically), which the regular GET /v1/inbox/comments/{postId} endpoint cannot serve because dark posts are not in Zernio's post database.  An ad that runs on both Facebook feed and Instagram feed has two separate underlying posts with separate comment threads (the creative's effective_object_story_id and effective_instagram_media_id). Use the `placement` query param to pick one; with no param the Instagram side is returned when it exists, otherwise Facebook. The identifiers are read from the ad record (persisted during sync) with a Marketing-API fallback for ads that predate the field.  For Instagram-placed comments, the Instagram account that runs the ad must be connected to Zernio — those comments are read through that account's token. If no connected Instagram account on the profile can read the ad's media, the call returns ads_connection_required (the Facebook side, if any, is still readable via ?placement=facebook).  Meta-only. Other ad platforms (TikTok, LinkedIn, Pinterest, Google, X) do not expose a public per-ad comments API and return feature_not_available.  Requires the Ads add-on. Response shape matches GET /v1/inbox/comments/{postId}.  The `{adId}` path segment accepts any identifier dialect Zernio indexes for the ad: Zernio internal `_id` (24-char hex), Meta's numeric `platformAdId` (the value shipped in `comment.received` webhooks as `comment.ad.id`), or the creative's `effective_object_story_id` / `effective_instagram_media_id`. Caller doesn't need a translation step. 

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
  placement: 'facebook', # String | Which side of the ad to return comments for. Omit to default to the Instagram side when present, else Facebook. Returns ad_not_commentable if the ad has no such placement.
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
| **placement** | **String** | Which side of the ad to return comments for. Omit to default to the Instagram side when present, else Facebook. Returns ad_not_commentable if the ad has no such placement. | [optional] |
| **limit** | **Integer** |  | [optional][default to 25] |
| **cursor** | **String** | Pagination cursor from a previous response. | [optional] |

### Return type

[**GetAdComments200Response**](GetAdComments200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ad_tracking_tags

> <GetAdTrackingTags200Response> get_ad_tracking_tags(ad_id)

Read an ad's click-URL tracking tags

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

api_instance = Zernio::AdsApi.new
ad_id = 'ad_id_example' # String | Ad id (hex _id, platformAdId, or effective story/media id).

begin
  # Read an ad's click-URL tracking tags
  result = api_instance.get_ad_tracking_tags(ad_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->get_ad_tracking_tags: #{e}"
end
```

#### Using the get_ad_tracking_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAdTrackingTags200Response>, Integer, Hash)> get_ad_tracking_tags_with_http_info(ad_id)

```ruby
begin
  # Read an ad's click-URL tracking tags
  data, status_code, headers = api_instance.get_ad_tracking_tags_with_http_info(ad_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAdTrackingTags200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->get_ad_tracking_tags_with_http_info: #{e}"
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


## get_conversion_destination

> <GetConversionDestination200Response> get_conversion_destination(account_id, destination_id, ad_account_id)

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

> <Array(<GetConversionDestination200Response>, Integer, Hash)> get_conversion_destination_with_http_info(account_id, destination_id, ad_account_id)

```ruby
begin
  # Fetch a single conversion destination
  data, status_code, headers = api_instance.get_conversion_destination_with_http_info(account_id, destination_id, ad_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetConversionDestination200Response>
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

[**GetConversionDestination200Response**](GetConversionDestination200Response.md)

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


## get_conversions_quality

> <GetConversionsQuality200Response> get_conversions_quality(account_id, destination_id)

Read Event Match Quality + coverage for a Meta pixel

Reads Meta Event Match Quality (EMQ) and pixel↔CAPI event coverage for a pixel/dataset, live from Meta's Dataset Quality API. Web events only (a Meta limitation). Meta-only; other platforms return 405. Requires the Ads add-on. 

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
account_id = 'account_id_example' # String | SocialAccount _id (must be a metaads account).
destination_id = 'destination_id_example' # String | Meta pixel/dataset ID.

begin
  # Read Event Match Quality + coverage for a Meta pixel
  result = api_instance.get_conversions_quality(account_id, destination_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->get_conversions_quality: #{e}"
end
```

#### Using the get_conversions_quality_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetConversionsQuality200Response>, Integer, Hash)> get_conversions_quality_with_http_info(account_id, destination_id)

```ruby
begin
  # Read Event Match Quality + coverage for a Meta pixel
  data, status_code, headers = api_instance.get_conversions_quality_with_http_info(account_id, destination_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetConversionsQuality200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->get_conversions_quality_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | SocialAccount _id (must be a metaads account). |  |
| **destination_id** | **String** | Meta pixel/dataset ID. |  |

### Return type

[**GetConversionsQuality200Response**](GetConversionsQuality200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lead_form

> <GetLeadForm200Response> get_lead_form(form_id, account_id)

Get a single Lead Gen form

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
form_id = 'form_id_example' # String | 
account_id = 'account_id_example' # String | 

begin
  # Get a single Lead Gen form
  result = api_instance.get_lead_form(form_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->get_lead_form: #{e}"
end
```

#### Using the get_lead_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLeadForm200Response>, Integer, Hash)> get_lead_form_with_http_info(form_id, account_id)

```ruby
begin
  # Get a single Lead Gen form
  data, status_code, headers = api_instance.get_lead_form_with_http_info(form_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLeadForm200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->get_lead_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form_id** | **String** |  |  |
| **account_id** | **String** |  |  |

### Return type

[**GetLeadForm200Response**](GetLeadForm200Response.md)

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


## list_ad_catalog_product_sets

> <ListAdCatalogProductSets200Response> list_ad_catalog_product_sets(catalog_id, account_id)

List a catalog's product sets

Lists a Meta product catalog's product sets — the unit a catalog ad promotes. Pass the chosen set as `promotedObject.productSetId` on POST /v1/ads/create with `goal: catalog_sales`.

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
catalog_id = 'catalog_id_example' # String | Meta product catalog ID (from GET /v1/ads/catalogs)
account_id = 'account_id_example' # String | A facebook, instagram, or metaads social account ID

begin
  # List a catalog's product sets
  result = api_instance.list_ad_catalog_product_sets(catalog_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->list_ad_catalog_product_sets: #{e}"
end
```

#### Using the list_ad_catalog_product_sets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAdCatalogProductSets200Response>, Integer, Hash)> list_ad_catalog_product_sets_with_http_info(catalog_id, account_id)

```ruby
begin
  # List a catalog's product sets
  data, status_code, headers = api_instance.list_ad_catalog_product_sets_with_http_info(catalog_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAdCatalogProductSets200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->list_ad_catalog_product_sets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_id** | **String** | Meta product catalog ID (from GET /v1/ads/catalogs) |  |
| **account_id** | **String** | A facebook, instagram, or metaads social account ID |  |

### Return type

[**ListAdCatalogProductSets200Response**](ListAdCatalogProductSets200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ad_catalogs

> <ListAdCatalogs200Response> list_ad_catalogs(account_id, ad_account_id)

List Meta product catalogs

Lists the Meta product catalogs reachable from an ad account (owned + agency-shared catalogs of the ad account's business), for Advantage+ catalog ads (`goal: catalog_sales` on POST /v1/ads/create — e.g. vehicle inventory catalogs). Read-only; uses scopes customers already granted (no reconnect needed). Catalog contents (items, feeds) are managed in Meta Commerce Manager, not through this API.

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
account_id = 'account_id_example' # String | A facebook, instagram, or metaads social account ID
ad_account_id = 'ad_account_id_example' # String | Meta ad account ID (act_...)

begin
  # List Meta product catalogs
  result = api_instance.list_ad_catalogs(account_id, ad_account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->list_ad_catalogs: #{e}"
end
```

#### Using the list_ad_catalogs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAdCatalogs200Response>, Integer, Hash)> list_ad_catalogs_with_http_info(account_id, ad_account_id)

```ruby
begin
  # List Meta product catalogs
  data, status_code, headers = api_instance.list_ad_catalogs_with_http_info(account_id, ad_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAdCatalogs200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->list_ad_catalogs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | A facebook, instagram, or metaads social account ID |  |
| **ad_account_id** | **String** | Meta ad account ID (act_...) |  |

### Return type

[**ListAdCatalogs200Response**](ListAdCatalogs200Response.md)

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
account_id = 'account_id_example' # String | SocialAccount ID (metaads, googleads, linkedinads, or tiktokads).

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
| **account_id** | **String** | SocialAccount ID (metaads, googleads, linkedinads, or tiktokads). |  |

### Return type

[**ListConversionDestinations200Response**](ListConversionDestinations200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_form_leads

> <ListFormLeads200Response> list_form_leads(form_id, account_id, opts)

List leads for a single form

Returns leads for one form. Serves persisted leads (ingested via the leadgen webhook) when available, falling back to a live Graph read. 

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
form_id = 'form_id_example' # String | 
account_id = 'account_id_example' # String | 
opts = {
  limit: 56, # Integer | 
  cursor: 'cursor_example', # String | 
  since: 56 # Integer | Unix seconds.
}

begin
  # List leads for a single form
  result = api_instance.list_form_leads(form_id, account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->list_form_leads: #{e}"
end
```

#### Using the list_form_leads_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListFormLeads200Response>, Integer, Hash)> list_form_leads_with_http_info(form_id, account_id, opts)

```ruby
begin
  # List leads for a single form
  data, status_code, headers = api_instance.list_form_leads_with_http_info(form_id, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListFormLeads200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->list_form_leads_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form_id** | **String** |  |  |
| **account_id** | **String** |  |  |
| **limit** | **Integer** |  | [optional][default to 25] |
| **cursor** | **String** |  | [optional] |
| **since** | **Integer** | Unix seconds. | [optional] |

### Return type

[**ListFormLeads200Response**](ListFormLeads200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_lead_forms

> <ListLeadForms200Response> list_lead_forms(account_id, opts)

List Lead Gen (Instant) forms

Lists the Lead Gen forms owned by the connected Facebook Page. Requires the Ads add-on.

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
account_id = 'account_id_example' # String | Connected facebook account id.
opts = {
  limit: 56, # Integer | 
  cursor: 'cursor_example' # String | 
}

begin
  # List Lead Gen (Instant) forms
  result = api_instance.list_lead_forms(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->list_lead_forms: #{e}"
end
```

#### Using the list_lead_forms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListLeadForms200Response>, Integer, Hash)> list_lead_forms_with_http_info(account_id, opts)

```ruby
begin
  # List Lead Gen (Instant) forms
  data, status_code, headers = api_instance.list_lead_forms_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListLeadForms200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->list_lead_forms_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Connected facebook account id. |  |
| **limit** | **Integer** |  | [optional][default to 25] |
| **cursor** | **String** |  | [optional] |

### Return type

[**ListLeadForms200Response**](ListLeadForms200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_leads

> <ListLeads200Response> list_leads(opts)

List submitted leads (cross-form CRM view)

Returns persisted Meta Lead Gen leads for your team, newest-first, with keyset pagination on `cursor`. Leads are ingested in real time from the `leadgen` webhook. Requires the Ads add-on. 

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
  form_id: 'form_id_example', # String | Filter to a single lead form.
  account_id: 'account_id_example', # String | Filter to a single connected account.
  limit: 56, # Integer | 
  since: 56, # Integer | Unix seconds; only leads created at/after this Meta timestamp.
  cursor: 'cursor_example' # String | Keyset cursor from a previous response's pagination.cursor.
}

begin
  # List submitted leads (cross-form CRM view)
  result = api_instance.list_leads(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->list_leads: #{e}"
end
```

#### Using the list_leads_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListLeads200Response>, Integer, Hash)> list_leads_with_http_info(opts)

```ruby
begin
  # List submitted leads (cross-form CRM view)
  data, status_code, headers = api_instance.list_leads_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListLeads200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->list_leads_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form_id** | **String** | Filter to a single lead form. | [optional] |
| **account_id** | **String** | Filter to a single connected account. | [optional] |
| **limit** | **Integer** |  | [optional][default to 25] |
| **since** | **Integer** | Unix seconds; only leads created at/after this Meta timestamp. | [optional] |
| **cursor** | **String** | Keyset cursor from a previous response&#39;s pagination.cursor. | [optional] |

### Return type

[**ListLeads200Response**](ListLeads200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_whats_app_conversions

> <ListWhatsAppConversions200Response> list_whats_app_conversions(account_id, opts)

List recent WhatsApp conversion events

Returns the most recent conversion events sent through `POST /v1/whatsapp/conversions` for the given WhatsApp account. Sourced from delivery logs (Axiom `late` dataset), so the visible window is bounded by log retention (about 30 days). Useful for rendering a \"recent activity\" panel on the conversions setup tab without standing up a parallel persistence layer.  Per-event payload mirrors the structured log we write on every successful send: `eventName`, `conversationId`, `eventsReceived`, `eventsFailed`, `traceId`, `durationMs`, and the wall-clock `timestamp`. 

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
account_id = 'account_id_example' # String | WhatsApp social account ID
opts = {
  limit: 56 # Integer | Max events to return (1-200, default 50).
}

begin
  # List recent WhatsApp conversion events
  result = api_instance.list_whats_app_conversions(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->list_whats_app_conversions: #{e}"
end
```

#### Using the list_whats_app_conversions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWhatsAppConversions200Response>, Integer, Hash)> list_whats_app_conversions_with_http_info(account_id, opts)

```ruby
begin
  # List recent WhatsApp conversion events
  data, status_code, headers = api_instance.list_whats_app_conversions_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWhatsAppConversions200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->list_whats_app_conversions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account ID |  |
| **limit** | **Integer** | Max events to return (1-200, default 50). | [optional][default to 50] |

### Return type

[**ListWhatsAppConversions200Response**](ListWhatsAppConversions200Response.md)

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


## search_ad_interests

> <SearchAdInterests200Response> search_ad_interests(q, account_id)

Search targeting interests (deprecated)

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

api_instance = Zernio::AdsApi.new
q = 'q_example' # String | Search query
account_id = 'account_id_example' # String | Social account ID

begin
  # Search targeting interests (deprecated)
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
  # Search targeting interests (deprecated)
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


## search_ad_targeting

> <SearchAdTargeting200Response> search_ad_targeting(account_id, q, opts)

Search targeting options

Resolve a human-readable query into the platform's opaque targeting ids used in the `TargetingSpec` (`countries`/`regions`/`cities`/`zips`/`metros` geo keys, and `interests`/`behaviors` entity ids) on `POST /v1/ads/create`, `POST /v1/ads/targeting/reach-estimate`, and `saved_targeting` audiences.  The `dimension` param selects what is searched, `geo` (locations, further scoped by `geoType`), `interest`, `behavior`, or `income`. Availability of each dimension varies by platform (e.g. behaviours are Meta/TikTok only). Results are normalized across platforms into a single shape, so the same client code consumes Meta, TikTok, LinkedIn, X, Pinterest, and Google results.  For geo queries, `q` should contain only the locality name (e.g. `\"Amsterdam\"`, not `\"Amsterdam, NL\"`). Use `countryCode` to disambiguate. 

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
account_id = 'account_id_example' # String | Social account ID (a connected account on the target ad platform).
q = 'q_example' # String | Search query. For geo, the locality name only (no region/country suffix).
opts = {
  dimension: 'geo', # String | What to search. `geo` resolves locations (scope further with `geoType`), `interest`/`behavior` resolve audience entities, `income` resolves income-tier options. Defaults to `interest` for backward compatibility with the deprecated /v1/ads/interests alias.
  geo_type: 'country', # String | Only used when `dimension=geo`. The kind of location to resolve. `place` resolves named points of interest (businesses, landmarks) by proximity. `neighborhood` resolves named neighbourhood areas. Defaults to `city`.
  country_code: 'country_code_example', # String | ISO 3166-1 alpha-2 country code (e.g. NL) to scope a geo search.
  limit: 56 # Integer | Maximum results to return.
}

begin
  # Search targeting options
  result = api_instance.search_ad_targeting(account_id, q, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->search_ad_targeting: #{e}"
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
  puts "Error when calling AdsApi->search_ad_targeting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Social account ID (a connected account on the target ad platform). |  |
| **q** | **String** | Search query. For geo, the locality name only (no region/country suffix). |  |
| **dimension** | **String** | What to search. &#x60;geo&#x60; resolves locations (scope further with &#x60;geoType&#x60;), &#x60;interest&#x60;/&#x60;behavior&#x60; resolve audience entities, &#x60;income&#x60; resolves income-tier options. Defaults to &#x60;interest&#x60; for backward compatibility with the deprecated /v1/ads/interests alias. | [optional][default to &#39;interest&#39;] |
| **geo_type** | **String** | Only used when &#x60;dimension&#x3D;geo&#x60;. The kind of location to resolve. &#x60;place&#x60; resolves named points of interest (businesses, landmarks) by proximity. &#x60;neighborhood&#x60; resolves named neighbourhood areas. Defaults to &#x60;city&#x60;. | [optional][default to &#39;city&#39;] |
| **country_code** | **String** | ISO 3166-1 alpha-2 country code (e.g. NL) to scope a geo search. | [optional] |
| **limit** | **Integer** | Maximum results to return. | [optional][default to 25] |

### Return type

[**SearchAdTargeting200Response**](SearchAdTargeting200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## send_conversions

> <SendConversions200Response> send_conversions(send_conversions_request)

Send conversion events to an ad platform

Relay one or more conversion events to the target ad platform's native Conversions API. Platform is inferred from the provided `accountId`. Requires the Ads add-on.  Supported platforms:  - Meta (`metaads`) via Graph API - Google Ads (`googleads`) via Data Manager API `ingestEvents` - LinkedIn (`linkedinads`) via `/rest/conversionEvents` - TikTok (`tiktokads`) via the Offline Events API `/offline/batch/` — OFFLINE conversions only  `destinationId` semantics differ per platform:  - Meta: pixel (dataset) ID, e.g. `123456789012345` - Google: conversion action resource name, e.g. `customers/1234567890/conversionActions/987654321` - LinkedIn: conversion rule ID or URN, e.g. `104012` or `urn:lla:llaPartnerConversion:104012` - TikTok: Offline Event Set ID, e.g. `7057103914977558530`  TikTok notes: this path sends OFFLINE conversions (in-store / CRM / call-center), not web-pixel events. Each event must carry an email or phone (TikTok requires at least one). The connected TikTok ads account must have granted the Offline Events permission; older grants must reconnect.  Callers can list valid destinations via `GET /v1/accounts/{accountId}/conversion-destinations`.  All PII (email, phone, names, external IDs) is hashed with SHA-256 server-side per each platform's normalization spec, including Google's Gmail-specific dot/plus-suffix stripping. Send plaintext. LinkedIn `externalIds` are passed through as plaintext per LinkedIn's spec; only emails and phones are hashed.  For LinkedIn, the connected account must have been authorized after the Conversions API rollout (i.e. the OAuth grant must include `rw_conversions`). Older accounts must reconnect.  Batching is handled automatically. Meta caps at 1000 events per request and rejects the entire batch if any event is malformed. Google caps at 2000. LinkedIn caps at 5000 and is also all-or-nothing per chunk.  Dedup: pass a stable `eventId` on every event. Meta and LinkedIn use it to dedupe against browser-side pixel/Insight Tag events; Google maps it to `transactionId`.  Per-platform `eventName` semantics:  - Meta: free-form. Standard names (Purchase, Lead, ...) match Meta's built-in events; custom strings are accepted. - Google: ignored. The conversion action's category determines the event type. Send the standard name closest to your action for documentation, but the platform will not branch on it. - LinkedIn: ignored. The conversion rule's `type` (LEAD, PURCHASE, etc.) is locked to the destination at rule-creation time. Send the standard name for documentation; LinkedIn does not branch on it. 

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

Forward a WhatsApp Business Messaging conversion event (`LeadSubmitted`, `Purchase`, `AddToCart`, `InitiateCheckout`, `ViewContent`) to Meta's Conversions API with `action_source = business_messaging` and `messaging_channel = whatsapp`. The endpoint looks up the originating CTWA click ID (`ctwa_clid`) captured on the first inbound message of the conversation and replays it on every event so Meta can attribute the conversion back to the Click-to-WhatsApp ad that drove the chat.  Configuration prerequisite on the WhatsApp account metadata:   - `metaCapiDatasetId`: the Meta dataset ID linked to the WABA.     Provision one with `POST /v1/whatsapp/dataset`.  The WABA ID (already set automatically at connect time) is forwarded as `user_data.whatsapp_business_account_id`, which is the per-channel attribution identifier Meta requires for WhatsApp events. No Facebook Page ID is needed (that field is the Messenger-branch identifier).  Identify the conversation by either `conversationId` (preferred) or `phoneE164` (digits only, no `+`). At least one is required. If the conversation has no captured `ctwa_clid`, the request returns 422 because there is nothing to attribute.  Token and dataset coupling: the WhatsApp account's accessToken must have access to the configured `metaCapiDatasetId`. By default a WABA's system-user token is scoped to the WABA's own Business Manager and cannot post to a pixel owned by a different Business; Meta returns code 100 in that case. Either share the dataset with the WhatsApp app's Business in BM, or use a dataset already in the same Business as the WABA. 

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


## update_ad_tracking_tags

> update_ad_tracking_tags(ad_id, update_ad_tracking_tags_request)

Set/update an ad's click-URL tracking tags

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

api_instance = Zernio::AdsApi.new
ad_id = 'ad_id_example' # String | 
update_ad_tracking_tags_request = Zernio::UpdateAdTrackingTagsRequest.new # UpdateAdTrackingTagsRequest | 

begin
  # Set/update an ad's click-URL tracking tags
  api_instance.update_ad_tracking_tags(ad_id, update_ad_tracking_tags_request)
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->update_ad_tracking_tags: #{e}"
end
```

#### Using the update_ad_tracking_tags_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_ad_tracking_tags_with_http_info(ad_id, update_ad_tracking_tags_request)

```ruby
begin
  # Set/update an ad's click-URL tracking tags
  data, status_code, headers = api_instance.update_ad_tracking_tags_with_http_info(ad_id, update_ad_tracking_tags_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling AdsApi->update_ad_tracking_tags_with_http_info: #{e}"
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


## update_conversion_destination

> <GetConversionDestination200Response> update_conversion_destination(account_id, destination_id, update_conversion_destination_request)

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

> <Array(<GetConversionDestination200Response>, Integer, Hash)> update_conversion_destination_with_http_info(account_id, destination_id, update_conversion_destination_request)

```ruby
begin
  # Update a conversion destination
  data, status_code, headers = api_instance.update_conversion_destination_with_http_info(account_id, destination_id, update_conversion_destination_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetConversionDestination200Response>
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

[**GetConversionDestination200Response**](GetConversionDestination200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

