# Zernio::ConversionsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_conversion_associations**](ConversionsApi.md#add_conversion_associations) | **POST** /v1/accounts/{accountId}/conversion-destinations/{destinationId}/associations | Associate campaigns |
| [**adjust_conversions**](ConversionsApi.md#adjust_conversions) | **POST** /v1/ads/conversions/adjustments | Adjust uploaded conversions |
| [**create_conversion_destination**](ConversionsApi.md#create_conversion_destination) | **POST** /v1/accounts/{accountId}/conversion-destinations | Create a conversion destination |
| [**delete_conversion_destination**](ConversionsApi.md#delete_conversion_destination) | **DELETE** /v1/accounts/{accountId}/conversion-destinations/{destinationId} | Delete a conversion destination |
| [**get_conversion_destination**](ConversionsApi.md#get_conversion_destination) | **GET** /v1/accounts/{accountId}/conversion-destinations/{destinationId} | Get a conversion destination |
| [**get_conversion_metrics**](ConversionsApi.md#get_conversion_metrics) | **GET** /v1/accounts/{accountId}/conversion-destinations/{destinationId}/metrics | Get attribution metrics |
| [**get_conversions_quality**](ConversionsApi.md#get_conversions_quality) | **GET** /v1/ads/conversions/quality | Get Event Match Quality |
| [**list_conversion_associations**](ConversionsApi.md#list_conversion_associations) | **GET** /v1/accounts/{accountId}/conversion-destinations/{destinationId}/associations | List associated campaigns |
| [**list_conversion_destinations**](ConversionsApi.md#list_conversion_destinations) | **GET** /v1/accounts/{accountId}/conversion-destinations | List conversion destinations |
| [**remove_conversion_associations**](ConversionsApi.md#remove_conversion_associations) | **DELETE** /v1/accounts/{accountId}/conversion-destinations/{destinationId}/associations | Remove associated campaigns |
| [**send_conversions**](ConversionsApi.md#send_conversions) | **POST** /v1/ads/conversions | Send conversion events |
| [**update_conversion_destination**](ConversionsApi.md#update_conversion_destination) | **PATCH** /v1/accounts/{accountId}/conversion-destinations/{destinationId} | Update a conversion destination |


## add_conversion_associations

> <AddConversionAssociations200Response> add_conversion_associations(account_id, destination_id, add_conversion_associations_request)

Associate campaigns

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

api_instance = Zernio::ConversionsApi.new
account_id = 'account_id_example' # String | 
destination_id = 'destination_id_example' # String | 
add_conversion_associations_request = Zernio::AddConversionAssociationsRequest.new({ad_account_id: 'ad_account_id_example', campaign_ids: ['campaign_ids_example']}) # AddConversionAssociationsRequest | 

begin
  # Associate campaigns
  result = api_instance.add_conversion_associations(account_id, destination_id, add_conversion_associations_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->add_conversion_associations: #{e}"
end
```

#### Using the add_conversion_associations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddConversionAssociations200Response>, Integer, Hash)> add_conversion_associations_with_http_info(account_id, destination_id, add_conversion_associations_request)

```ruby
begin
  # Associate campaigns
  data, status_code, headers = api_instance.add_conversion_associations_with_http_info(account_id, destination_id, add_conversion_associations_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddConversionAssociations200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->add_conversion_associations_with_http_info: #{e}"
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

Adjust uploaded conversions

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

api_instance = Zernio::ConversionsApi.new
adjust_conversions_request = Zernio::AdjustConversionsRequest.new({account_id: 'account_id_example', destination_id: 'destination_id_example', adjustments: [Zernio::AdjustConversionsRequestAdjustmentsInner.new({adjustment_type: 'RETRACTION', adjustment_time: 3.56})]}) # AdjustConversionsRequest | 

begin
  # Adjust uploaded conversions
  result = api_instance.adjust_conversions(adjust_conversions_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->adjust_conversions: #{e}"
end
```

#### Using the adjust_conversions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdjustConversions200Response>, Integer, Hash)> adjust_conversions_with_http_info(adjust_conversions_request)

```ruby
begin
  # Adjust uploaded conversions
  data, status_code, headers = api_instance.adjust_conversions_with_http_info(adjust_conversions_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdjustConversions200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->adjust_conversions_with_http_info: #{e}"
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


## create_conversion_destination

> <CreateConversionDestination201Response> create_conversion_destination(account_id, create_conversion_destination_request)

Create a conversion destination

Create a new conversion destination on the platform. Supported for LinkedIn (conversion rule) and Google Ads (conversion action). Meta and OpenAI Ads pixels are created via their own tracking-tags flow instead (`POST /v1/accounts/{accountId}/tracking-tags`); this endpoint returns 405 for both.  **LinkedIn:** creation is NOT idempotent. A retry creates a second destination. Deduplicate before retrying.  **Google Ads:** calling with a name that already exists reuses the existing conversion action transparently (the response is identical to a fresh create). Calling with the same name but a different category returns a typed `IDEMPOTENCY_CONFLICT` (409) rather than silently returning the mismatched action.  **LinkedIn:** the rule is created with `conversionMethod=CONVERSIONS_API` and (by default) auto-associated with all of the ad account's campaigns via `autoAssociationType=ALL_CAMPAIGNS`. Pass `autoAssociationType: NONE` to opt out and manage associations explicitly via the associations endpoints below.  365-day attribution windows are only valid for `SUBMIT_APPLICATION`, `PURCHASE`, `ADD_TO_CART`, `QUALIFIED_LEAD`, and `LEAD` rule types; the API rejects other combinations locally.  **Google Ads:** the conversion action is created with `type=UPLOAD_CLICKS` (required for API-uploaded offline conversions, immutable after creation). The `type` field carries the Google `ConversionActionCategory` enum value, e.g. `PURCHASE`, `SUBSCRIBE_PAID`, `SIGNUP`, `IMPORTED_LEAD`, `BOOK_APPOINTMENT`. Unified standard event names (e.g. `Purchase`, `Subscribe`, `CompleteRegistration`, `Lead`, `Schedule`) are resolved to their Google category equivalents automatically. The action defaults to secondary (non-primary) to avoid immediately steering Smart Bidding; pass `primaryForGoal: true` to opt in. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConversionsApi.new
account_id = 'account_id_example' # String | SocialAccount ID (linkedinads or googleads).
create_conversion_destination_request = Zernio::CreateConversionDestinationRequest.new({ad_account_id: 'ad_account_id_example', name: 'name_example', type: 'type_example'}) # CreateConversionDestinationRequest | 

begin
  # Create a conversion destination
  result = api_instance.create_conversion_destination(account_id, create_conversion_destination_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->create_conversion_destination: #{e}"
end
```

#### Using the create_conversion_destination_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateConversionDestination201Response>, Integer, Hash)> create_conversion_destination_with_http_info(account_id, create_conversion_destination_request)

```ruby
begin
  # Create a conversion destination
  data, status_code, headers = api_instance.create_conversion_destination_with_http_info(account_id, create_conversion_destination_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateConversionDestination201Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->create_conversion_destination_with_http_info: #{e}"
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


## delete_conversion_destination

> delete_conversion_destination(account_id, destination_id, opts)

Delete a conversion destination

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

api_instance = Zernio::ConversionsApi.new
account_id = 'account_id_example' # String | 
destination_id = 'destination_id_example' # String | 
opts = {
  ad_account_id: 'ad_account_id_example' # String | Required as query OR in JSON body.
}

begin
  # Delete a conversion destination
  api_instance.delete_conversion_destination(account_id, destination_id, opts)
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->delete_conversion_destination: #{e}"
end
```

#### Using the delete_conversion_destination_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_conversion_destination_with_http_info(account_id, destination_id, opts)

```ruby
begin
  # Delete a conversion destination
  data, status_code, headers = api_instance.delete_conversion_destination_with_http_info(account_id, destination_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->delete_conversion_destination_with_http_info: #{e}"
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


## get_conversion_destination

> <GetConversionDestination200Response> get_conversion_destination(account_id, destination_id, ad_account_id)

Get a conversion destination

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

api_instance = Zernio::ConversionsApi.new
account_id = 'account_id_example' # String | 
destination_id = 'destination_id_example' # String | 
ad_account_id = 'ad_account_id_example' # String | Numeric ID or full `urn:li:sponsoredAccount:{id}` URN.

begin
  # Get a conversion destination
  result = api_instance.get_conversion_destination(account_id, destination_id, ad_account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->get_conversion_destination: #{e}"
end
```

#### Using the get_conversion_destination_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetConversionDestination200Response>, Integer, Hash)> get_conversion_destination_with_http_info(account_id, destination_id, ad_account_id)

```ruby
begin
  # Get a conversion destination
  data, status_code, headers = api_instance.get_conversion_destination_with_http_info(account_id, destination_id, ad_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetConversionDestination200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->get_conversion_destination_with_http_info: #{e}"
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

Get attribution metrics

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

api_instance = Zernio::ConversionsApi.new
account_id = 'account_id_example' # String | 
destination_id = 'destination_id_example' # String | 
ad_account_id = 'ad_account_id_example' # String | 
start_date = 'start_date_example' # String | 
opts = {
  end_date: 'end_date_example', # String | 
  granularity: 'ALL' # String | 
}

begin
  # Get attribution metrics
  result = api_instance.get_conversion_metrics(account_id, destination_id, ad_account_id, start_date, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->get_conversion_metrics: #{e}"
end
```

#### Using the get_conversion_metrics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetConversionMetrics200Response>, Integer, Hash)> get_conversion_metrics_with_http_info(account_id, destination_id, ad_account_id, start_date, opts)

```ruby
begin
  # Get attribution metrics
  data, status_code, headers = api_instance.get_conversion_metrics_with_http_info(account_id, destination_id, ad_account_id, start_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetConversionMetrics200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->get_conversion_metrics_with_http_info: #{e}"
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

Get Event Match Quality

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

api_instance = Zernio::ConversionsApi.new
account_id = 'account_id_example' # String | SocialAccount _id (must be a metaads account).
destination_id = 'destination_id_example' # String | Meta pixel/dataset ID.

begin
  # Get Event Match Quality
  result = api_instance.get_conversions_quality(account_id, destination_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->get_conversions_quality: #{e}"
end
```

#### Using the get_conversions_quality_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetConversionsQuality200Response>, Integer, Hash)> get_conversions_quality_with_http_info(account_id, destination_id)

```ruby
begin
  # Get Event Match Quality
  data, status_code, headers = api_instance.get_conversions_quality_with_http_info(account_id, destination_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetConversionsQuality200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->get_conversions_quality_with_http_info: #{e}"
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


## list_conversion_associations

> <ListConversionAssociations200Response> list_conversion_associations(account_id, destination_id, ad_account_id)

List associated campaigns

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

api_instance = Zernio::ConversionsApi.new
account_id = 'account_id_example' # String | 
destination_id = 'destination_id_example' # String | 
ad_account_id = 'ad_account_id_example' # String | 

begin
  # List associated campaigns
  result = api_instance.list_conversion_associations(account_id, destination_id, ad_account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->list_conversion_associations: #{e}"
end
```

#### Using the list_conversion_associations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListConversionAssociations200Response>, Integer, Hash)> list_conversion_associations_with_http_info(account_id, destination_id, ad_account_id)

```ruby
begin
  # List associated campaigns
  data, status_code, headers = api_instance.list_conversion_associations_with_http_info(account_id, destination_id, ad_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListConversionAssociations200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->list_conversion_associations_with_http_info: #{e}"
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

List conversion destinations

Returns the list of pixels (Meta), conversion actions (Google), conversion rules (LinkedIn), or pixels (OpenAI Ads) accessible to the connected ads account. Use the returned `id` as `destinationId` when posting to `POST /v1/ads/conversions`.  For Google and LinkedIn, each destination's `type` reflects the conversion type (PURCHASE, LEAD, SIGN_UP, etc.) — the event type is locked to the destination. For Meta and OpenAI Ads, `type` is absent: pixels accept any event name per request.  For LinkedIn, destinations are returned across every sponsored ad account the connected token can access; the `adAccountId` field on each destination identifies the parent ad account and is required for subsequent CRUD calls (update, delete, associations, metrics). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConversionsApi.new
account_id = 'account_id_example' # String | SocialAccount ID (metaads, googleads, linkedinads, tiktokads, or openaiads).

begin
  # List conversion destinations
  result = api_instance.list_conversion_destinations(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->list_conversion_destinations: #{e}"
end
```

#### Using the list_conversion_destinations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListConversionDestinations200Response>, Integer, Hash)> list_conversion_destinations_with_http_info(account_id)

```ruby
begin
  # List conversion destinations
  data, status_code, headers = api_instance.list_conversion_destinations_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListConversionDestinations200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->list_conversion_destinations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | SocialAccount ID (metaads, googleads, linkedinads, tiktokads, or openaiads). |  |

### Return type

[**ListConversionDestinations200Response**](ListConversionDestinations200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_conversion_associations

> <RemoveConversionAssociations200Response> remove_conversion_associations(account_id, destination_id, ad_account_id, campaign_ids)

Remove associated campaigns

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

api_instance = Zernio::ConversionsApi.new
account_id = 'account_id_example' # String | 
destination_id = 'destination_id_example' # String | 
ad_account_id = 'ad_account_id_example' # String | 
campaign_ids = 'campaign_ids_example' # String | Comma-separated list of campaign IDs.

begin
  # Remove associated campaigns
  result = api_instance.remove_conversion_associations(account_id, destination_id, ad_account_id, campaign_ids)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->remove_conversion_associations: #{e}"
end
```

#### Using the remove_conversion_associations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoveConversionAssociations200Response>, Integer, Hash)> remove_conversion_associations_with_http_info(account_id, destination_id, ad_account_id, campaign_ids)

```ruby
begin
  # Remove associated campaigns
  data, status_code, headers = api_instance.remove_conversion_associations_with_http_info(account_id, destination_id, ad_account_id, campaign_ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoveConversionAssociations200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->remove_conversion_associations_with_http_info: #{e}"
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


## send_conversions

> <SendConversions200Response> send_conversions(send_conversions_request)

Send conversion events

Relay one or more conversion events to the target ad platform's native Conversions API. Platform is inferred from the provided `accountId`. Requires the Ads add-on.  Supported platforms:  - Meta (`metaads`) via Graph API - Google Ads (`googleads`) via Data Manager API `ingestEvents` - LinkedIn (`linkedinads`) via `/rest/conversionEvents` - TikTok (`tiktokads`) via the Offline Events API `/offline/batch/` — OFFLINE conversions only - OpenAI Ads (`openaiads`) via its Conversions API (a separate host, `bzr.openai.com`)  `destinationId` semantics differ per platform:  - Meta: pixel (dataset) ID, e.g. `123456789012345` - Google: conversion action resource name, e.g. `customers/1234567890/conversionActions/987654321` - LinkedIn: conversion rule ID or URN, e.g. `104012` or `urn:lla:llaPartnerConversion:104012` - TikTok: Offline Event Set ID, e.g. `7057103914977558530` - OpenAI Ads: pixel wire id (numeric `pixel_id`, distinct from the internal pixel id), as returned by `GET /v1/accounts/{accountId}/conversion-destinations`  TikTok notes: this path sends OFFLINE conversions (in-store / CRM / call-center), not web-pixel events. Each event must carry an email or phone (TikTok requires at least one). The connected TikTok ads account must have granted the Offline Events permission; older grants must reconnect.  OpenAI Ads notes: requires a tracking tag (pixel) to already exist on the account — returns 422 with code `TRACKING_TAG_REQUIRED` if `POST /v1/accounts/{accountId}/tracking-tags` hasn't been called yet.  Callers can list valid destinations via `GET /v1/accounts/{accountId}/conversion-destinations`.  All PII (email, phone, names, external IDs) is hashed with SHA-256 server-side per each platform's normalization spec, including Google's Gmail-specific dot/plus-suffix stripping. Send plaintext. LinkedIn `externalIds` are passed through as plaintext per LinkedIn's spec; only emails and phones are hashed.  For LinkedIn, the connected account must have been authorized after the Conversions API rollout (i.e. the OAuth grant must include `rw_conversions`). Older accounts must reconnect.  Batching is handled automatically. Meta caps at 1000 events per request and rejects the entire batch if any event is malformed. Google caps at 2000. LinkedIn caps at 5000 and is also all-or-nothing per chunk. OpenAI Ads caps at 1000 per request; larger submissions are split into 1000-event chunks, each all-or-nothing (a malformed event fails every event in that chunk, not the whole request).  Dedup: pass a stable `eventId` on every event. Meta and LinkedIn use it to dedupe against browser-side pixel/Insight Tag events; Google maps it to `transactionId`.  Per-platform `eventName` semantics:  - Meta: free-form. Standard names (Purchase, Lead, ...) match Meta's built-in events; custom strings are accepted. - Google: ignored. The conversion action's category determines the event type. Send the standard name closest to your action for documentation, but the platform will not branch on it. - LinkedIn: ignored. The conversion rule's `type` (LEAD, PURCHASE, etc.) is locked to the destination at rule-creation time. Send the standard name for documentation; LinkedIn does not branch on it. - OpenAI Ads: a fixed subset of standard names (Purchase, Lead, AddToCart, ViewContent, InitiateCheckout, CompleteRegistration, Subscribe, StartTrial, Schedule) maps 1:1 onto OpenAI's own event-type enum; any other standard name or custom string is sent as `type: custom` with the name preserved. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConversionsApi.new
send_conversions_request = Zernio::SendConversionsRequest.new({account_id: 'account_id_example', destination_id: 'destination_id_example', events: [Zernio::ConversionEvent.new({event_name: 'Purchase', event_time: 1744732800, event_id: 'order_abc_123', user: Zernio::ConversionEventUser.new})]}) # SendConversionsRequest | 

begin
  # Send conversion events
  result = api_instance.send_conversions(send_conversions_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->send_conversions: #{e}"
end
```

#### Using the send_conversions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendConversions200Response>, Integer, Hash)> send_conversions_with_http_info(send_conversions_request)

```ruby
begin
  # Send conversion events
  data, status_code, headers = api_instance.send_conversions_with_http_info(send_conversions_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendConversions200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->send_conversions_with_http_info: #{e}"
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

api_instance = Zernio::ConversionsApi.new
account_id = 'account_id_example' # String | 
destination_id = 'destination_id_example' # String | 
update_conversion_destination_request = Zernio::UpdateConversionDestinationRequest.new({ad_account_id: 'ad_account_id_example'}) # UpdateConversionDestinationRequest | 

begin
  # Update a conversion destination
  result = api_instance.update_conversion_destination(account_id, destination_id, update_conversion_destination_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->update_conversion_destination: #{e}"
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
  puts "Error when calling ConversionsApi->update_conversion_destination_with_http_info: #{e}"
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

