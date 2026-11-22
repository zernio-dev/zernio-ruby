# Zernio::ConversionsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_ad_conversion_associations**](ConversionsApi.md#add_ad_conversion_associations) | **POST** /v1/ads/conversions/destinations/{destinationId}/associations | Associate campaigns |
| [**add_conversion_associations**](ConversionsApi.md#add_conversion_associations) | **POST** /v1/accounts/{accountId}/conversion-destinations/{destinationId}/associations | Associate campaigns |
| [**adjust_conversions**](ConversionsApi.md#adjust_conversions) | **POST** /v1/ads/conversions/adjustments | Adjust uploaded conversions |
| [**check_tracking_site_proxy**](ConversionsApi.md#check_tracking_site_proxy) | **POST** /v1/tracking-sites/{siteId}/proxy-check | Check a tracking site&#39;s own-domain path |
| [**create_ad_conversion_destination**](ConversionsApi.md#create_ad_conversion_destination) | **POST** /v1/ads/conversions/destinations | Create a conversion destination |
| [**create_ad_custom_conversion**](ConversionsApi.md#create_ad_custom_conversion) | **POST** /v1/ads/conversions/custom-conversions | Create custom conversion |
| [**create_conversion_action**](ConversionsApi.md#create_conversion_action) | **POST** /v1/ads/conversions/actions | Create conversion action |
| [**create_conversion_destination**](ConversionsApi.md#create_conversion_destination) | **POST** /v1/accounts/{accountId}/conversion-destinations | Create a conversion destination |
| [**create_custom_conversion_goal**](ConversionsApi.md#create_custom_conversion_goal) | **POST** /v1/ads/conversions/custom-goals | Create a custom conversion goal |
| [**create_event_destination**](ConversionsApi.md#create_event_destination) | **POST** /v1/events/destinations | Add an event destination |
| [**create_forwarding_rule**](ConversionsApi.md#create_forwarding_rule) | **POST** /v1/events/forwarding-rules | Add a forwarding rule |
| [**create_tracking_site**](ConversionsApi.md#create_tracking_site) | **POST** /v1/tracking-sites | Turn on server-side tracking for a website |
| [**delete_ad_conversion_destination**](ConversionsApi.md#delete_ad_conversion_destination) | **DELETE** /v1/ads/conversions/destinations/{destinationId} | Delete a conversion destination |
| [**delete_conversion_destination**](ConversionsApi.md#delete_conversion_destination) | **DELETE** /v1/accounts/{accountId}/conversion-destinations/{destinationId} | Delete a conversion destination |
| [**delete_event_destination**](ConversionsApi.md#delete_event_destination) | **DELETE** /v1/events/destinations/{destinationId} | Remove an event destination |
| [**delete_forwarding_rule**](ConversionsApi.md#delete_forwarding_rule) | **DELETE** /v1/events/forwarding-rules/{ruleId} | Remove a forwarding rule |
| [**delete_tracking_site**](ConversionsApi.md#delete_tracking_site) | **DELETE** /v1/tracking-sites/{siteId} | Delete a tracking site |
| [**get_ad_conversion_destination**](ConversionsApi.md#get_ad_conversion_destination) | **GET** /v1/ads/conversions/destinations/{destinationId} | Get a conversion destination |
| [**get_ad_conversion_metrics**](ConversionsApi.md#get_ad_conversion_metrics) | **GET** /v1/ads/conversions/destinations/{destinationId}/metrics | Get attribution metrics |
| [**get_conversion_destination**](ConversionsApi.md#get_conversion_destination) | **GET** /v1/accounts/{accountId}/conversion-destinations/{destinationId} | Get a conversion destination |
| [**get_conversion_metrics**](ConversionsApi.md#get_conversion_metrics) | **GET** /v1/accounts/{accountId}/conversion-destinations/{destinationId}/metrics | Get attribution metrics |
| [**get_conversion_paths**](ConversionsApi.md#get_conversion_paths) | **GET** /v1/events/paths | List the touch paths that lead to conversions |
| [**get_conversions_quality**](ConversionsApi.md#get_conversions_quality) | **GET** /v1/ads/conversions/quality | Get Event Match Quality |
| [**get_event**](ConversionsApi.md#get_event) | **GET** /v1/events/{eventId} | Get one stored event and its deliveries |
| [**get_events_accuracy**](ConversionsApi.md#get_events_accuracy) | **GET** /v1/events/accuracy | Get delivery accuracy per destination |
| [**get_events_overview**](ConversionsApi.md#get_events_overview) | **GET** /v1/events/overview | Get today&#39;s tracking overview |
| [**get_events_overview_daily**](ConversionsApi.md#get_events_overview_daily) | **GET** /v1/events/overview/daily | Get daily tracking figures |
| [**get_ltv_cohorts**](ConversionsApi.md#get_ltv_cohorts) | **GET** /v1/events/ltv | Get buyer cohorts by first purchase month and first channel |
| [**get_survey_answers**](ConversionsApi.md#get_survey_answers) | **GET** /v1/events/survey | Get post-purchase survey answers |
| [**get_tracking_site**](ConversionsApi.md#get_tracking_site) | **GET** /v1/tracking-sites/{siteId} | Get a tracking site |
| [**list_ad_conversion_associations**](ConversionsApi.md#list_ad_conversion_associations) | **GET** /v1/ads/conversions/destinations/{destinationId}/associations | List associated campaigns |
| [**list_ad_conversion_destinations**](ConversionsApi.md#list_ad_conversion_destinations) | **GET** /v1/ads/conversions/destinations | List conversion destinations |
| [**list_ad_conversion_goals**](ConversionsApi.md#list_ad_conversion_goals) | **GET** /v1/ads/conversions/goals | List account conversion goals |
| [**list_ad_custom_conversions**](ConversionsApi.md#list_ad_custom_conversions) | **GET** /v1/ads/conversions/custom-conversions | List custom conversions |
| [**list_conversion_actions**](ConversionsApi.md#list_conversion_actions) | **GET** /v1/ads/conversions/actions | List conversion actions |
| [**list_conversion_associations**](ConversionsApi.md#list_conversion_associations) | **GET** /v1/accounts/{accountId}/conversion-destinations/{destinationId}/associations | List associated campaigns |
| [**list_conversion_destinations**](ConversionsApi.md#list_conversion_destinations) | **GET** /v1/accounts/{accountId}/conversion-destinations | List conversion destinations |
| [**list_custom_conversion_goals**](ConversionsApi.md#list_custom_conversion_goals) | **GET** /v1/ads/conversions/custom-goals | List custom conversion goals |
| [**list_event_destinations**](ConversionsApi.md#list_event_destinations) | **GET** /v1/events/destinations | List event destinations |
| [**list_event_names**](ConversionsApi.md#list_event_names) | **GET** /v1/events/names | List stored event names |
| [**list_events**](ConversionsApi.md#list_events) | **GET** /v1/events | List stored events |
| [**list_forwarding_rules**](ConversionsApi.md#list_forwarding_rules) | **GET** /v1/events/forwarding-rules | List forwarding rules |
| [**list_tracking_sites**](ConversionsApi.md#list_tracking_sites) | **GET** /v1/tracking-sites | List tracking sites |
| [**remove_ad_conversion_associations**](ConversionsApi.md#remove_ad_conversion_associations) | **DELETE** /v1/ads/conversions/destinations/{destinationId}/associations | Remove associated campaigns |
| [**remove_conversion_associations**](ConversionsApi.md#remove_conversion_associations) | **DELETE** /v1/accounts/{accountId}/conversion-destinations/{destinationId}/associations | Remove associated campaigns |
| [**remove_custom_conversion_goal**](ConversionsApi.md#remove_custom_conversion_goal) | **DELETE** /v1/ads/conversions/custom-goals/{goalId} | Remove a custom conversion goal |
| [**restate_event**](ConversionsApi.md#restate_event) | **PATCH** /v1/events/{eventId} | Change a stored event&#39;s value |
| [**retract_event**](ConversionsApi.md#retract_event) | **DELETE** /v1/events/{eventId} | Retract a stored event |
| [**rotate_tracking_site_key**](ConversionsApi.md#rotate_tracking_site_key) | **POST** /v1/tracking-sites/{siteId}/rotate-key | Rotate a tracking site&#39;s key |
| [**send_conversions**](ConversionsApi.md#send_conversions) | **POST** /v1/ads/conversions | Send conversion events to one destination (legacy) |
| [**send_events**](ConversionsApi.md#send_events) | **POST** /v1/events | Send events to every destination |
| [**update_ad_conversion_destination**](ConversionsApi.md#update_ad_conversion_destination) | **PATCH** /v1/ads/conversions/destinations/{destinationId} | Update a conversion destination |
| [**update_ad_conversion_goals**](ConversionsApi.md#update_ad_conversion_goals) | **PATCH** /v1/ads/conversions/goals | Update account conversion goals |
| [**update_conversion_action**](ConversionsApi.md#update_conversion_action) | **PATCH** /v1/ads/conversions/actions/{actionId} | Update a conversion action&#39;s settings |
| [**update_conversion_destination**](ConversionsApi.md#update_conversion_destination) | **PATCH** /v1/accounts/{accountId}/conversion-destinations/{destinationId} | Update a conversion destination |
| [**update_custom_conversion_goal**](ConversionsApi.md#update_custom_conversion_goal) | **PATCH** /v1/ads/conversions/custom-goals/{goalId} | Update a custom conversion goal |
| [**update_forwarding_rule**](ConversionsApi.md#update_forwarding_rule) | **PATCH** /v1/events/forwarding-rules/{ruleId} | Change a forwarding rule&#39;s API secret |
| [**update_tracking_site**](ConversionsApi.md#update_tracking_site) | **PATCH** /v1/tracking-sites/{siteId} | Update a tracking site |


## add_ad_conversion_associations

> <AddAdConversionAssociations200Response> add_ad_conversion_associations(destination_id, add_ad_conversion_associations_request)

Associate campaigns

Links campaigns to a LinkedIn conversion rule so they track it, reporting which links succeeded or failed.  Returns a per-campaign success/failure result so callers can retry only the rows that failed (e.g. wrong campaign type for the rule's objective). 

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
destination_id = 'destination_id_example' # String | 
add_ad_conversion_associations_request = Zernio::AddAdConversionAssociationsRequest.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example', campaign_ids: ['campaign_ids_example']}) # AddAdConversionAssociationsRequest | 

begin
  # Associate campaigns
  result = api_instance.add_ad_conversion_associations(destination_id, add_ad_conversion_associations_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->add_ad_conversion_associations: #{e}"
end
```

#### Using the add_ad_conversion_associations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddAdConversionAssociations200Response>, Integer, Hash)> add_ad_conversion_associations_with_http_info(destination_id, add_ad_conversion_associations_request)

```ruby
begin
  # Associate campaigns
  data, status_code, headers = api_instance.add_ad_conversion_associations_with_http_info(destination_id, add_ad_conversion_associations_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddAdConversionAssociations200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->add_ad_conversion_associations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **destination_id** | **String** |  |  |
| **add_ad_conversion_associations_request** | [**AddAdConversionAssociationsRequest**](AddAdConversionAssociationsRequest.md) |  |  |

### Return type

[**AddAdConversionAssociations200Response**](AddAdConversionAssociations200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_conversion_associations

> <AddAdConversionAssociations200Response> add_conversion_associations(account_id, destination_id, add_conversion_associations_request)

Associate campaigns

The first path of `POST /v1/ads/conversions/destinations/{destinationId}/associations` (`addAdConversionAssociations`), which does the same with `accountId` as a parameter. It keeps working. 

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

> <Array(<AddAdConversionAssociations200Response>, Integer, Hash)> add_conversion_associations_with_http_info(account_id, destination_id, add_conversion_associations_request)

```ruby
begin
  # Associate campaigns
  data, status_code, headers = api_instance.add_conversion_associations_with_http_info(account_id, destination_id, add_conversion_associations_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddAdConversionAssociations200Response>
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

[**AddAdConversionAssociations200Response**](AddAdConversionAssociations200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## adjust_conversions

> <AdjustConversions200Response> adjust_conversions(adjust_conversions_request)

Adjust uploaded conversions

Retracts, restates the value of, or enhances conversions you already sent to Google Ads, for refunds or late customer data. To change Zernio's stored event too, and every platform at once, use `PATCH` or `DELETE /v1/events/{eventId}`.  It adjusts conversions previously uploaded via `POST /v1/ads/conversions`: retract them, restate their value, or enhance them with first-party data. Requires the Ads add-on.  ### Google Ads only  Google handles adjustments through the classic Google Ads API (`ConversionAdjustmentUploadService`). The Data Manager `ingestEvents` path used for sending conversions is ingest-only. Meta and LinkedIn have no equivalent, so this endpoint returns `405` for those platforms.  ### Adjustment types  - `RETRACTION`: remove the conversion entirely (refund, chargeback, cancelled order, churn). - `RESTATEMENT`: change the conversion's value (upgrade / downgrade / partial refund). Send the corrected **total** value in `restatementValue` (not a delta). - `ENHANCEMENT`: attach first-party identifiers (hashed email / phone) to an existing conversion (enhanced conversions applied after the fact).  ### Identifying the original conversion  Per adjustment, send one of:  - `orderId`: the transaction ID you sent as `eventId` on the original conversion. Recommended, and **required** for `ENHANCEMENT`. - `gclid` + `conversionTime`: the click ID and the original conversion's time (unix seconds). Not available for `ENHANCEMENT`.  ### Other fields  - `destinationId` is the conversion action resource name, e.g. `customers/1234567890/conversionActions/987654321` (same value you send to `POST /v1/ads/conversions`). - PII in `user` is hashed with SHA-256 server-side (Gmail-specific normalization included). Send plaintext. - Times are unix seconds; we convert to Google's required `yyyy-MM-dd HH:mm:ss+00:00` format.  ### Limits  Up to 2000 adjustments per request. Partial failure is supported (inspect `adjustmentsFailed` / `failures[]`). 

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


## check_tracking_site_proxy

> <CreateTrackingSite201Response> check_tracking_site_proxy(site_id)

Check a tracking site's own-domain path

Loads `https://<first domain><proxyPath>/z.js` from Zernio's servers and records whether your proxy serves the tag, signed, in `proxy.status`. Once `verified`, cookies come from your own domain and Safari keeps them; a connected Tag Manager container moves to the path. Also runs after `proxyPath` changes.

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
site_id = 'site_id_example' # String | 

begin
  # Check a tracking site's own-domain path
  result = api_instance.check_tracking_site_proxy(site_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->check_tracking_site_proxy: #{e}"
end
```

#### Using the check_tracking_site_proxy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTrackingSite201Response>, Integer, Hash)> check_tracking_site_proxy_with_http_info(site_id)

```ruby
begin
  # Check a tracking site's own-domain path
  data, status_code, headers = api_instance.check_tracking_site_proxy_with_http_info(site_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTrackingSite201Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->check_tracking_site_proxy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_id** | **String** |  |  |

### Return type

[**CreateTrackingSite201Response**](CreateTrackingSite201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_ad_conversion_destination

> <CreateAdConversionDestination201Response> create_ad_conversion_destination(create_ad_conversion_destination_request)

Create a conversion destination

Creates a new place to send conversion events: a Google Ads conversion action or a LinkedIn conversion rule.  Supported for LinkedIn (conversion rule) and Google Ads (conversion action). It returns 405 for:  - Meta and OpenAI Ads: their pixels are created via their own tracking-tags flow instead (`POST /v1/accounts/{accountId}/tracking-tags`) - Reddit: create Reddit pixels in Reddit Ads Manager  ### LinkedIn  Creation is NOT idempotent. A retry creates a second destination. Deduplicate before retrying.  The rule is created with `conversionMethod=CONVERSIONS_API` and (by default) auto-associated with all of the ad account's campaigns via `autoAssociationType=ALL_CAMPAIGNS`. Pass `autoAssociationType: NONE` to opt out and manage associations explicitly via the associations endpoints below.  365-day attribution windows are only valid for these rule types; the API rejects other combinations locally:  - `SUBMIT_APPLICATION` - `PURCHASE` - `ADD_TO_CART` - `QUALIFIED_LEAD` - `LEAD`  ### Google Ads  Calling with a name that already exists reuses the existing conversion action transparently (the response is identical to a fresh create).  Calling with the same name but a different category, or a name already used by a website (`WEBPAGE`) action, returns a typed `IDEMPOTENCY_CONFLICT` (409) rather than silently returning the mismatched action.  The conversion action is created with `type=UPLOAD_CLICKS` (required for API-uploaded offline conversions, immutable after creation).  The `type` field carries the Google `ConversionActionCategory` enum value, e.g. `PURCHASE`, `SUBSCRIBE_PAID`, `SIGNUP`, `IMPORTED_LEAD`, `BOOK_APPOINTMENT`. Unified standard event names (e.g. `Purchase`, `Subscribe`, `CompleteRegistration`, `Lead`, `Schedule`) are resolved to their Google category equivalents automatically.  The action defaults to secondary (non-primary) to avoid immediately steering Smart Bidding; pass `primaryForGoal: true` to opt in. 

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
create_ad_conversion_destination_request = Zernio::CreateAdConversionDestinationRequest.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example', name: 'name_example', type: 'type_example'}) # CreateAdConversionDestinationRequest | 

begin
  # Create a conversion destination
  result = api_instance.create_ad_conversion_destination(create_ad_conversion_destination_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->create_ad_conversion_destination: #{e}"
end
```

#### Using the create_ad_conversion_destination_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAdConversionDestination201Response>, Integer, Hash)> create_ad_conversion_destination_with_http_info(create_ad_conversion_destination_request)

```ruby
begin
  # Create a conversion destination
  data, status_code, headers = api_instance.create_ad_conversion_destination_with_http_info(create_ad_conversion_destination_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAdConversionDestination201Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->create_ad_conversion_destination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_ad_conversion_destination_request** | [**CreateAdConversionDestinationRequest**](CreateAdConversionDestinationRequest.md) |  |  |

### Return type

[**CreateAdConversionDestination201Response**](CreateAdConversionDestination201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ad_custom_conversion

> <CustomConversionResult> create_ad_custom_conversion(create_ad_custom_conversion_request)

Create custom conversion

Creates a Meta custom conversion for ads to optimise toward, reusing an existing one with the same name and pixel.  It provisions the Meta custom conversion an ads flow optimises toward, and hands back the `customConversionId` for `promotedObject.customConversionId` on POST /v1/ads/create. This removes the manual \"create it in Ads Manager first\" step.  ### Reuse is ours, not Meta's  Meta's create is not idempotent, so a retried request would otherwise mint a duplicate carrying none of the original's optimisation history.  A non-archived conversion with the same `name` on the same `pixelId` is returned instead of created, with `reused: true` and a 200 rather than a 201.  ### Rule  `rule` is forwarded verbatim in Meta's own grammar (e.g. `{\"url\": {\"i_contains\": \"thank-you\"}}`). Meta validates it and rejects a malformed one with \"A conversion rule is required at creation time\". 

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
create_ad_custom_conversion_request = Zernio::CreateAdCustomConversionRequest.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example', name: 'name_example', pixel_id: 'pixel_id_example', custom_event_type: 'custom_event_type_example', rule: 3.56}) # CreateAdCustomConversionRequest | 

begin
  # Create custom conversion
  result = api_instance.create_ad_custom_conversion(create_ad_custom_conversion_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->create_ad_custom_conversion: #{e}"
end
```

#### Using the create_ad_custom_conversion_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomConversionResult>, Integer, Hash)> create_ad_custom_conversion_with_http_info(create_ad_custom_conversion_request)

```ruby
begin
  # Create custom conversion
  data, status_code, headers = api_instance.create_ad_custom_conversion_with_http_info(create_ad_custom_conversion_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomConversionResult>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->create_ad_custom_conversion_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_ad_custom_conversion_request** | [**CreateAdCustomConversionRequest**](CreateAdCustomConversionRequest.md) |  |  |

### Return type

[**CustomConversionResult**](CustomConversionResult.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_conversion_action

> <CreateConversionAction201Response> create_conversion_action(create_conversion_action_request)

Create conversion action

Creates a Google Ads conversion action: a website one counted by a tag on your site, or one counted from the conversions you send to Zernio.  - `type: WEBPAGE` creates a website action and returns it with the tag snippets to install, read back after creation since Google never returns them on the create response itself. - `type: UPLOAD_CLICKS` creates an action for the conversions sent with `POST /v1/events`, the same action `POST /v1/ads/conversions/destinations` creates. It is secondary unless `primaryForGoal: true`.  The category defaults to `DEFAULT`. A name already used by another action returns Google's error.  Clears the cached list that `GET` on this resource would otherwise keep serving. Google-only; other platforms return `501`. Requires the Ads add-on. 

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
create_conversion_action_request = Zernio::CreateConversionActionRequest.new({account_id: 'account_id_example', name: 'name_example', type: 'WEBPAGE'}) # CreateConversionActionRequest | 

begin
  # Create conversion action
  result = api_instance.create_conversion_action(create_conversion_action_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->create_conversion_action: #{e}"
end
```

#### Using the create_conversion_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateConversionAction201Response>, Integer, Hash)> create_conversion_action_with_http_info(create_conversion_action_request)

```ruby
begin
  # Create conversion action
  data, status_code, headers = api_instance.create_conversion_action_with_http_info(create_conversion_action_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateConversionAction201Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->create_conversion_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_conversion_action_request** | [**CreateConversionActionRequest**](CreateConversionActionRequest.md) |  |  |

### Return type

[**CreateConversionAction201Response**](CreateConversionAction201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_conversion_destination

> <CreateAdConversionDestination201Response> create_conversion_destination(account_id, create_conversion_destination_request)

Create a conversion destination

The first path of `POST /v1/ads/conversions/destinations` (`createAdConversionDestination`), which does the same with `accountId` as a parameter. It keeps working. 

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

> <Array(<CreateAdConversionDestination201Response>, Integer, Hash)> create_conversion_destination_with_http_info(account_id, create_conversion_destination_request)

```ruby
begin
  # Create a conversion destination
  data, status_code, headers = api_instance.create_conversion_destination_with_http_info(account_id, create_conversion_destination_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAdConversionDestination201Response>
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

[**CreateAdConversionDestination201Response**](CreateAdConversionDestination201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_custom_conversion_goal

> <CreateSharedBudget201ResponseBudget> create_custom_conversion_goal(create_custom_conversion_goal_request)

Create a custom conversion goal

Creates a Google Ads custom conversion goal from a set of conversion actions, so a campaign can bid on just those.  Creates a custom conversion goal from conversion action ids. Point a campaign at it with `PATCH /v1/ads/campaigns/{campaignId}/conversion-goals`. 

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
create_custom_conversion_goal_request = Zernio::CreateCustomConversionGoalRequest.new({account_id: 'account_id_example', name: 'name_example', conversion_action_ids: ['conversion_action_ids_example']}) # CreateCustomConversionGoalRequest | 

begin
  # Create a custom conversion goal
  result = api_instance.create_custom_conversion_goal(create_custom_conversion_goal_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->create_custom_conversion_goal: #{e}"
end
```

#### Using the create_custom_conversion_goal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSharedBudget201ResponseBudget>, Integer, Hash)> create_custom_conversion_goal_with_http_info(create_custom_conversion_goal_request)

```ruby
begin
  # Create a custom conversion goal
  data, status_code, headers = api_instance.create_custom_conversion_goal_with_http_info(create_custom_conversion_goal_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSharedBudget201ResponseBudget>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->create_custom_conversion_goal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_custom_conversion_goal_request** | [**CreateCustomConversionGoalRequest**](CreateCustomConversionGoalRequest.md) |  |  |

### Return type

[**CreateSharedBudget201ResponseBudget**](CreateSharedBudget201ResponseBudget.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_event_destination

> <CreateEventDestination201Response> create_event_destination(create_event_destination_request)

Add an event destination

The first name of `POST /v1/events/forwarding-rules`, which saves the same rule. It keeps working and answers under `destination`.

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
create_event_destination_request = Zernio::CreateEventDestinationRequest.new({profile_id: 'profile_id_example', account_id: 'account_id_example', destination_id: 'destination_id_example'}) # CreateEventDestinationRequest | 

begin
  # Add an event destination
  result = api_instance.create_event_destination(create_event_destination_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->create_event_destination: #{e}"
end
```

#### Using the create_event_destination_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateEventDestination201Response>, Integer, Hash)> create_event_destination_with_http_info(create_event_destination_request)

```ruby
begin
  # Add an event destination
  data, status_code, headers = api_instance.create_event_destination_with_http_info(create_event_destination_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateEventDestination201Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->create_event_destination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_event_destination_request** | [**CreateEventDestinationRequest**](CreateEventDestinationRequest.md) |  |  |

### Return type

[**CreateEventDestination201Response**](CreateEventDestination201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_forwarding_rule

> <CreateForwardingRule201Response> create_forwarding_rule(create_forwarding_rule_request)

Add a forwarding rule

Saves where a profile's events go: every event sent to `POST /v1/events` for that profile is then forwarded to this destination.  Pick `destinationId` from `GET /v1/ads/conversions/destinations`. Set `eventNames` to forward only those events, such as only `Purchase`; leave it out to forward every event. 

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
create_forwarding_rule_request = Zernio::CreateForwardingRuleRequest.new({profile_id: 'profile_id_example', account_id: 'account_id_example', destination_id: 'destination_id_example'}) # CreateForwardingRuleRequest | 

begin
  # Add a forwarding rule
  result = api_instance.create_forwarding_rule(create_forwarding_rule_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->create_forwarding_rule: #{e}"
end
```

#### Using the create_forwarding_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateForwardingRule201Response>, Integer, Hash)> create_forwarding_rule_with_http_info(create_forwarding_rule_request)

```ruby
begin
  # Add a forwarding rule
  data, status_code, headers = api_instance.create_forwarding_rule_with_http_info(create_forwarding_rule_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateForwardingRule201Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->create_forwarding_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_forwarding_rule_request** | [**CreateForwardingRuleRequest**](CreateForwardingRuleRequest.md) |  |  |

### Return type

[**CreateForwardingRule201Response**](CreateForwardingRule201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_tracking_site

> <CreateTrackingSite201Response> create_tracking_site(idempotency_key, create_tracking_site_request)

Turn on server-side tracking for a website

Creates a tracking site. With `storeAccountId`, Zernio installs its tag on the connected Shopify, WordPress (WooCommerce), Wix or Webflow store. With only `url`, paste the returned `install.snippet` into the site. Adding a `url` the profile already tracks returns that site and its snippet instead of creating a second one.  The ad accounts you picked for each connection get a forwarding rule, so website conversions reach them at once. `checks` shows each step; `setup.status` turns `ready` when all have passed. 

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
idempotency_key = 'idempotency_key_example' # String | A unique key per site you create, such as a UUID. A retry with the same key and body returns the same site.
create_tracking_site_request = Zernio::AnyWebsite.new({profile_id: 'profile_id_example', url: 'url_example'}) # CreateTrackingSiteRequest | 

begin
  # Turn on server-side tracking for a website
  result = api_instance.create_tracking_site(idempotency_key, create_tracking_site_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->create_tracking_site: #{e}"
end
```

#### Using the create_tracking_site_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTrackingSite201Response>, Integer, Hash)> create_tracking_site_with_http_info(idempotency_key, create_tracking_site_request)

```ruby
begin
  # Turn on server-side tracking for a website
  data, status_code, headers = api_instance.create_tracking_site_with_http_info(idempotency_key, create_tracking_site_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTrackingSite201Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->create_tracking_site_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idempotency_key** | **String** | A unique key per site you create, such as a UUID. A retry with the same key and body returns the same site. |  |
| **create_tracking_site_request** | [**CreateTrackingSiteRequest**](CreateTrackingSiteRequest.md) |  |  |

### Return type

[**CreateTrackingSite201Response**](CreateTrackingSite201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_ad_conversion_destination

> delete_ad_conversion_destination(account_id, destination_id, opts)

Delete a conversion destination

Disables a LinkedIn conversion rule, which is how LinkedIn deletes it; the rule can still be read afterwards.  LinkedIn-only today. LinkedIn does not expose hard-delete on conversion rules; what their UI calls \"delete\" is the same `enabled: false` flip we apply here. The rule remains fetchable via GET with `status: 'inactive'`; the unified discovery endpoint hides it by default.  `adAccountId` may be passed as a query parameter (recommended) or as a JSON body field for clients that can send DELETE bodies. 

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
account_id = 'account_id_example' # String | The connected ads account (SocialAccount ID).
destination_id = 'destination_id_example' # String | 
opts = {
  ad_account_id: 'ad_account_id_example' # String | Required as query OR in JSON body.
}

begin
  # Delete a conversion destination
  api_instance.delete_ad_conversion_destination(account_id, destination_id, opts)
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->delete_ad_conversion_destination: #{e}"
end
```

#### Using the delete_ad_conversion_destination_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_ad_conversion_destination_with_http_info(account_id, destination_id, opts)

```ruby
begin
  # Delete a conversion destination
  data, status_code, headers = api_instance.delete_ad_conversion_destination_with_http_info(account_id, destination_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->delete_ad_conversion_destination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The connected ads account (SocialAccount ID). |  |
| **destination_id** | **String** |  |  |
| **ad_account_id** | **String** | Required as query OR in JSON body. | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_conversion_destination

> delete_conversion_destination(account_id, destination_id, opts)

Delete a conversion destination

The first path of `DELETE /v1/ads/conversions/destinations/{destinationId}` (`deleteAdConversionDestination`), which does the same with `accountId` as a parameter. It keeps working. 

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


## delete_event_destination

> <DeleteSmsSenderId200Response> delete_event_destination(destination_id)

Remove an event destination

The first name of `DELETE /v1/events/forwarding-rules/{ruleId}`. `destinationId` here is the rule `id`, not the platform destination.

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
destination_id = 'destination_id_example' # String | 

begin
  # Remove an event destination
  result = api_instance.delete_event_destination(destination_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->delete_event_destination: #{e}"
end
```

#### Using the delete_event_destination_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteSmsSenderId200Response>, Integer, Hash)> delete_event_destination_with_http_info(destination_id)

```ruby
begin
  # Remove an event destination
  data, status_code, headers = api_instance.delete_event_destination_with_http_info(destination_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteSmsSenderId200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->delete_event_destination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **destination_id** | **String** |  |  |

### Return type

[**DeleteSmsSenderId200Response**](DeleteSmsSenderId200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_forwarding_rule

> <DeleteSmsSenderId200Response> delete_forwarding_rule(rule_id)

Remove a forwarding rule

Stops forwarding events to this rule's destination. Events already sent are not affected.

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
rule_id = 'rule_id_example' # String | The rule `id`.

begin
  # Remove a forwarding rule
  result = api_instance.delete_forwarding_rule(rule_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->delete_forwarding_rule: #{e}"
end
```

#### Using the delete_forwarding_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteSmsSenderId200Response>, Integer, Hash)> delete_forwarding_rule_with_http_info(rule_id)

```ruby
begin
  # Remove a forwarding rule
  data, status_code, headers = api_instance.delete_forwarding_rule_with_http_info(rule_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteSmsSenderId200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->delete_forwarding_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_id** | **String** | The rule &#x60;id&#x60;. |  |

### Return type

[**DeleteSmsSenderId200Response**](DeleteSmsSenderId200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_tracking_site

> delete_tracking_site(site_id)

Delete a tracking site

Stops collecting at once, removes the tag from the connected store and releases the custom subdomain. Events already stored are kept.

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
site_id = 'site_id_example' # String | 

begin
  # Delete a tracking site
  api_instance.delete_tracking_site(site_id)
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->delete_tracking_site: #{e}"
end
```

#### Using the delete_tracking_site_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_tracking_site_with_http_info(site_id)

```ruby
begin
  # Delete a tracking site
  data, status_code, headers = api_instance.delete_tracking_site_with_http_info(site_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->delete_tracking_site_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ad_conversion_destination

> <GetAdConversionDestination200Response> get_ad_conversion_destination(account_id, destination_id, ad_account_id)

Get a conversion destination

Shows one LinkedIn conversion rule with its full settings.  LinkedIn-only today. Returns the full destination record for one conversion rule. The `adAccountId` query parameter is required because LinkedIn rules are scoped to a sponsored ad account. 

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
account_id = 'account_id_example' # String | The connected ads account (SocialAccount ID).
destination_id = 'destination_id_example' # String | 
ad_account_id = 'ad_account_id_example' # String | Numeric ID or full `urn:li:sponsoredAccount:{id}` URN.

begin
  # Get a conversion destination
  result = api_instance.get_ad_conversion_destination(account_id, destination_id, ad_account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->get_ad_conversion_destination: #{e}"
end
```

#### Using the get_ad_conversion_destination_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAdConversionDestination200Response>, Integer, Hash)> get_ad_conversion_destination_with_http_info(account_id, destination_id, ad_account_id)

```ruby
begin
  # Get a conversion destination
  data, status_code, headers = api_instance.get_ad_conversion_destination_with_http_info(account_id, destination_id, ad_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAdConversionDestination200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->get_ad_conversion_destination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The connected ads account (SocialAccount ID). |  |
| **destination_id** | **String** |  |  |
| **ad_account_id** | **String** | Numeric ID or full &#x60;urn:li:sponsoredAccount:{id}&#x60; URN. |  |

### Return type

[**GetAdConversionDestination200Response**](GetAdConversionDestination200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ad_conversion_metrics

> <GetAdConversionMetrics200Response> get_ad_conversion_metrics(account_id, destination_id, ad_account_id, start_date, opts)

Get attribution metrics

Shows a LinkedIn conversion rule's attributed conversions, value, leads and cost over time.  LinkedIn-only today. Returns conversion-attribution metrics (`externalWebsiteConversions`, `externalWebsitePostClickConversions`, `externalWebsitePostViewConversions`, `conversionValueInLocalCurrency`, `qualifiedLeads`, `costInLocalCurrency`) bucketed by date.  Date-range constraints (passed through from LinkedIn): - `granularity=DAILY` is retained for ~6 months only - `granularity=ALL` with a range > 6 months auto-rounds to month boundaries - `granularity=MONTHLY`/`YEARLY` retains 24 months  Throttle: LinkedIn caps adAnalytics at 45M metric values per 5-minute window across the calling token. Single-rule queries are well within that limit; surfaces as 429 if hit. 

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
account_id = 'account_id_example' # String | The connected ads account (SocialAccount ID).
destination_id = 'destination_id_example' # String | 
ad_account_id = 'ad_account_id_example' # String | 
start_date = 'start_date_example' # String | 
opts = {
  end_date: 'end_date_example', # String | 
  granularity: 'ALL' # String | 
}

begin
  # Get attribution metrics
  result = api_instance.get_ad_conversion_metrics(account_id, destination_id, ad_account_id, start_date, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->get_ad_conversion_metrics: #{e}"
end
```

#### Using the get_ad_conversion_metrics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAdConversionMetrics200Response>, Integer, Hash)> get_ad_conversion_metrics_with_http_info(account_id, destination_id, ad_account_id, start_date, opts)

```ruby
begin
  # Get attribution metrics
  data, status_code, headers = api_instance.get_ad_conversion_metrics_with_http_info(account_id, destination_id, ad_account_id, start_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAdConversionMetrics200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->get_ad_conversion_metrics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The connected ads account (SocialAccount ID). |  |
| **destination_id** | **String** |  |  |
| **ad_account_id** | **String** |  |  |
| **start_date** | **String** |  |  |
| **end_date** | **String** |  | [optional] |
| **granularity** | **String** |  | [optional][default to &#39;DAILY&#39;] |

### Return type

[**GetAdConversionMetrics200Response**](GetAdConversionMetrics200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_conversion_destination

> <GetAdConversionDestination200Response> get_conversion_destination(account_id, destination_id, ad_account_id)

Get a conversion destination

The first path of `GET /v1/ads/conversions/destinations/{destinationId}` (`getAdConversionDestination`), which does the same with `accountId` as a parameter. It keeps working. 

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

> <Array(<GetAdConversionDestination200Response>, Integer, Hash)> get_conversion_destination_with_http_info(account_id, destination_id, ad_account_id)

```ruby
begin
  # Get a conversion destination
  data, status_code, headers = api_instance.get_conversion_destination_with_http_info(account_id, destination_id, ad_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAdConversionDestination200Response>
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

[**GetAdConversionDestination200Response**](GetAdConversionDestination200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_conversion_metrics

> <GetAdConversionMetrics200Response> get_conversion_metrics(account_id, destination_id, ad_account_id, start_date, opts)

Get attribution metrics

The first path of `GET /v1/ads/conversions/destinations/{destinationId}/metrics` (`getAdConversionMetrics`), which does the same with `accountId` as a parameter. It keeps working. 

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

> <Array(<GetAdConversionMetrics200Response>, Integer, Hash)> get_conversion_metrics_with_http_info(account_id, destination_id, ad_account_id, start_date, opts)

```ruby
begin
  # Get attribution metrics
  data, status_code, headers = api_instance.get_conversion_metrics_with_http_info(account_id, destination_id, ad_account_id, start_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAdConversionMetrics200Response>
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

[**GetAdConversionMetrics200Response**](GetAdConversionMetrics200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_conversion_paths

> <GetConversionPaths200Response> get_conversion_paths(from_date, to_date, opts)

List the touch paths that lead to conversions

The most frequent sequences of touches people made before a conversion (sale, lead or another counted event) whose time falls in the range: ad clicks, tagged visits, search, referrals and earlier lead forms, oldest first.  Only conversions with more than one touch have a path. Without `profileId` it covers every profile you can access. Requires the Ads add-on. 

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
from_date = Date.parse('2013-10-20') # Date | 
to_date = Date.parse('2013-10-20') # Date | Inclusive. At most 400 days after `fromDate`.
opts = {
  profile_id: 'profile_id_example', # String | The profile to read. Omit for every profile you can access.
  limit: 56 # Integer | 
}

begin
  # List the touch paths that lead to conversions
  result = api_instance.get_conversion_paths(from_date, to_date, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->get_conversion_paths: #{e}"
end
```

#### Using the get_conversion_paths_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetConversionPaths200Response>, Integer, Hash)> get_conversion_paths_with_http_info(from_date, to_date, opts)

```ruby
begin
  # List the touch paths that lead to conversions
  data, status_code, headers = api_instance.get_conversion_paths_with_http_info(from_date, to_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetConversionPaths200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->get_conversion_paths_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from_date** | **Date** |  |  |
| **to_date** | **Date** | Inclusive. At most 400 days after &#x60;fromDate&#x60;. |  |
| **profile_id** | **String** | The profile to read. Omit for every profile you can access. | [optional] |
| **limit** | **Integer** |  | [optional][default to 10] |

### Return type

[**GetConversionPaths200Response**](GetConversionPaths200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_conversions_quality

> <GetConversionsQuality200Response> get_conversions_quality(account_id, destination_id)

Get Event Match Quality

Shows how well your server-side conversion events match users, with event match quality and coverage for Meta or Pinterest.  Reads Meta Event Match Quality (EMQ) and pixel↔CAPI event coverage for a pixel/dataset, live from Meta's Dataset Quality API. Web events only (a Meta limitation). Other platforms return 405, except Pinterest. Requires the Ads add-on.  Pinterest (`pinterestads`): `destinationId` is the numeric ad account id. Rows come from Pinterest's Event Quality Score for Conversions API web events over the last 14 days, one per event name, with each identifier's coverage in `matchKeys` and `eventCoveragePercentage` set to the tag/API `event_id` overlap. No `compositeScore`. 

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
account_id = 'account_id_example' # String | SocialAccount _id (a metaads or pinterestads account).
destination_id = 'destination_id_example' # String | Meta pixel/dataset ID, or the numeric Pinterest ad account id.

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
| **account_id** | **String** | SocialAccount _id (a metaads or pinterestads account). |  |
| **destination_id** | **String** | Meta pixel/dataset ID, or the numeric Pinterest ad account id. |  |

### Return type

[**GetConversionsQuality200Response**](GetConversionsQuality200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_event

> <GetEvent200Response> get_event(event_id, profile_id)

Get one stored event and its deliveries

Returns one stored event of a profile (the latest copy of it) and, for each destination it was forwarded to, the newest send: `sent`, `retrying` (failed for now and queued again) or `failed` (final). Requires the Ads add-on. 

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
event_id = 'event_id_example' # String | The `eventId` the event was sent with.
profile_id = 'profile_id_example' # String | Profile the event belongs to.

begin
  # Get one stored event and its deliveries
  result = api_instance.get_event(event_id, profile_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->get_event: #{e}"
end
```

#### Using the get_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEvent200Response>, Integer, Hash)> get_event_with_http_info(event_id, profile_id)

```ruby
begin
  # Get one stored event and its deliveries
  data, status_code, headers = api_instance.get_event_with_http_info(event_id, profile_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEvent200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->get_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | The &#x60;eventId&#x60; the event was sent with. |  |
| **profile_id** | **String** | Profile the event belongs to. |  |

### Return type

[**GetEvent200Response**](GetEvent200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_events_accuracy

> <GetEventsAccuracy200Response> get_events_accuracy(opts)

Get delivery accuracy per destination

For each forwarding rule of a profile: what its destination received over a period, and how many of the profile's real sales reached it.  `deliveries` counts every event sent to the destination in the period, whatever its source, by the latest outcome of each. `accuracy` compares only sales: Shopify and WooCommerce orders and Stripe payments, as Elevar's Channel Accuracy does. Sales a rule leaves out by choice do not count against it.  Without `profileId` it covers every profile you can access. Requires the Ads add-on. 

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
opts = {
  profile_id: 'profile_id_example', # String | The profile to read. Omit to cover every profile you can access.
  period: 'today' # String | The window, ending now: `today` (since 00:00 UTC), or the last 7, 30 or 90 days.
}

begin
  # Get delivery accuracy per destination
  result = api_instance.get_events_accuracy(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->get_events_accuracy: #{e}"
end
```

#### Using the get_events_accuracy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEventsAccuracy200Response>, Integer, Hash)> get_events_accuracy_with_http_info(opts)

```ruby
begin
  # Get delivery accuracy per destination
  data, status_code, headers = api_instance.get_events_accuracy_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEventsAccuracy200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->get_events_accuracy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | The profile to read. Omit to cover every profile you can access. | [optional] |
| **period** | **String** | The window, ending now: &#x60;today&#x60; (since 00:00 UTC), or the last 7, 30 or 90 days. | [optional][default to &#39;7d&#39;] |

### Return type

[**GetEventsAccuracy200Response**](GetEventsAccuracy200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_events_overview

> <GetEventsOverview200Response> get_events_overview(opts)

Get today's tracking overview

How a profile's conversion tracking is doing today (UTC day): events stored, how many reached the ad platforms, each forwarding rule's destination, each event source and, when the profile has a tracking site, the site's funnel.  Without `profileId` it covers every profile you can access, summed across them. Requires the Ads add-on. 

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
opts = {
  profile_id: 'profile_id_example' # String | The profile to read. Omit to cover every profile you can access, summed across them.
}

begin
  # Get today's tracking overview
  result = api_instance.get_events_overview(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->get_events_overview: #{e}"
end
```

#### Using the get_events_overview_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEventsOverview200Response>, Integer, Hash)> get_events_overview_with_http_info(opts)

```ruby
begin
  # Get today's tracking overview
  data, status_code, headers = api_instance.get_events_overview_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEventsOverview200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->get_events_overview_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | The profile to read. Omit to cover every profile you can access, summed across them. | [optional] |

### Return type

[**GetEventsOverview200Response**](GetEventsOverview200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_events_overview_daily

> <GetEventsOverviewDaily200Response> get_events_overview_daily(opts)

Get daily tracking figures

The tracking figures of a period, day by day (UTC): events stored per event name, events sent to each ad platform and how many it accepted, the period's totals in the same shape as the overview's `today`, and how many website conversions each platform's browser pixel missed.  An event sent to a destination counts once, on the day of its first send, by its latest outcome. Without `profileId` it covers every profile you can access. `eventName`, `sources` and `platform` narrow every figure. Requires the Ads add-on. 

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
opts = {
  profile_id: 'profile_id_example', # String | The profile to read. Omit to cover every profile you can access, summed across them.
  period: 'today', # String | The days to cover, each ending today (UTC): `today`, the last 7, 30 or 90 days.
  event_name: 'event_name_example', # String | Only events of this name, such as `Purchase`.
  sources: 'sources_example', # String | Comma-separated sources (`web`, `shopify`, `stripe`, `api`...). Only events from them.
  platform: 'platform_example' # String | Only sends to this platform (`metaads`, `googleads`...), and only the events sent to it.
}

begin
  # Get daily tracking figures
  result = api_instance.get_events_overview_daily(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->get_events_overview_daily: #{e}"
end
```

#### Using the get_events_overview_daily_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEventsOverviewDaily200Response>, Integer, Hash)> get_events_overview_daily_with_http_info(opts)

```ruby
begin
  # Get daily tracking figures
  data, status_code, headers = api_instance.get_events_overview_daily_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEventsOverviewDaily200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->get_events_overview_daily_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | The profile to read. Omit to cover every profile you can access, summed across them. | [optional] |
| **period** | **String** | The days to cover, each ending today (UTC): &#x60;today&#x60;, the last 7, 30 or 90 days. | [optional][default to &#39;7d&#39;] |
| **event_name** | **String** | Only events of this name, such as &#x60;Purchase&#x60;. | [optional] |
| **sources** | **String** | Comma-separated sources (&#x60;web&#x60;, &#x60;shopify&#x60;, &#x60;stripe&#x60;, &#x60;api&#x60;...). Only events from them. | [optional] |
| **platform** | **String** | Only sends to this platform (&#x60;metaads&#x60;, &#x60;googleads&#x60;...), and only the events sent to it. | [optional] |

### Return type

[**GetEventsOverviewDaily200Response**](GetEventsOverviewDaily200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ltv_cohorts

> <GetLtvCohorts200Response> get_ltv_cohorts(from_month, to_month, opts)

Get buyer cohorts by first purchase month and first channel

Buyers grouped by the month of their first purchase and the platform that first brought them, with their purchases added up over the year after (months 0, 1, 3, 6 and 12).  A buyer is a hashed email, else external id, else phone. The first channel is the first touch's platform, else the first purchase's own campaign, else `none`. Values stay in each purchase's currency, one row per currency. Requires the Ads add-on. 

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
from_month = '2026-01' # String | 
to_month = '2026-11' # String | 
opts = {
  profile_id: 'profile_id_example' # String | The profile to read. Omit for every profile you can access.
}

begin
  # Get buyer cohorts by first purchase month and first channel
  result = api_instance.get_ltv_cohorts(from_month, to_month, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->get_ltv_cohorts: #{e}"
end
```

#### Using the get_ltv_cohorts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLtvCohorts200Response>, Integer, Hash)> get_ltv_cohorts_with_http_info(from_month, to_month, opts)

```ruby
begin
  # Get buyer cohorts by first purchase month and first channel
  data, status_code, headers = api_instance.get_ltv_cohorts_with_http_info(from_month, to_month, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLtvCohorts200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->get_ltv_cohorts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from_month** | **String** |  |  |
| **to_month** | **String** |  |  |
| **profile_id** | **String** | The profile to read. Omit for every profile you can access. | [optional] |

### Return type

[**GetLtvCohorts200Response**](GetLtvCohorts200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_survey_answers

> <GetSurveyAnswers200Response> get_survey_answers(from_date, to_date, opts)

Get post-purchase survey answers

How buyers said they heard about the store, from the \"How did you hear about us?\" block on the Shopify thank-you page. Each answer comes with its orders and their revenue.  Revenue is what the orders are worth now (refunds taken off), summed across currencies as sent. Without `profileId` it covers every profile you can access. Requires the Ads add-on. 

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
from_date = Date.parse('2013-10-20') # Date | First day an answer was given.
to_date = Date.parse('2013-10-20') # Date | Inclusive. At most 400 days after `fromDate`.
opts = {
  profile_id: 'profile_id_example' # String | The profile to read. Omit for every profile you can access.
}

begin
  # Get post-purchase survey answers
  result = api_instance.get_survey_answers(from_date, to_date, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->get_survey_answers: #{e}"
end
```

#### Using the get_survey_answers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSurveyAnswers200Response>, Integer, Hash)> get_survey_answers_with_http_info(from_date, to_date, opts)

```ruby
begin
  # Get post-purchase survey answers
  data, status_code, headers = api_instance.get_survey_answers_with_http_info(from_date, to_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSurveyAnswers200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->get_survey_answers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from_date** | **Date** | First day an answer was given. |  |
| **to_date** | **Date** | Inclusive. At most 400 days after &#x60;fromDate&#x60;. |  |
| **profile_id** | **String** | The profile to read. Omit for every profile you can access. | [optional] |

### Return type

[**GetSurveyAnswers200Response**](GetSurveyAnswers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tracking_site

> <CreateTrackingSite201Response> get_tracking_site(site_id)

Get a tracking site

One site, with its snippet, its custom subdomain and the latest result of each setup check.

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
site_id = 'site_id_example' # String | 

begin
  # Get a tracking site
  result = api_instance.get_tracking_site(site_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->get_tracking_site: #{e}"
end
```

#### Using the get_tracking_site_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTrackingSite201Response>, Integer, Hash)> get_tracking_site_with_http_info(site_id)

```ruby
begin
  # Get a tracking site
  data, status_code, headers = api_instance.get_tracking_site_with_http_info(site_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTrackingSite201Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->get_tracking_site_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_id** | **String** |  |  |

### Return type

[**CreateTrackingSite201Response**](CreateTrackingSite201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ad_conversion_associations

> <ListAdConversionAssociations200Response> list_ad_conversion_associations(account_id, destination_id, ad_account_id)

List associated campaigns

Lists the LinkedIn campaigns that track a conversion rule, so you can spot newer campaigns that still need linking.  LinkedIn-only today. Returns the campaigns currently associated with this conversion rule. Auto-association on rule creation runs once at create time; campaigns created after the rule still need explicit association. 

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
account_id = 'account_id_example' # String | The connected ads account (SocialAccount ID).
destination_id = 'destination_id_example' # String | 
ad_account_id = 'ad_account_id_example' # String | 

begin
  # List associated campaigns
  result = api_instance.list_ad_conversion_associations(account_id, destination_id, ad_account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->list_ad_conversion_associations: #{e}"
end
```

#### Using the list_ad_conversion_associations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAdConversionAssociations200Response>, Integer, Hash)> list_ad_conversion_associations_with_http_info(account_id, destination_id, ad_account_id)

```ruby
begin
  # List associated campaigns
  data, status_code, headers = api_instance.list_ad_conversion_associations_with_http_info(account_id, destination_id, ad_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAdConversionAssociations200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->list_ad_conversion_associations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The connected ads account (SocialAccount ID). |  |
| **destination_id** | **String** |  |  |
| **ad_account_id** | **String** |  |  |

### Return type

[**ListAdConversionAssociations200Response**](ListAdConversionAssociations200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ad_conversion_destinations

> <ListAdConversionDestinations200Response> list_ad_conversion_destinations(account_id)

List conversion destinations

Lists where an ad account can receive conversion events (pixels, conversion actions or rules), so you know where to send them.  Returns the list of pixels (Meta), conversion actions (Google), conversion rules (LinkedIn), pixels (OpenAI Ads, Reddit) or ad accounts (Pinterest) accessible to the connected ads account. Save the returned `id` as a destination with `POST /v1/events/destinations` (or pass it in `destinations` on `POST /v1/events`).  For Google and LinkedIn, each destination's `type` reflects the conversion type (PURCHASE, LEAD, SIGN_UP, etc.), and the event type is locked to the destination. For Meta, OpenAI Ads and Reddit, `type` is absent: pixels accept any event name per request.  For Reddit, the pixels of every ad account the connection reaches (only the scoped ones when the connection has an ad-account scope), each with the `adAccountId` that owns it. Reddit pixels are created in Reddit Ads Manager, not through Zernio.  For LinkedIn, destinations are returned across every sponsored ad account the connected token can access; the `adAccountId` field on each destination identifies the parent ad account and is required for subsequent CRUD calls (update, delete, associations, metrics). 

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
account_id = 'account_id_example' # String | SocialAccount ID (metaads, googleads, linkedinads, tiktokads, openaiads, pinterestads, or redditads).

begin
  # List conversion destinations
  result = api_instance.list_ad_conversion_destinations(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->list_ad_conversion_destinations: #{e}"
end
```

#### Using the list_ad_conversion_destinations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAdConversionDestinations200Response>, Integer, Hash)> list_ad_conversion_destinations_with_http_info(account_id)

```ruby
begin
  # List conversion destinations
  data, status_code, headers = api_instance.list_ad_conversion_destinations_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAdConversionDestinations200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->list_ad_conversion_destinations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | SocialAccount ID (metaads, googleads, linkedinads, tiktokads, openaiads, pinterestads, or redditads). |  |

### Return type

[**ListAdConversionDestinations200Response**](ListAdConversionDestinations200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ad_conversion_goals

> <ListAdConversionGoals200Response> list_ad_conversion_goals(account_id, opts)

List account conversion goals

Lists a Google Ads account's default conversion goals, which ones are used for bidding, and the conversion actions in each.  These are Google Ads account-default conversion goals (CustomerConversionGoal), one per category and origin. Each goal carries:  - `biddable`: whether the goal is used for bidding and reported in the Conversions column. - The conversion actions that belong to it, each flagged `primaryForGoal` (primary) or not (secondary).  ### Caching  Reads are cached for 10 minutes. When the shared Google quota is exhausted, the last successful result is served with `stale: true`. 

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
account_id = 'account_id_example' # String | Zernio SocialAccount id (Google Ads)
opts = {
  ad_account_id: 'ad_account_id_example', # String | Google customer id. Required when the connection has multiple customers.
  customer_id: 'customer_id_example' # String | Alias of adAccountId
}

begin
  # List account conversion goals
  result = api_instance.list_ad_conversion_goals(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->list_ad_conversion_goals: #{e}"
end
```

#### Using the list_ad_conversion_goals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAdConversionGoals200Response>, Integer, Hash)> list_ad_conversion_goals_with_http_info(account_id, opts)

```ruby
begin
  # List account conversion goals
  data, status_code, headers = api_instance.list_ad_conversion_goals_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAdConversionGoals200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->list_ad_conversion_goals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id (Google Ads) |  |
| **ad_account_id** | **String** | Google customer id. Required when the connection has multiple customers. | [optional] |
| **customer_id** | **String** | Alias of adAccountId | [optional] |

### Return type

[**ListAdConversionGoals200Response**](ListAdConversionGoals200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ad_custom_conversions

> <ListAdCustomConversions200Response> list_ad_custom_conversions(account_id, ad_account_id)

List custom conversions

Lists a Meta ad account's custom conversions, including archived ones.  The ad account's Meta custom conversions, including archived ones (`isArchived`). 

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
account_id = 'account_id_example' # String | Meta ads SocialAccount id.
ad_account_id = 'ad_account_id_example' # String | Meta ad account id (act_<n>).

begin
  # List custom conversions
  result = api_instance.list_ad_custom_conversions(account_id, ad_account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->list_ad_custom_conversions: #{e}"
end
```

#### Using the list_ad_custom_conversions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAdCustomConversions200Response>, Integer, Hash)> list_ad_custom_conversions_with_http_info(account_id, ad_account_id)

```ruby
begin
  # List custom conversions
  data, status_code, headers = api_instance.list_ad_custom_conversions_with_http_info(account_id, ad_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAdCustomConversions200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->list_ad_custom_conversions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Meta ads SocialAccount id. |  |
| **ad_account_id** | **String** | Meta ad account id (act_&lt;n&gt;). |  |

### Return type

[**ListAdCustomConversions200Response**](ListAdCustomConversions200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_conversion_actions

> <ListConversionActions200Response> list_conversion_actions(account_id, opts)

List conversion actions

Lists the conversion actions in a Google Ads account, with the website tag snippets to install where available.  Lists Google Ads conversion actions on the resolved customer, all types by default. Each action's `tagSnippets` (global site tag + event snippet) is included when Google has them for that action's type, e.g. `WEBPAGE`. Google-only; other platforms return `501`. Requires the Ads add-on.  `adAccountId` (alias `customerId`) is optional: when omitted, it is resolved from the connection's accessible Google Ads customers, and the call fails with `400` when more than one is accessible (pass `adAccountId` to disambiguate).  The list itself is cached for the quota window (1 hour fresh, up to 7 days last-good; the cache key does not vary on `type`). The response carries `cachedAt` and `stale`, set when a quota-exhausted call falls back to the last-good copy instead of a live read. 

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
account_id = 'account_id_example' # String | SocialAccount _id (must be a googleads account).
opts = {
  ad_account_id: 'ad_account_id_example', # String | Platform ad account ID (Google customer ID, digits only). Resolved automatically when the connection has exactly one accessible customer.
  customer_id: 'customer_id_example', # String | Alias of adAccountId, kept for existing callers
  type: 'type_example' # String | Filter by Google's ConversionActionType enum (e.g. WEBPAGE, UPLOAD_CLICKS).
}

begin
  # List conversion actions
  result = api_instance.list_conversion_actions(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->list_conversion_actions: #{e}"
end
```

#### Using the list_conversion_actions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListConversionActions200Response>, Integer, Hash)> list_conversion_actions_with_http_info(account_id, opts)

```ruby
begin
  # List conversion actions
  data, status_code, headers = api_instance.list_conversion_actions_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListConversionActions200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->list_conversion_actions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | SocialAccount _id (must be a googleads account). |  |
| **ad_account_id** | **String** | Platform ad account ID (Google customer ID, digits only). Resolved automatically when the connection has exactly one accessible customer. | [optional] |
| **customer_id** | **String** | Alias of adAccountId, kept for existing callers | [optional] |
| **type** | **String** | Filter by Google&#39;s ConversionActionType enum (e.g. WEBPAGE, UPLOAD_CLICKS). | [optional] |

### Return type

[**ListConversionActions200Response**](ListConversionActions200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_conversion_associations

> <ListAdConversionAssociations200Response> list_conversion_associations(account_id, destination_id, ad_account_id)

List associated campaigns

The first path of `GET /v1/ads/conversions/destinations/{destinationId}/associations` (`listAdConversionAssociations`), which does the same with `accountId` as a parameter. It keeps working. 

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

> <Array(<ListAdConversionAssociations200Response>, Integer, Hash)> list_conversion_associations_with_http_info(account_id, destination_id, ad_account_id)

```ruby
begin
  # List associated campaigns
  data, status_code, headers = api_instance.list_conversion_associations_with_http_info(account_id, destination_id, ad_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAdConversionAssociations200Response>
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

[**ListAdConversionAssociations200Response**](ListAdConversionAssociations200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_conversion_destinations

> <ListAdConversionDestinations200Response> list_conversion_destinations(account_id)

List conversion destinations

The first path of `GET /v1/ads/conversions/destinations` (`listAdConversionDestinations`), which does the same with `accountId` as a parameter. It keeps working. 

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
account_id = 'account_id_example' # String | SocialAccount ID (metaads, googleads, linkedinads, tiktokads, openaiads, pinterestads, or redditads).

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

> <Array(<ListAdConversionDestinations200Response>, Integer, Hash)> list_conversion_destinations_with_http_info(account_id)

```ruby
begin
  # List conversion destinations
  data, status_code, headers = api_instance.list_conversion_destinations_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAdConversionDestinations200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->list_conversion_destinations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | SocialAccount ID (metaads, googleads, linkedinads, tiktokads, openaiads, pinterestads, or redditads). |  |

### Return type

[**ListAdConversionDestinations200Response**](ListAdConversionDestinations200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_custom_conversion_goals

> <ListCustomConversionGoals200Response> list_custom_conversion_goals(account_id, opts)

List custom conversion goals

Lists the custom conversion goals in a Google Ads account, each a named set of conversion actions a campaign can bid on.  Google Ads custom conversion goals (a named set of conversion actions a campaign can bid on). Removed goals are excluded. Cached like the other Google reads. 

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
account_id = 'account_id_example' # String | Zernio SocialAccount id (Google Ads)
opts = {
  ad_account_id: 'ad_account_id_example', # String | Google customer id. Required when the connection has multiple customers.
  customer_id: 'customer_id_example' # String | Alias of adAccountId
}

begin
  # List custom conversion goals
  result = api_instance.list_custom_conversion_goals(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->list_custom_conversion_goals: #{e}"
end
```

#### Using the list_custom_conversion_goals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCustomConversionGoals200Response>, Integer, Hash)> list_custom_conversion_goals_with_http_info(account_id, opts)

```ruby
begin
  # List custom conversion goals
  data, status_code, headers = api_instance.list_custom_conversion_goals_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCustomConversionGoals200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->list_custom_conversion_goals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id (Google Ads) |  |
| **ad_account_id** | **String** | Google customer id. Required when the connection has multiple customers. | [optional] |
| **customer_id** | **String** | Alias of adAccountId | [optional] |

### Return type

[**ListCustomConversionGoals200Response**](ListCustomConversionGoals200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_event_destinations

> <ListEventDestinations200Response> list_event_destinations(opts)

List event destinations

The first name of `GET /v1/events/forwarding-rules`, which lists the same rules. It keeps working and answers under `destinations`.

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
opts = {
  profile_id: 'profile_id_example' # String | 
}

begin
  # List event destinations
  result = api_instance.list_event_destinations(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->list_event_destinations: #{e}"
end
```

#### Using the list_event_destinations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListEventDestinations200Response>, Integer, Hash)> list_event_destinations_with_http_info(opts)

```ruby
begin
  # List event destinations
  data, status_code, headers = api_instance.list_event_destinations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListEventDestinations200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->list_event_destinations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  | [optional] |

### Return type

[**ListEventDestinations200Response**](ListEventDestinations200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_event_names

> <ListEventNames200Response> list_event_names(opts)

List stored event names

The event names stored for a profile in the last 30 days, with how many events carry each, most used first. It includes custom names, such as a site's own events, so you can filter `GET /v1/events` by `eventName`.  Without `profileId` it covers every profile you can access. Retracted events are left out. Requires the Ads add-on. 

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
opts = {
  profile_id: 'profile_id_example' # String | The profile to read. Omit to cover every profile you can access.
}

begin
  # List stored event names
  result = api_instance.list_event_names(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->list_event_names: #{e}"
end
```

#### Using the list_event_names_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListEventNames200Response>, Integer, Hash)> list_event_names_with_http_info(opts)

```ruby
begin
  # List stored event names
  data, status_code, headers = api_instance.list_event_names_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListEventNames200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->list_event_names_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | The profile to read. Omit to cover every profile you can access. | [optional] |

### Return type

[**ListEventNames200Response**](ListEventNames200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_events

> <ListEvents200Response> list_events(opts)

List stored events

Lists the conversion events stored by `POST /v1/events`, newest first: for one profile, or for every profile you can access when `profileId` is omitted.  Personal data is never returned: `hasEmail`, `hasPhone` and `hasExternalId` only say whether the event carried that identifier. Events sent with `testCode` are not stored, so they never appear here.  Paginate with `cursor`: pass the `nextCursor` of the previous page until it comes back `null`. 

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
opts = {
  profile_id: 'profile_id_example', # String | The profile to list. Omit to cover every profile you can access.
  limit: 56, # Integer | 
  from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Only events at or after this time (ISO 8601, on the event time).
  to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Only events before this time (ISO 8601, on the event time).
  event_name: 'event_name_example', # String | Only events with this name, such as `Purchase`.
  source: 'api', # String | Only events from this source, such as `stripe` for the payments of a connected Stripe account.
  platform: 'platform_example', # String | Only events sent to this ad platform, such as `metaads` or `googleads`.
  delivery_status: 'sent', # String | Only events whose latest send to a destination (of `platform`, when given) was accepted (`sent`) or was not (`failed`: failed or still retrying).
  from_ad: true, # Boolean | `true`: only events carrying an ad click or a campaign (a gclid, gbraid or wbraid, a `zrn`, or a matched campaign). `false`: only the others.
  campaign_id: 'campaign_id_example', # String | Only events of this ad platform campaign id: matched to it, or behind a Google click of it.
  cursor: 'cursor_example' # String | `nextCursor` from the previous page.
}

begin
  # List stored events
  result = api_instance.list_events(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->list_events: #{e}"
end
```

#### Using the list_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListEvents200Response>, Integer, Hash)> list_events_with_http_info(opts)

```ruby
begin
  # List stored events
  data, status_code, headers = api_instance.list_events_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListEvents200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->list_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | The profile to list. Omit to cover every profile you can access. | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |
| **from** | **Time** | Only events at or after this time (ISO 8601, on the event time). | [optional] |
| **to** | **Time** | Only events before this time (ISO 8601, on the event time). | [optional] |
| **event_name** | **String** | Only events with this name, such as &#x60;Purchase&#x60;. | [optional] |
| **source** | **String** | Only events from this source, such as &#x60;stripe&#x60; for the payments of a connected Stripe account. | [optional] |
| **platform** | **String** | Only events sent to this ad platform, such as &#x60;metaads&#x60; or &#x60;googleads&#x60;. | [optional] |
| **delivery_status** | **String** | Only events whose latest send to a destination (of &#x60;platform&#x60;, when given) was accepted (&#x60;sent&#x60;) or was not (&#x60;failed&#x60;: failed or still retrying). | [optional] |
| **from_ad** | **Boolean** | &#x60;true&#x60;: only events carrying an ad click or a campaign (a gclid, gbraid or wbraid, a &#x60;zrn&#x60;, or a matched campaign). &#x60;false&#x60;: only the others. | [optional] |
| **campaign_id** | **String** | Only events of this ad platform campaign id: matched to it, or behind a Google click of it. | [optional] |
| **cursor** | **String** | &#x60;nextCursor&#x60; from the previous page. | [optional] |

### Return type

[**ListEvents200Response**](ListEvents200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_forwarding_rules

> <ListForwardingRules200Response> list_forwarding_rules(opts)

List forwarding rules

Lists the forwarding rules of one profile, or of every profile you can access. A rule sends a profile's events to one ad platform destination.

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
opts = {
  profile_id: 'profile_id_example' # String | 
}

begin
  # List forwarding rules
  result = api_instance.list_forwarding_rules(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->list_forwarding_rules: #{e}"
end
```

#### Using the list_forwarding_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListForwardingRules200Response>, Integer, Hash)> list_forwarding_rules_with_http_info(opts)

```ruby
begin
  # List forwarding rules
  data, status_code, headers = api_instance.list_forwarding_rules_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListForwardingRules200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->list_forwarding_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  | [optional] |

### Return type

[**ListForwardingRules200Response**](ListForwardingRules200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tracking_sites

> <ListTrackingSites200Response> list_tracking_sites(opts)

List tracking sites

The websites whose visits and conversions Zernio collects, newest first. Pass `profileId` to list one profile's sites.

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
opts = {
  profile_id: 'profile_id_example', # String | 
  limit: 56, # Integer | 
  cursor: 'cursor_example' # String | `pagination.nextCursor` from the previous page.
}

begin
  # List tracking sites
  result = api_instance.list_tracking_sites(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->list_tracking_sites: #{e}"
end
```

#### Using the list_tracking_sites_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTrackingSites200Response>, Integer, Hash)> list_tracking_sites_with_http_info(opts)

```ruby
begin
  # List tracking sites
  data, status_code, headers = api_instance.list_tracking_sites_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTrackingSites200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->list_tracking_sites_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |
| **cursor** | **String** | &#x60;pagination.nextCursor&#x60; from the previous page. | [optional] |

### Return type

[**ListTrackingSites200Response**](ListTrackingSites200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_ad_conversion_associations

> <RemoveAdConversionAssociations200Response> remove_ad_conversion_associations(account_id, destination_id, ad_account_id, campaign_ids)

Remove associated campaigns

Unlinks campaigns from a LinkedIn conversion rule so they stop tracking it.  Pass `adAccountId` and `campaignIds` as query parameters (`campaignIds` is comma-separated).  The route also accepts a JSON body with the same fields, for clients that prefer DELETE-with-body. The documented surface is query-only because some SDK code generators (e.g. Python) collapse query + body parameters with the same name into a single kwarg. 

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
account_id = 'account_id_example' # String | The connected ads account (SocialAccount ID).
destination_id = 'destination_id_example' # String | 
ad_account_id = 'ad_account_id_example' # String | 
campaign_ids = 'campaign_ids_example' # String | Comma-separated list of campaign IDs.

begin
  # Remove associated campaigns
  result = api_instance.remove_ad_conversion_associations(account_id, destination_id, ad_account_id, campaign_ids)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->remove_ad_conversion_associations: #{e}"
end
```

#### Using the remove_ad_conversion_associations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoveAdConversionAssociations200Response>, Integer, Hash)> remove_ad_conversion_associations_with_http_info(account_id, destination_id, ad_account_id, campaign_ids)

```ruby
begin
  # Remove associated campaigns
  data, status_code, headers = api_instance.remove_ad_conversion_associations_with_http_info(account_id, destination_id, ad_account_id, campaign_ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoveAdConversionAssociations200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->remove_ad_conversion_associations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The connected ads account (SocialAccount ID). |  |
| **destination_id** | **String** |  |  |
| **ad_account_id** | **String** |  |  |
| **campaign_ids** | **String** | Comma-separated list of campaign IDs. |  |

### Return type

[**RemoveAdConversionAssociations200Response**](RemoveAdConversionAssociations200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_conversion_associations

> <RemoveAdConversionAssociations200Response> remove_conversion_associations(account_id, destination_id, ad_account_id, campaign_ids)

Remove associated campaigns

The first path of `DELETE /v1/ads/conversions/destinations/{destinationId}/associations` (`removeAdConversionAssociations`), which does the same with `accountId` as a parameter. It keeps working. 

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

> <Array(<RemoveAdConversionAssociations200Response>, Integer, Hash)> remove_conversion_associations_with_http_info(account_id, destination_id, ad_account_id, campaign_ids)

```ruby
begin
  # Remove associated campaigns
  data, status_code, headers = api_instance.remove_conversion_associations_with_http_info(account_id, destination_id, ad_account_id, campaign_ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoveAdConversionAssociations200Response>
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

[**RemoveAdConversionAssociations200Response**](RemoveAdConversionAssociations200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_custom_conversion_goal

> <RemoveCustomConversionGoal200Response> remove_custom_conversion_goal(goal_id, account_id, opts)

Remove a custom conversion goal

Deletes a Google Ads custom conversion goal; switch any campaigns using it to another goal first.  Google refuses (400) while any campaign still uses it: switch those campaigns to another goal first. 

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
goal_id = 'goal_id_example' # String | Google custom conversion goal id
account_id = 'account_id_example' # String | Zernio SocialAccount id (Google Ads)
opts = {
  ad_account_id: 'ad_account_id_example', # String | Google customer id. Required when the connection has multiple customers.
  customer_id: 'customer_id_example' # String | Alias of adAccountId
}

begin
  # Remove a custom conversion goal
  result = api_instance.remove_custom_conversion_goal(goal_id, account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->remove_custom_conversion_goal: #{e}"
end
```

#### Using the remove_custom_conversion_goal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoveCustomConversionGoal200Response>, Integer, Hash)> remove_custom_conversion_goal_with_http_info(goal_id, account_id, opts)

```ruby
begin
  # Remove a custom conversion goal
  data, status_code, headers = api_instance.remove_custom_conversion_goal_with_http_info(goal_id, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoveCustomConversionGoal200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->remove_custom_conversion_goal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **goal_id** | **String** | Google custom conversion goal id |  |
| **account_id** | **String** | Zernio SocialAccount id (Google Ads) |  |
| **ad_account_id** | **String** | Google customer id. Required when the connection has multiple customers. | [optional] |
| **customer_id** | **String** | Alias of adAccountId | [optional] |

### Return type

[**RemoveCustomConversionGoal200Response**](RemoveCustomConversionGoal200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## restate_event

> <RestateEvent200Response> restate_event(event_id, restate_event_request)

Change a stored event's value

Changes the value of an event you already sent, for a partial refund or an upgrade. Send the corrected total, not a difference.  Zernio stores a new version of the event, so campaign results count the new value at once. It then passes the change to each destination the event reached: Google Ads restates the conversion, and platforms without a correction API report `not_supported` and keep their count. 

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
event_id = 'event_id_example' # String | The `eventId` the event was sent with.
restate_event_request = Zernio::RestateEventRequest.new({profile_id: 'profile_id_example', value: 3.56}) # RestateEventRequest | 

begin
  # Change a stored event's value
  result = api_instance.restate_event(event_id, restate_event_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->restate_event: #{e}"
end
```

#### Using the restate_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestateEvent200Response>, Integer, Hash)> restate_event_with_http_info(event_id, restate_event_request)

```ruby
begin
  # Change a stored event's value
  data, status_code, headers = api_instance.restate_event_with_http_info(event_id, restate_event_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestateEvent200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->restate_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | The &#x60;eventId&#x60; the event was sent with. |  |
| **restate_event_request** | [**RestateEventRequest**](RestateEventRequest.md) |  |  |

### Return type

[**RestateEvent200Response**](RestateEvent200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## retract_event

> <RetractEvent200Response> retract_event(event_id, profile_id)

Retract a stored event

Retracts an event you already sent, for a refund, a cancelled order or a lost deal. It stops counting in campaign results and ad rules.  Each destination the event reached is told where the platform allows it: Google Ads retracts the conversion, and the other platforms report `not_supported` and keep their count. Sending the same `eventId` again stores it anew. 

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
event_id = 'event_id_example' # String | The `eventId` the event was sent with.
profile_id = 'profile_id_example' # String | Profile the event belongs to.

begin
  # Retract a stored event
  result = api_instance.retract_event(event_id, profile_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->retract_event: #{e}"
end
```

#### Using the retract_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetractEvent200Response>, Integer, Hash)> retract_event_with_http_info(event_id, profile_id)

```ruby
begin
  # Retract a stored event
  data, status_code, headers = api_instance.retract_event_with_http_info(event_id, profile_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetractEvent200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->retract_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | The &#x60;eventId&#x60; the event was sent with. |  |
| **profile_id** | **String** | Profile the event belongs to. |  |

### Return type

[**RetractEvent200Response**](RetractEvent200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## rotate_tracking_site_key

> <CreateTrackingSite201Response> rotate_tracking_site_key(site_id, idempotency_key)

Rotate a tracking site's key

Issues a new `siteKey`. The old key keeps working for 7 days, so update the snippet on your site within that time.

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
site_id = 'site_id_example' # String | 
idempotency_key = 'idempotency_key_example' # String | A unique key per rotation, such as a UUID.

begin
  # Rotate a tracking site's key
  result = api_instance.rotate_tracking_site_key(site_id, idempotency_key)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->rotate_tracking_site_key: #{e}"
end
```

#### Using the rotate_tracking_site_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTrackingSite201Response>, Integer, Hash)> rotate_tracking_site_key_with_http_info(site_id, idempotency_key)

```ruby
begin
  # Rotate a tracking site's key
  data, status_code, headers = api_instance.rotate_tracking_site_key_with_http_info(site_id, idempotency_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTrackingSite201Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->rotate_tracking_site_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_id** | **String** |  |  |
| **idempotency_key** | **String** | A unique key per rotation, such as a UUID. |  |

### Return type

[**CreateTrackingSite201Response**](CreateTrackingSite201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## send_conversions

> <SendConversions200Response> send_conversions(send_conversions_request)

Send conversion events to one destination (legacy)

Legacy: use [`POST /v1/events`](/conversions/send-events) instead. It sends each event once to every saved destination, retries failures, stores the event and reports what each platform answered. This endpoint keeps working and is not being removed.  Sends conversion events, such as purchases or leads, from your server to one ad platform destination so it can attribute and optimize ads.  Relays one or more events to the target ad platform's native Conversions API. The platform is inferred from the provided `accountId`. Requires the Ads add-on.  ### Supported platforms  - Meta (`metaads`) via Graph API - Google Ads (`googleads`) via Data Manager API `ingestEvents` - LinkedIn (`linkedinads`) via `/rest/conversionEvents` - TikTok (`tiktokads`) via the Offline Events API `/offline/batch/` (OFFLINE conversions only) - OpenAI Ads (`openaiads`) via its Conversions API (a separate host, `bzr.openai.com`) - Pinterest (`pinterestads`) via `POST /v5/ad_accounts/{id}/events` - Reddit (`redditads`) via the Reddit Conversions API (`POST /api/v3/pixels/{pixelId}/conversion_events`) - Microsoft Advertising (`microsoftads`) via offline conversion uploads (`ApplyOfflineConversions`) or the UET Conversions API (`POST https://capi.uet.microsoft.com/v1/{tagId}/events`) - X Ads (`xads`) via the X Conversion API (`POST /12/measurement/conversions/{pixelId}`) - Snapchat (`snapchatads`) via the Snapchat Conversions API (`POST https://tr.snapchat.com/v3/{pixelId}/events`) - Taboola (`taboolaads`) via its S2S postback (`GET https://trc.taboola.com/actions-handler/log/3/s2s-action`), one request per event - Klaviyo (`klaviyo`) via the Events API (`POST https://a.klaviyo.com/api/events`) - Attentive (`attentive`) via the eCommerce and Custom Events APIs - Impact (`impact`) via the Conversions API (`POST /Advertisers/{AccountSID}/Conversions`) - Awin (`awin`) via the Conversion API (`POST /s2s/advertiser/{advertiserId}/orders`) - Campaign Manager 360 (`campaignmanager360`) via the Data Manager API `ingestEvents`, to a Floodlight activity - The Trade Desk (`tradedeskads`) via the Real-Time Conversions API (`POST https://insight.adsrvr.org/track/realtimeconversion`) - Amazon Ads (`amazonads`) via the Amazon Ads Conversions API (`POST /adsApi/v1/create/events`)  ### `destinationId` per platform  - Meta: pixel (dataset) ID, e.g. `123456789012345` - Google: conversion action resource name, e.g. `customers/1234567890/conversionActions/987654321` - LinkedIn: conversion rule ID or URN, e.g. `104012` or `urn:lla:llaPartnerConversion:104012` - TikTok: Offline Event Set ID, e.g. `7057103914977558530` - OpenAI Ads: pixel wire id (numeric `pixel_id`, distinct from the internal pixel id), as returned by `GET /v1/ads/conversions/destinations` - Pinterest: numeric ad account id, e.g. `549755885175` (Pinterest attributes to the ad account, not to a tag) - Reddit: pixel id, e.g. `a2_abc123`, as returned by `GET /v1/ads/conversions/destinations` (any other shape returns 400) - Microsoft Advertising offline conversion goal, e.g. `accounts/123456789/conversionGoals/987654`. Each event needs `clickIds.msclkid`, an `email` or a `phone`; the goal decides the event type. - Microsoft Advertising UET tag, e.g. `accounts/123456789/uetTags/26012345`. Each event needs `clickIds.msclkid`, an `email` or a `phone`. `eventName` is the event action its goals match (a `PageView` with `sourceUrl` is a page load) and `eventId` dedups with the browser tag. - Microsoft has no test mode: with `testCode`, UET events are sent with ad storage denied, which Microsoft excludes from conversion attribution and retargeting. - X Ads: X Pixel event id, e.g. `tw-rbhhj-rcfms`. Each event needs `clickIds.twclid`, an `email`, a `phone`, or `ipAddress` plus `userAgent`; the event decides the type and `eventId` is sent as `conversion_id`. - Snapchat: the connection's Snap Pixel ID, e.g. `1a2b3c4d-5e6f-4a8b-9c0d-1e2f3a4b5c6d`. Each event needs an `email`, a `phone`, or `ipAddress` plus `userAgent`; website events also need `sourceUrl`. With `testCode`, events go to Snap's validate endpoint and are not recorded. - Taboola: the connection's numeric Taboola Account ID, e.g. `1234567`. Each event needs `clickIds.tblci`. `eventName` is sent as is and must equal the Event Name of a conversion rule in Realize (case-sensitive). Taboola has no test mode, so `testCode` is ignored. - Klaviyo: the connection's Klaviyo account id. Each event needs an unhashed `email`, a `phone` with its country code, or an `externalId`; `eventId` is the `unique_id`. Klaviyo has no test mode, so a `testCode` is refused. - Klaviyo metrics: `Purchase` is `Placed Order`, `InitiateCheckout` `Started Checkout`, `ViewContent` `Viewed Product`, `AddToCart` `Added to Cart`; any other name is a metric of that name. - Attentive: the connection's Attentive company id. `Purchase`, `AddToCart` and `ViewContent` with priced `items` go to the eCommerce endpoints; every other event goes out as a custom event named `eventName`. Each event needs an unhashed `email`, a `phone` with its country code, or an `externalId`. A `testCode` is refused. - Impact: `<program id>:<event type id>`, e.g. `12345:67890`. Each event needs `clickIds.irclickid`, an `externalId` (sent as `CustomerId`) or `platformData.promo_code`; the email is sent SHA-256 hashed. Priced `items` are sent as item lines, otherwise `value` as the order subtotal. A `testCode` is refused: credit a test partner instead. - Awin: the connection's advertiser id. Each event needs `clickIds.awc` (or `platformData.voucher`), `value` and `currency`; `value` is the order amount on the `DEFAULT` commission group (`platformData.commission_group` overrides it). With `testCode`, orders are sent with `isTest` and not tracked. - Impact and Awin refuse browsing and funnel steps (`ViewContent`, `AddToCart`, `InitiateCheckout` and the like): they pay a partner for every conversion they get. - Campaign Manager 360: `<floodlightConfigurationId>:<floodlightActivityId>`, e.g. `1234567:7654321`. Each event needs `clickIds.gclid` or `clickIds.dclid` (a hashed email or phone only enhances it); `eventId` is the transaction id Google dedups on. With `testCode`, events are only validated (`validateOnly`) and not recorded. - The Trade Desk: the connection's tracking tag id, e.g. `abc1234`. Each event needs `clickIds.tdid`, `clickIds.uid2` or `clickIds.uid2Token`; `eventId` is sent as `order_id`. TTD has no test mode, so an event with `testCode` is not sent (code `TEST_MODE_UNSUPPORTED`). - Amazon Ads: `<region>:<profileId>:<accountId>:<country>`, e.g. `EU:42:ENTITY1ABC:DE`. Each event needs an `email` or a `phone` (sent hashed); `eventId` is Amazon's dedup key; standard event names keep their name and custom ones are sent as `Custom` (Amazon caps conversion definitions at 100). No test mode: an event with `testCode` is not sent.  Callers can list valid destinations via `GET /v1/ads/conversions/destinations`.  ### Pinterest notes  - Each event needs an `email`, or `ipAddress` plus `userAgent`. Others are listed in `failures` with code `INVALID_EVENT` and the rest are still sent. - `clickIds.epik` (the `_epik` cookie) is sent as `click_id`. - `actionSource` `web` stays `web`, offline sources become `offline`, and app events need `platformData.action_source` `app_android` or `app_ios`. - Pinterest answers per event, so one bad event does not fail its chunk (failures carry code `PINTEREST_EVENT_FAILED`). - `consent.adUserData: DENIED` sets `opt_out`. - The connected user needs a Business Access role on the ad account (403 otherwise).  ### Reddit notes  - Each event needs a match key: `clickIds.rdt_cid`, `clickIds.rdt_uuid`, `email`, `phone`, `externalId`, or `ipAddress` plus `userAgent`. - Reddit accepts events up to 7 days old. `eventTime` is unix SECONDS (a value more than an hour in the future is refused as milliseconds). - Events failing these checks are listed in `failures` with code `INVALID_EVENT` and the rest are still sent. - Email (lowercased, dots and `+tags` stripped from the local part), phone (E.164 with the leading `+`) and `externalId` are SHA-256 hashed. IP and user agent go plaintext. - `consent.adUserData: DENIED` sends no user fields. - `actionSource` maps to WEBSITE (`web`), APP (`app`) or OTHER, overridable with `platformData.action_source`. `platformData.order_id` is forwarded. - `testCode` is sent as Reddit's `test_id`.  Reddit errors:  - 403 `reconnect_required`: the connection was authorized without the `adsconversions` permission (reconnect via GET /v1/connect/redditads/ads). - 403 `insufficient_permissions`: the Reddit user has no role on the ad account that owns the pixel. - `REDDIT_REJECTED`: Reddit throttling and other rejections, reported per chunk in `failures`.  ### TikTok notes  This path sends OFFLINE conversions (in-store / CRM / call-center), not web-pixel events. Each event must carry an email or phone (TikTok requires at least one).  The connected TikTok ads account must have granted the Offline Events permission; older grants must reconnect.  ### OpenAI Ads notes  Requires a tracking tag (pixel) to already exist on the account. Returns 422 with code `TRACKING_TAG_REQUIRED` if `POST /v1/accounts/{accountId}/tracking-tags` hasn't been called yet.  ### Hashing  All PII (email, phone, names, external IDs) is hashed with SHA-256 server-side per each platform's normalization spec, including Google's Gmail-specific dot/plus-suffix stripping. Send plaintext.  LinkedIn `externalIds` are passed through as plaintext per LinkedIn's spec; only emails and phones are hashed.  For LinkedIn, the connected account must have been authorized after the Conversions API rollout (the OAuth grant must include `rw_conversions`). Older accounts must reconnect.  ### Batching  Batching is handled automatically. Per-platform caps:  - Meta: 1000 events per request; rejects the entire batch if any event is malformed. - Google: 2000. - LinkedIn: 5000, all-or-nothing per chunk. - OpenAI Ads: 1000 per request. Larger submissions are split into 1000-event chunks, each all-or-nothing (a malformed event fails every event in that chunk, not the whole request). - Reddit: works the same way as OpenAI Ads, in chunks of 1000.  ### Dedup  Pass a stable `eventId` on every event:  - Meta and LinkedIn use it to dedupe against browser-side pixel/Insight Tag events. - Google maps it to `transactionId`. - Reddit receives it as `conversion_id`, its dedup key against Reddit Pixel events.  ### `eventName` per platform  - Meta: free-form. Standard names (Purchase, Lead, ...) match Meta's built-in events; custom strings are accepted. - Google: ignored. The conversion action's category determines the event type. Send the standard name closest to your action for documentation, but the platform will not branch on it. - LinkedIn: ignored. The conversion rule's `type` (LEAD, PURCHASE, etc.) is locked to the destination at rule-creation time. Send the standard name for documentation; LinkedIn does not branch on it. - OpenAI Ads: a fixed subset of standard names maps 1:1 onto OpenAI's own event-type enum: Purchase, Lead, AddToCart, ViewContent, InitiateCheckout, CompleteRegistration, Subscribe, StartTrial, Schedule. Any other standard name or custom string is sent as `type: custom` with the name preserved. - Pinterest: standard names map onto Pinterest's (see below). Any other string is sent as is, so it matches an advertiser defined event of that name.  Pinterest name mapping:  - Purchase = `checkout` - AddToCart = `add_to_cart` - InitiateCheckout = `initiate_checkout` - AddPaymentInfo = `add_payment_info` - Lead = `lead` - CompleteRegistration = `signup` - Subscribe = `subscribe` - ViewContent = `view_content` - Search = `search` - PageView = `page_visit` 

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
  # Send conversion events to one destination (legacy)
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
  # Send conversion events to one destination (legacy)
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


## send_events

> <SendEvents200Response> send_events(send_events_request, opts)

Send events to every destination

The recommended way to send conversions. Sends conversion events once and forwards them to every ad platform destination saved for the profile (see `POST /v1/events/destinations`), or to the `destinations` given in the request. Requires the Ads add-on.  ### Forwarding  - Each destination receives the events exactly as `POST /v1/ads/conversions` would send them, so the per-platform notes there (hashing, batching, `eventName` semantics, dedup on `eventId`) apply here too. - A destination saved with `eventNames` only receives events with those names. - One destination failing never blocks the others: each one reports its own result.  ### Consent  Send each visitor's consent on the event (`events[].consent`) or for the whole request (`consent`), as Google Consent Mode's four signals. Zernio applies it per destination for visitors in the EEA, the UK and Switzerland, read from `user.country` (website events use the visitor's country):  - A signal left out counts as `DENIED`. Zernio has no setting to change this. - Meta, LinkedIn, TikTok, Pinterest, Reddit, X, Snapchat, Microsoft, OpenAI and AppLovin get the event only with `adUserData: GRANTED` and neither `adStorage` nor `adPersonalization` `DENIED`. - Google Ads gets every event with `adUserData` and `adPersonalization` set, a missing one as `DENIED`. Google decides what it can use. - Google Analytics gets the event only with `analyticsStorage: GRANTED`, with the same ad signals. - An event left out is reported on its destination as `drops` (with `consent_denied` or `consent_missing`), as `dropped` on `GET /v1/events/{eventId}`, and counted in `GET /v1/events/overview`. It is still stored and counted in your results. - Visitors elsewhere, or with no `user.country`, are sent as before with the consent they carry.  Zernio applies the consent you send; it does not collect it or give legal advice. Profiles created before this rule started (Nov 2026) keep sending as before until they are switched over.  ### Storage  Zernio also stores each event for the profile's reporting.  - Email, phone and `externalId` are stored only as SHA-256 hashes. - `sourceUrl` keeps only its origin, path and attribution parameters (`utm_*`, `zrn`, `zcid`, `gclid`, `gbraid`, `wbraid`, `fbclid`, `ttclid`, `twclid`, `msclkid`, `li_fat_id`, `epik`, `rdt_cid`, `oppref`, `aleid`, `alart`), each also under a `z`-prefixed copy such as `zgclid`. - Events sent with `testCode` are forwarded but not stored. - Sending an event again with the same `eventId` replaces the stored one. - A stored `Purchase`, `Lead` or `QualifiedLead` tied to one of your campaigns (see `campaign` on each event) counts in `GET /v1/ads/campaign-results` and in ad rules as `sales` and `revenue`, `leads` or `qualified_leads`. 

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
send_events_request = Zernio::SendEventsRequest.new({profile_id: 'profile_id_example', events: [Zernio::ConversionEvent.new({event_name: 'Purchase', event_time: 1744732800, event_id: 'order_abc_123', user: Zernio::ConversionEventUser.new})]}) # SendEventsRequest | 
opts = {
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours.  On the Ads create, boost and duplicate endpoints, a same-body retry runs again once the cut-off request started more than 15 minutes ago. 
}

begin
  # Send events to every destination
  result = api_instance.send_events(send_events_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->send_events: #{e}"
end
```

#### Using the send_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendEvents200Response>, Integer, Hash)> send_events_with_http_info(send_events_request, opts)

```ruby
begin
  # Send events to every destination
  data, status_code, headers = api_instance.send_events_with_http_info(send_events_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendEvents200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->send_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **send_events_request** | [**SendEventsRequest**](SendEventsRequest.md) |  |  |
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours.  On the Ads create, boost and duplicate endpoints, a same-body retry runs again once the cut-off request started more than 15 minutes ago.  | [optional] |

### Return type

[**SendEvents200Response**](SendEvents200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_ad_conversion_destination

> <GetAdConversionDestination200Response> update_ad_conversion_destination(destination_id, update_ad_conversion_destination_request)

Update a conversion destination

Changes a LinkedIn conversion rule's name, value, attribution windows, or turns it on or off.  Partial-update a conversion rule. LinkedIn-only today. Whitelisted fields: `name`, `enabled`, attribution windows, `valueType`, `value`, `attributionType`. The rule's `type` and parent ad account are intentionally not exposed for update. Recreate the rule if those need to change. 

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
destination_id = 'destination_id_example' # String | 
update_ad_conversion_destination_request = Zernio::UpdateAdConversionDestinationRequest.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example'}) # UpdateAdConversionDestinationRequest | 

begin
  # Update a conversion destination
  result = api_instance.update_ad_conversion_destination(destination_id, update_ad_conversion_destination_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->update_ad_conversion_destination: #{e}"
end
```

#### Using the update_ad_conversion_destination_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAdConversionDestination200Response>, Integer, Hash)> update_ad_conversion_destination_with_http_info(destination_id, update_ad_conversion_destination_request)

```ruby
begin
  # Update a conversion destination
  data, status_code, headers = api_instance.update_ad_conversion_destination_with_http_info(destination_id, update_ad_conversion_destination_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAdConversionDestination200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->update_ad_conversion_destination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **destination_id** | **String** |  |  |
| **update_ad_conversion_destination_request** | [**UpdateAdConversionDestinationRequest**](UpdateAdConversionDestinationRequest.md) |  |  |

### Return type

[**GetAdConversionDestination200Response**](GetAdConversionDestination200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_ad_conversion_goals

> <UpdateAdConversionGoals200Response> update_ad_conversion_goals(update_ad_conversion_goals_request)

Update account conversion goals

Turns bidding on or off for a Google Ads account's default conversion goals, which campaigns using account goals follow.  Sets `biddable` on one or more account-default goals, addressed by category and origin, in one mutate. Campaigns that use account-level goals (`goalConfigLevel: CUSTOMER`) follow the change. Returns the re-read goal list.

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
update_ad_conversion_goals_request = Zernio::UpdateAdConversionGoalsRequest.new({account_id: 'account_id_example', goals: [Zernio::GoogleBiddableGoalInput.new({category: 'category_example', origin: 'origin_example', biddable: false})]}) # UpdateAdConversionGoalsRequest | 

begin
  # Update account conversion goals
  result = api_instance.update_ad_conversion_goals(update_ad_conversion_goals_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->update_ad_conversion_goals: #{e}"
end
```

#### Using the update_ad_conversion_goals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateAdConversionGoals200Response>, Integer, Hash)> update_ad_conversion_goals_with_http_info(update_ad_conversion_goals_request)

```ruby
begin
  # Update account conversion goals
  data, status_code, headers = api_instance.update_ad_conversion_goals_with_http_info(update_ad_conversion_goals_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateAdConversionGoals200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->update_ad_conversion_goals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_ad_conversion_goals_request** | [**UpdateAdConversionGoalsRequest**](UpdateAdConversionGoalsRequest.md) |  |  |

### Return type

[**UpdateAdConversionGoals200Response**](UpdateAdConversionGoals200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_conversion_action

> <UpdateConversionAction200Response> update_conversion_action(action_id, update_conversion_action_request)

Update a conversion action's settings

Changes a Google Ads conversion action's settings, such as primary or secondary, counting, value and lookback windows, or removes or restores it.  Updates a Google Ads conversion action in one mutate, each field sent written on its own update mask leaf so omitted fields keep their value. Send at least one field.  `primaryForGoal` sets `primary_for_goal`: a primary action counts toward its goal's bidding and the Conversions column; a secondary one is observation-only (All conversions). `countingType`, `category`, the value settings (`defaultValue`, `defaultCurrency`, `alwaysUseDefaultValue`) and the click-through / view-through lookback windows map to the same-named conversion_action fields.  `status: REMOVED` removes the action (Google keeps it, with its history, as REMOVED) and must be sent alone; `status: ENABLED` restores a removed action. Google refuses HIDDEN on website actions, so it is not offered.

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
action_id = 'action_id_example' # String | Google conversion action id
update_conversion_action_request = Zernio::UpdateConversionActionRequest.new({account_id: 'account_id_example'}) # UpdateConversionActionRequest | 

begin
  # Update a conversion action's settings
  result = api_instance.update_conversion_action(action_id, update_conversion_action_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->update_conversion_action: #{e}"
end
```

#### Using the update_conversion_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateConversionAction200Response>, Integer, Hash)> update_conversion_action_with_http_info(action_id, update_conversion_action_request)

```ruby
begin
  # Update a conversion action's settings
  data, status_code, headers = api_instance.update_conversion_action_with_http_info(action_id, update_conversion_action_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateConversionAction200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->update_conversion_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_id** | **String** | Google conversion action id |  |
| **update_conversion_action_request** | [**UpdateConversionActionRequest**](UpdateConversionActionRequest.md) |  |  |

### Return type

[**UpdateConversionAction200Response**](UpdateConversionAction200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_conversion_destination

> <GetAdConversionDestination200Response> update_conversion_destination(account_id, destination_id, update_conversion_destination_request)

Update a conversion destination

The first path of `PATCH /v1/ads/conversions/destinations/{destinationId}` (`updateAdConversionDestination`), which does the same with `accountId` as a parameter. It keeps working. 

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

> <Array(<GetAdConversionDestination200Response>, Integer, Hash)> update_conversion_destination_with_http_info(account_id, destination_id, update_conversion_destination_request)

```ruby
begin
  # Update a conversion destination
  data, status_code, headers = api_instance.update_conversion_destination_with_http_info(account_id, destination_id, update_conversion_destination_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAdConversionDestination200Response>
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

[**GetAdConversionDestination200Response**](GetAdConversionDestination200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_custom_conversion_goal

> <UpdateCustomConversionGoal200Response> update_custom_conversion_goal(goal_id, update_custom_conversion_goal_request)

Update a custom conversion goal

Renames a Google Ads custom conversion goal or replaces the conversion actions in it.  Returns the re-read goal. 

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
goal_id = 'goal_id_example' # String | Google custom conversion goal id
update_custom_conversion_goal_request = Zernio::UpdateCustomConversionGoalRequest.new({account_id: 'account_id_example'}) # UpdateCustomConversionGoalRequest | 

begin
  # Update a custom conversion goal
  result = api_instance.update_custom_conversion_goal(goal_id, update_custom_conversion_goal_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->update_custom_conversion_goal: #{e}"
end
```

#### Using the update_custom_conversion_goal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateCustomConversionGoal200Response>, Integer, Hash)> update_custom_conversion_goal_with_http_info(goal_id, update_custom_conversion_goal_request)

```ruby
begin
  # Update a custom conversion goal
  data, status_code, headers = api_instance.update_custom_conversion_goal_with_http_info(goal_id, update_custom_conversion_goal_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateCustomConversionGoal200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->update_custom_conversion_goal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **goal_id** | **String** | Google custom conversion goal id |  |
| **update_custom_conversion_goal_request** | [**UpdateCustomConversionGoalRequest**](UpdateCustomConversionGoalRequest.md) |  |  |

### Return type

[**UpdateCustomConversionGoal200Response**](UpdateCustomConversionGoal200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_forwarding_rule

> <CreateForwardingRule201Response> update_forwarding_rule(rule_id, update_forwarding_rule_request)

Change a forwarding rule's API secret

Replaces the `apiSecret` of a rule whose destination needs one, such as a Google Analytics data stream's Measurement Protocol API secret. Before saving, Zernio sends one hit to Google's validation server; Google does not confirm the secret itself, so check GA4 Realtime after the next events. 

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
rule_id = 'rule_id_example' # String | The rule `id`.
update_forwarding_rule_request = Zernio::UpdateForwardingRuleRequest.new({api_secret: 'api_secret_example'}) # UpdateForwardingRuleRequest | 

begin
  # Change a forwarding rule's API secret
  result = api_instance.update_forwarding_rule(rule_id, update_forwarding_rule_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->update_forwarding_rule: #{e}"
end
```

#### Using the update_forwarding_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateForwardingRule201Response>, Integer, Hash)> update_forwarding_rule_with_http_info(rule_id, update_forwarding_rule_request)

```ruby
begin
  # Change a forwarding rule's API secret
  data, status_code, headers = api_instance.update_forwarding_rule_with_http_info(rule_id, update_forwarding_rule_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateForwardingRule201Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->update_forwarding_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_id** | **String** | The rule &#x60;id&#x60;. |  |
| **update_forwarding_rule_request** | [**UpdateForwardingRuleRequest**](UpdateForwardingRuleRequest.md) |  |  |

### Return type

[**CreateForwardingRule201Response**](CreateForwardingRule201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_tracking_site

> <CreateTrackingSite201Response> update_tracking_site(site_id, update_tracking_site_request)

Update a tracking site

Changes the site's name, domains, consent mode, custom subdomain or own-domain path. Send at least one field.  `customHostname` sets a subdomain of the site, such as `t.brand.com`; create the CNAME in `customHostname.dnsRecord`. The snippet switches to it once its status is `active`. `null` removes it.  `proxyPath` serves the tag from a path of the site itself, such as `brand.com/zt`, through a proxy on your server. The response's `proxy.secret` signs what the proxy forwards. `null` removes it.  `googleTagIds` lists the site's own Google tags that the same proxy relays to Google's tag gateway. Load each from its `proxy.googleTags[].src` instead of googletagmanager.com. `null` or an empty list removes them.  `pixels` lists the ad pixels the tag loads for you. In the EEA, UK and Switzerland none loads until the visitor accepts on the site's consent banner. Elsewhere `consentMode` decides. Remove your own copy of each pixel, or it fires twice. `null` or an empty list removes them.  `consentModeBridge` writes the banner's answer into Google Consent Mode v2. The tag reads OneTrust, Cookiebot, Usercentrics, Didomi, Shopify's privacy banner and any IAB TCF v2 banner. 

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
site_id = 'site_id_example' # String | 
update_tracking_site_request = Zernio::UpdateTrackingSiteRequest.new # UpdateTrackingSiteRequest | 

begin
  # Update a tracking site
  result = api_instance.update_tracking_site(site_id, update_tracking_site_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->update_tracking_site: #{e}"
end
```

#### Using the update_tracking_site_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTrackingSite201Response>, Integer, Hash)> update_tracking_site_with_http_info(site_id, update_tracking_site_request)

```ruby
begin
  # Update a tracking site
  data, status_code, headers = api_instance.update_tracking_site_with_http_info(site_id, update_tracking_site_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTrackingSite201Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionsApi->update_tracking_site_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_id** | **String** |  |  |
| **update_tracking_site_request** | [**UpdateTrackingSiteRequest**](UpdateTrackingSiteRequest.md) |  |  |

### Return type

[**CreateTrackingSite201Response**](CreateTrackingSite201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

