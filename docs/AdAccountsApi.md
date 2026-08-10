# Zernio::AdAccountsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_custom_conversion**](AdAccountsApi.md#create_custom_conversion) | **POST** /v1/accounts/{accountId}/custom-conversions | Create or reuse a custom conversion |
| [**create_high_demand_period**](AdAccountsApi.md#create_high_demand_period) | **POST** /v1/ads/high-demand-periods | Schedule a budget increase |
| [**create_value_rule_set**](AdAccountsApi.md#create_value_rule_set) | **POST** /v1/ads/value-rule-sets | Create a value rule set |
| [**delete_value_rule_set**](AdAccountsApi.md#delete_value_rule_set) | **DELETE** /v1/ads/value-rule-sets/{valueRuleSetId} | Delete a value rule set |
| [**get_ad_account_finance**](AdAccountsApi.md#get_ad_account_finance) | **GET** /v1/ads/accounts/finance | Ad account finances |
| [**get_ad_comments**](AdAccountsApi.md#get_ad_comments) | **GET** /v1/ads/{adId}/comments | List comments on an ad |
| [**get_ads_activity_log**](AdAccountsApi.md#get_ads_activity_log) | **GET** /v1/ads/activity | Ad account change / audit log |
| [**get_dsa_defaults**](AdAccountsApi.md#get_dsa_defaults) | **GET** /v1/ads/dsa-defaults | Get ad account DSA defaults |
| [**get_dsa_recommendations**](AdAccountsApi.md#get_dsa_recommendations) | **GET** /v1/ads/dsa-recommendations | List DSA beneficiary/payor suggestions |
| [**get_value_rule_set**](AdAccountsApi.md#get_value_rule_set) | **GET** /v1/ads/value-rule-sets/{valueRuleSetId} | Read a value rule set |
| [**list_ad_accounts**](AdAccountsApi.md#list_ad_accounts) | **GET** /v1/ads/accounts | List ad accounts |
| [**list_ad_labels**](AdAccountsApi.md#list_ad_labels) | **GET** /v1/ads/labels | Ad labels |
| [**list_ad_studies**](AdAccountsApi.md#list_ad_studies) | **GET** /v1/ads/studies | A/B tests and lift studies |
| [**list_ads_business_centers**](AdAccountsApi.md#list_ads_business_centers) | **GET** /v1/ads/business-centers | List TikTok Business Centers |
| [**list_custom_conversions**](AdAccountsApi.md#list_custom_conversions) | **GET** /v1/accounts/{accountId}/custom-conversions | List custom conversions |
| [**list_high_demand_periods**](AdAccountsApi.md#list_high_demand_periods) | **GET** /v1/ads/high-demand-periods | High demand periods / budget schedules |
| [**list_meta_businesses**](AdAccountsApi.md#list_meta_businesses) | **GET** /v1/ads/businesses | Businesses list |
| [**list_value_rule_sets**](AdAccountsApi.md#list_value_rule_sets) | **GET** /v1/ads/value-rule-sets | List value rule sets |
| [**update_ad_account**](AdAccountsApi.md#update_ad_account) | **PATCH** /v1/ads/accounts | Update ad account settings |
| [**update_value_rule_set**](AdAccountsApi.md#update_value_rule_set) | **PUT** /v1/ads/value-rule-sets/{valueRuleSetId} | Replace a value rule set |


## create_custom_conversion

> <CustomConversionResult> create_custom_conversion(account_id, create_custom_conversion_request)

Create or reuse a custom conversion

Provision the Meta custom conversion an ads flow optimises toward, and hand back the `customConversionId` for `promotedObject.customConversionId` on POST /v1/ads/create. Removes the manual \"create it in Ads Manager first\" step.  **Reuse is ours, not Meta's.** Meta's create is not idempotent, so a retried request would otherwise mint a duplicate carrying none of the original's optimisation history. A non-archived conversion with the same `name` on the same `pixelId` is returned instead of created, with `reused: true` and a 200 rather than a 201.  `rule` is forwarded verbatim in Meta's own grammar (e.g. `{\"url\": {\"i_contains\": \"thank-you\"}}`); Meta validates it and rejects a malformed one with \"A conversion rule is required at creation time\".

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdAccountsApi.new
account_id = 'account_id_example' # String | Meta ads SocialAccount id.
create_custom_conversion_request = Zernio::CreateCustomConversionRequest.new({ad_account_id: 'ad_account_id_example', name: 'name_example', pixel_id: 'pixel_id_example', custom_event_type: 'custom_event_type_example', rule: 3.56}) # CreateCustomConversionRequest | 

begin
  # Create or reuse a custom conversion
  result = api_instance.create_custom_conversion(account_id, create_custom_conversion_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->create_custom_conversion: #{e}"
end
```

#### Using the create_custom_conversion_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomConversionResult>, Integer, Hash)> create_custom_conversion_with_http_info(account_id, create_custom_conversion_request)

```ruby
begin
  # Create or reuse a custom conversion
  data, status_code, headers = api_instance.create_custom_conversion_with_http_info(account_id, create_custom_conversion_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomConversionResult>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->create_custom_conversion_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Meta ads SocialAccount id. |  |
| **create_custom_conversion_request** | [**CreateCustomConversionRequest**](CreateCustomConversionRequest.md) |  |  |

### Return type

[**CustomConversionResult**](CustomConversionResult.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_high_demand_period

> <CreateHighDemandPeriod201Response> create_high_demand_period(create_high_demand_period_request)

Schedule a budget increase

Pre-schedule a temporary budget increase (Black Friday, a launch, a sale) instead of editing the budget by hand on the day. Same target rule as the GET: exactly one of `campaignId` / `adSetId`.  Two Meta constraints worth knowing before you call it. `timeStart` / `timeEnd` must fall on a 15-minute boundary, and a campaign cannot mix `ABSOLUTE` and `MULTIPLIER` across its schedules — the second type is rejected with \"Can't mix your budget scaling selection\". Window rules (must sit inside the campaign's run dates, minimum lead time, no overlap) are Meta's and its message is forwarded verbatim.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdAccountsApi.new
create_high_demand_period_request = Zernio::CreateHighDemandPeriodRequest.new({account_id: 'account_id_example', budget_value: 3.56, budget_value_type: 'ABSOLUTE', time_start: 37, time_end: 37}) # CreateHighDemandPeriodRequest | 

begin
  # Schedule a budget increase
  result = api_instance.create_high_demand_period(create_high_demand_period_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->create_high_demand_period: #{e}"
end
```

#### Using the create_high_demand_period_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateHighDemandPeriod201Response>, Integer, Hash)> create_high_demand_period_with_http_info(create_high_demand_period_request)

```ruby
begin
  # Schedule a budget increase
  data, status_code, headers = api_instance.create_high_demand_period_with_http_info(create_high_demand_period_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateHighDemandPeriod201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->create_high_demand_period_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_high_demand_period_request** | [**CreateHighDemandPeriodRequest**](CreateHighDemandPeriodRequest.md) |  |  |

### Return type

[**CreateHighDemandPeriod201Response**](CreateHighDemandPeriod201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_value_rule_set

> <CreateValueRuleSet201Response> create_value_rule_set(create_value_rule_set_request)

Create a value rule set

Creates a value rule set on the ad account (Meta's `POST /act_X/value_rule_set`). Attach the returned id to an ad set with `valueRuleSetId` on `POST /v1/ads/create` or `PUT /v1/ads/ad-sets/{adSetId}`.  **Rule order is semantic**: rules are evaluated in array order and only the first matching rule adjusts the bid for an overlapping audience.  `adjustValue` is an unsigned magnitude in percent; the direction lives in `adjustSign`. `INCREASE` accepts 1-1000, `DECREASE` accepts 1-90. There is no signed field and 0 is out of range.  `criteriaValueTypes` is positionally paired with `criteriaValues` (same length, same order). Every type is the literal `\"NONE\"` except on `LOCATION`, which uses `LOCATION_COUNTRY` / `LOCATION_REGION` / `LOCATION_CITY` / `LOCATION_COMSCORE_MARKET` and may mix them within one criterion. Location values are Targeting-Search keys: a two-letter country code for `LOCATION_COUNTRY`, a numeric key for the rest.  `LOCATION_DMA` was replaced by `LOCATION_COMSCORE_MARKET` on 2026-06-22 and rules using DMAs are no longer active, so this API rejects it.  `AUDIENCE_LABEL` values (e.g. `HIGH_VALUE`) are applied to a Custom Audience in Ads Manager. There is no API to provision them, so label strings are passed through unvalidated and a typo produces a rule that never fires.  Ads Manager turns a rule set read-only (this API stays editable) when a rule uses more than 2 criteria, a custom age range, or the placements `FB_MARKETPLACE`, `FB_SEARCH`, `FB_VIDEO` or `IG_EXPLORE`.  Limits: 6 rule sets per ad account, 10 rules per set, 4 criteria per rule. The per-account cap is enforced by Meta, not here.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdAccountsApi.new
create_value_rule_set_request = Zernio::CreateValueRuleSetRequest.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example', name: 'name_example', rules: [Zernio::ValueRule.new({name: 'name_example', adjust_sign: 'INCREASE', adjust_value: 37, criteria: [Zernio::ValueRuleCriterion.new({criteria_type: 'AGE', operator: 'CONTAINS', criteria_values: ['criteria_values_example'], criteria_value_types: ['criteria_value_types_example']})]})]}) # CreateValueRuleSetRequest | 

begin
  # Create a value rule set
  result = api_instance.create_value_rule_set(create_value_rule_set_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->create_value_rule_set: #{e}"
end
```

#### Using the create_value_rule_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateValueRuleSet201Response>, Integer, Hash)> create_value_rule_set_with_http_info(create_value_rule_set_request)

```ruby
begin
  # Create a value rule set
  data, status_code, headers = api_instance.create_value_rule_set_with_http_info(create_value_rule_set_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateValueRuleSet201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->create_value_rule_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_value_rule_set_request** | [**CreateValueRuleSetRequest**](CreateValueRuleSetRequest.md) |  |  |

### Return type

[**CreateValueRuleSet201Response**](CreateValueRuleSet201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_value_rule_set

> <DeleteValueRuleSet200Response> delete_value_rule_set(value_rule_set_id, account_id)

Delete a value rule set

Deletes the rule set (Meta's `POST /{value-rule-set-id}/delete_rule_set`, a custom action edge rather than an HTTP DELETE on its side). Ad sets pointing at it are not modified here; detach them first with `valueRulesApplied: false` on `PUT /v1/ads/ad-sets/{adSetId}`.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdAccountsApi.new
value_rule_set_id = 'value_rule_set_id_example' # String | Platform value rule set id.
account_id = 'account_id_example' # String | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token.

begin
  # Delete a value rule set
  result = api_instance.delete_value_rule_set(value_rule_set_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->delete_value_rule_set: #{e}"
end
```

#### Using the delete_value_rule_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteValueRuleSet200Response>, Integer, Hash)> delete_value_rule_set_with_http_info(value_rule_set_id, account_id)

```ruby
begin
  # Delete a value rule set
  data, status_code, headers = api_instance.delete_value_rule_set_with_http_info(value_rule_set_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteValueRuleSet200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->delete_value_rule_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value_rule_set_id** | **String** | Platform value rule set id. |  |
| **account_id** | **String** | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token. |  |

### Return type

[**DeleteValueRuleSet200Response**](DeleteValueRuleSet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ad_account_finance

> <GetAdAccountFinance200Response> get_ad_account_finance(account_id, ad_account_id)

Ad account finances

Finances of one Meta ad account: prepaid `balance`, lifetime `amountSpent`, account `spendCap` (null = no cap) and the `fundingSource`. Money values are converted from Meta's minor units to whole units of `currency`.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdAccountsApi.new
account_id = 'account_id_example' # String | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token.
ad_account_id = 'ad_account_id_example' # String | Meta ad account id (act_<n>).

begin
  # Ad account finances
  result = api_instance.get_ad_account_finance(account_id, ad_account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->get_ad_account_finance: #{e}"
end
```

#### Using the get_ad_account_finance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAdAccountFinance200Response>, Integer, Hash)> get_ad_account_finance_with_http_info(account_id, ad_account_id)

```ruby
begin
  # Ad account finances
  data, status_code, headers = api_instance.get_ad_account_finance_with_http_info(account_id, ad_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAdAccountFinance200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->get_ad_account_finance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token. |  |
| **ad_account_id** | **String** | Meta ad account id (act_&lt;n&gt;). |  |

### Return type

[**GetAdAccountFinance200Response**](GetAdAccountFinance200Response.md)

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

api_instance = Zernio::AdAccountsApi.new
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
  puts "Error when calling AdAccountsApi->get_ad_comments: #{e}"
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
  puts "Error when calling AdAccountsApi->get_ad_comments_with_http_info: #{e}"
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


## get_ads_activity_log

> <GetAdsActivityLog200Response> get_ads_activity_log(account_id, ad_account_id, opts)

Ad account change / audit log

Account-level audit log from Meta's `/act_X/activities`: who changed what and when (creates, edits, status flips, budget changes...) with Meta's translated event names and the structured before/after in `extra_data`. Rows are returned verbatim. Meta has no server-side per-object filter on this edge, so `objectId` filters the returned page client-side (combine with paging to walk history for one campaign/ad set/ad).

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdAccountsApi.new
account_id = 'account_id_example' # String | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token.
ad_account_id = 'ad_account_id_example' # String | Meta ad account id (act_<n>).
opts = {
  since: Date.parse('2013-10-20'), # Date | Start of range (YYYY-MM-DD).
  _until: Date.parse('2013-10-20'), # Date | End of range (YYYY-MM-DD).
  object_id: 'object_id_example', # String | Client-side filter to one Meta object id (campaign, ad set or ad).
  limit: 56, # Integer | Rows per page
  after: 'after_example' # String | Cursor from paging.after of the previous page.
}

begin
  # Ad account change / audit log
  result = api_instance.get_ads_activity_log(account_id, ad_account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->get_ads_activity_log: #{e}"
end
```

#### Using the get_ads_activity_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAdsActivityLog200Response>, Integer, Hash)> get_ads_activity_log_with_http_info(account_id, ad_account_id, opts)

```ruby
begin
  # Ad account change / audit log
  data, status_code, headers = api_instance.get_ads_activity_log_with_http_info(account_id, ad_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAdsActivityLog200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->get_ads_activity_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token. |  |
| **ad_account_id** | **String** | Meta ad account id (act_&lt;n&gt;). |  |
| **since** | **Date** | Start of range (YYYY-MM-DD). | [optional] |
| **_until** | **Date** | End of range (YYYY-MM-DD). | [optional] |
| **object_id** | **String** | Client-side filter to one Meta object id (campaign, ad set or ad). | [optional] |
| **limit** | **Integer** | Rows per page | [optional][default to 50] |
| **after** | **String** | Cursor from paging.after of the previous page. | [optional] |

### Return type

[**GetAdsActivityLog200Response**](GetAdsActivityLog200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_dsa_defaults

> <UpdateAdAccount200Response> get_dsa_defaults(account_id, ad_account_id)

Get ad account DSA defaults

Returns the default DSA beneficiary and payor currently set on a Meta ad account, whether they were set via `PATCH /v1/ads/accounts` or in Meta Ads Manager. Fields are omitted when no default is configured. Meta accounts only. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdAccountsApi.new
account_id = 'account_id_example' # String | Social account ID (metaads, or a facebook/instagram posting account)
ad_account_id = 'ad_account_id_example' # String | Meta ad account ID (act_...)

begin
  # Get ad account DSA defaults
  result = api_instance.get_dsa_defaults(account_id, ad_account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->get_dsa_defaults: #{e}"
end
```

#### Using the get_dsa_defaults_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateAdAccount200Response>, Integer, Hash)> get_dsa_defaults_with_http_info(account_id, ad_account_id)

```ruby
begin
  # Get ad account DSA defaults
  data, status_code, headers = api_instance.get_dsa_defaults_with_http_info(account_id, ad_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateAdAccount200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->get_dsa_defaults_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Social account ID (metaads, or a facebook/instagram posting account) |  |
| **ad_account_id** | **String** | Meta ad account ID (act_...) |  |

### Return type

[**UpdateAdAccount200Response**](UpdateAdAccount200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_dsa_recommendations

> <GetDsaRecommendations200Response> get_dsa_recommendations(account_id, ad_account_id)

List DSA beneficiary/payor suggestions

Returns Meta's suggested beneficiary/payor names for an ad account, derived by Meta from the account's recent activity. Useful for prefilling `dsaBeneficiary`/`dsaPayor` inputs, or the defaults sent to `PATCH /v1/ads/accounts`, in your own UI.  Meta returns a single flat list. Entries are not labeled as beneficiary or payor, and since these are legal disclosures Zernio never applies them automatically: let your user pick the right entity. The list may be empty for accounts with little activity. Meta accounts only. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdAccountsApi.new
account_id = 'account_id_example' # String | Social account ID (metaads, or a facebook/instagram posting account)
ad_account_id = 'ad_account_id_example' # String | Meta ad account ID (act_...)

begin
  # List DSA beneficiary/payor suggestions
  result = api_instance.get_dsa_recommendations(account_id, ad_account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->get_dsa_recommendations: #{e}"
end
```

#### Using the get_dsa_recommendations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDsaRecommendations200Response>, Integer, Hash)> get_dsa_recommendations_with_http_info(account_id, ad_account_id)

```ruby
begin
  # List DSA beneficiary/payor suggestions
  data, status_code, headers = api_instance.get_dsa_recommendations_with_http_info(account_id, ad_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDsaRecommendations200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->get_dsa_recommendations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Social account ID (metaads, or a facebook/instagram posting account) |  |
| **ad_account_id** | **String** | Meta ad account ID (act_...) |  |

### Return type

[**GetDsaRecommendations200Response**](GetDsaRecommendations200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_value_rule_set

> <GetValueRuleSet200Response> get_value_rule_set(value_rule_set_id, account_id)

Read a value rule set

Reads one value rule set including every nested rule id and criterion id. This is step one of any edit: `PUT` is a full replace, so you need the ids before you can keep the objects you are not changing.  Meta's own read returns `GENDER` values lowercase (`\"male\"`) while writes require `\"MALE\"`. Values are passed through untouched, so never case-compare a stored rule against a fetched one.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdAccountsApi.new
value_rule_set_id = 'value_rule_set_id_example' # String | Platform value rule set id.
account_id = 'account_id_example' # String | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token.

begin
  # Read a value rule set
  result = api_instance.get_value_rule_set(value_rule_set_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->get_value_rule_set: #{e}"
end
```

#### Using the get_value_rule_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetValueRuleSet200Response>, Integer, Hash)> get_value_rule_set_with_http_info(value_rule_set_id, account_id)

```ruby
begin
  # Read a value rule set
  data, status_code, headers = api_instance.get_value_rule_set_with_http_info(value_rule_set_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetValueRuleSet200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->get_value_rule_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value_rule_set_id** | **String** | Platform value rule set id. |  |
| **account_id** | **String** | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token. |  |

### Return type

[**GetValueRuleSet200Response**](GetValueRuleSet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ad_accounts

> <ListAdAccounts200Response> list_ad_accounts(account_id, opts)

List ad accounts

Returns the platform ad accounts available for the given social account (e.g. Meta ad accounts, TikTok advertiser IDs, Google Ads customer IDs).  For TikTok agencies: enumerates every advertiser under every Business Center the token can read (paginated server-side), then chunks the lookup against TikTok's `/advertiser/info/` endpoint (which has a per-call cap of ≤100 IDs). Solo advertisers without a BC fall back to the OAuth-time `advertiser_ids` list. Cached for 1h on the SocialAccount; lazy-refreshed on first call after expiry.  For Google Ads: responds `429` when Google's API quota is temporarily exhausted (instead of an empty list). Retry after a delay. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdAccountsApi.new
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
  puts "Error when calling AdAccountsApi->list_ad_accounts: #{e}"
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
  puts "Error when calling AdAccountsApi->list_ad_accounts_with_http_info: #{e}"
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


## list_ad_labels

> <ListAdLabels200Response> list_ad_labels(account_id, ad_account_id, opts)

Ad labels

Lists the ad account's organizational labels (Meta's `/act_X/adlabels`), rows returned verbatim (id, name, created/updated time).

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdAccountsApi.new
account_id = 'account_id_example' # String | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token.
ad_account_id = 'ad_account_id_example' # String | Meta ad account id (act_<n>).
opts = {
  limit: 56, # Integer | Rows per page
  after: 'after_example' # String | Cursor from paging.after of the previous page.
}

begin
  # Ad labels
  result = api_instance.list_ad_labels(account_id, ad_account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->list_ad_labels: #{e}"
end
```

#### Using the list_ad_labels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAdLabels200Response>, Integer, Hash)> list_ad_labels_with_http_info(account_id, ad_account_id, opts)

```ruby
begin
  # Ad labels
  data, status_code, headers = api_instance.list_ad_labels_with_http_info(account_id, ad_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAdLabels200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->list_ad_labels_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token. |  |
| **ad_account_id** | **String** | Meta ad account id (act_&lt;n&gt;). |  |
| **limit** | **Integer** | Rows per page | [optional][default to 25] |
| **after** | **String** | Cursor from paging.after of the previous page. | [optional] |

### Return type

[**ListAdLabels200Response**](ListAdLabels200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ad_studies

> <ListAdStudies200Response> list_ad_studies(account_id, ad_account_id, opts)

A/B tests and lift studies

Lists the ad account's A/B tests and lift studies (Meta's `/act_X/ad_studies`), rows returned verbatim. The default projection covers id, name, type, timing and cells with split percentages; `fields` is a raw-passthrough override.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdAccountsApi.new
account_id = 'account_id_example' # String | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token.
ad_account_id = 'ad_account_id_example' # String | Meta ad account id (act_<n>).
opts = {
  fields: 'fields_example', # String | Comma-separated Graph field override (supports nested {} projections).
  limit: 56, # Integer | Rows per page
  after: 'after_example' # String | Cursor from paging.after of the previous page.
}

begin
  # A/B tests and lift studies
  result = api_instance.list_ad_studies(account_id, ad_account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->list_ad_studies: #{e}"
end
```

#### Using the list_ad_studies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAdStudies200Response>, Integer, Hash)> list_ad_studies_with_http_info(account_id, ad_account_id, opts)

```ruby
begin
  # A/B tests and lift studies
  data, status_code, headers = api_instance.list_ad_studies_with_http_info(account_id, ad_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAdStudies200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->list_ad_studies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token. |  |
| **ad_account_id** | **String** | Meta ad account id (act_&lt;n&gt;). |  |
| **fields** | **String** | Comma-separated Graph field override (supports nested {} projections). | [optional] |
| **limit** | **Integer** | Rows per page | [optional][default to 25] |
| **after** | **String** | Cursor from paging.after of the previous page. | [optional] |

### Return type

[**ListAdStudies200Response**](ListAdStudies200Response.md)

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

api_instance = Zernio::AdAccountsApi.new
account_id = 'account_id_example' # String | ID of the `tiktokads` (or parent `tiktok` posting) SocialAccount

begin
  # List TikTok Business Centers
  result = api_instance.list_ads_business_centers(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->list_ads_business_centers: #{e}"
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
  puts "Error when calling AdAccountsApi->list_ads_business_centers_with_http_info: #{e}"
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


## list_custom_conversions

> <ListCustomConversions200Response> list_custom_conversions(account_id, ad_account_id)

List custom conversions

The ad account's Meta custom conversions, including archived ones (`isArchived`).

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdAccountsApi.new
account_id = 'account_id_example' # String | Meta ads SocialAccount id.
ad_account_id = 'ad_account_id_example' # String | Meta ad account id (act_<n>).

begin
  # List custom conversions
  result = api_instance.list_custom_conversions(account_id, ad_account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->list_custom_conversions: #{e}"
end
```

#### Using the list_custom_conversions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCustomConversions200Response>, Integer, Hash)> list_custom_conversions_with_http_info(account_id, ad_account_id)

```ruby
begin
  # List custom conversions
  data, status_code, headers = api_instance.list_custom_conversions_with_http_info(account_id, ad_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCustomConversions200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->list_custom_conversions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Meta ads SocialAccount id. |  |
| **ad_account_id** | **String** | Meta ad account id (act_&lt;n&gt;). |  |

### Return type

[**ListCustomConversions200Response**](ListCustomConversions200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_high_demand_periods

> <ListHighDemandPeriods200Response> list_high_demand_periods(account_id, opts)

High demand periods / budget schedules

Scheduled budget increases (Meta's budget-scheduling API). The Graph edge lives on the campaign and ad-set nodes only, so exactly one of `campaignId` / `adSetId` (platform ids) is required. Rows returned verbatim (budget_value, budget_value_type, time window, recurrence).

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdAccountsApi.new
account_id = 'account_id_example' # String | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token.
opts = {
  campaign_id: 'campaign_id_example', # String | Platform campaign id. Exactly one of campaignId / adSetId.
  ad_set_id: 'ad_set_id_example', # String | Platform ad set id. Exactly one of campaignId / adSetId.
  limit: 56, # Integer | Rows per page
  after: 'after_example' # String | Cursor from paging.after of the previous page.
}

begin
  # High demand periods / budget schedules
  result = api_instance.list_high_demand_periods(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->list_high_demand_periods: #{e}"
end
```

#### Using the list_high_demand_periods_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListHighDemandPeriods200Response>, Integer, Hash)> list_high_demand_periods_with_http_info(account_id, opts)

```ruby
begin
  # High demand periods / budget schedules
  data, status_code, headers = api_instance.list_high_demand_periods_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListHighDemandPeriods200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->list_high_demand_periods_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token. |  |
| **campaign_id** | **String** | Platform campaign id. Exactly one of campaignId / adSetId. | [optional] |
| **ad_set_id** | **String** | Platform ad set id. Exactly one of campaignId / adSetId. | [optional] |
| **limit** | **Integer** | Rows per page | [optional][default to 25] |
| **after** | **String** | Cursor from paging.after of the previous page. | [optional] |

### Return type

[**ListHighDemandPeriods200Response**](ListHighDemandPeriods200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_meta_businesses

> <ListMetaBusinesses200Response> list_meta_businesses(account_id, opts)

Businesses list

Business Manager portfolios the connected Meta user belongs to (Meta's `/me/businesses`), rows returned verbatim (id, name, verification_status, created_time). Token-scoped, so no `adAccountId` is needed. For TikTok Business Centers use `GET /v1/ads/business-centers`.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdAccountsApi.new
account_id = 'account_id_example' # String | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token.
opts = {
  limit: 56, # Integer | Rows per page
  after: 'after_example' # String | Cursor from paging.after of the previous page.
}

begin
  # Businesses list
  result = api_instance.list_meta_businesses(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->list_meta_businesses: #{e}"
end
```

#### Using the list_meta_businesses_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListMetaBusinesses200Response>, Integer, Hash)> list_meta_businesses_with_http_info(account_id, opts)

```ruby
begin
  # Businesses list
  data, status_code, headers = api_instance.list_meta_businesses_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListMetaBusinesses200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->list_meta_businesses_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token. |  |
| **limit** | **Integer** | Rows per page | [optional][default to 25] |
| **after** | **String** | Cursor from paging.after of the previous page. | [optional] |

### Return type

[**ListMetaBusinesses200Response**](ListMetaBusinesses200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_value_rule_sets

> <ListValueRuleSets200Response> list_value_rule_sets(account_id, ad_account_id, opts)

List value rule sets

Lists the ad account's value rule sets (Meta's `/act_X/value_rule_set`). A value rule set adjusts the auction bid up or down for audience segments you value differently; attach one to an ad set with `valueRuleSetId` on `POST /v1/ads/create` or `PUT /v1/ads/ad-sets/{adSetId}`.  Rows are returned in the same camelCase shape the `PUT` body takes, ids included, so a set round-trips 1:1: **the update is a full replace, not a patch**, so you GET, mutate and send the whole thing back.  Limits: 6 rule sets per ad account, 10 rules per set, 4 criteria per rule.  **Rule order is semantic.** Rules are evaluated in array order and only the FIRST matching rule adjusts the bid for an overlapping audience. The order you send is the order that is stored and returned.  Eligibility: value rule sets apply only to ad sets on the `LOWEST_COST_WITHOUT_CAP` (auto-bid) or `COST_CAP` bid strategies. Meta rejects the rest server-side.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdAccountsApi.new
account_id = 'account_id_example' # String | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token.
ad_account_id = 'ad_account_id_example' # String | Meta ad account id (act_<n>).
opts = {
  limit: 56, # Integer | Rows per page
  after: 'after_example' # String | Cursor from paging.after of the previous page. Meta does not document paging on this edge; `after` comes back null when it omits cursors.
}

begin
  # List value rule sets
  result = api_instance.list_value_rule_sets(account_id, ad_account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->list_value_rule_sets: #{e}"
end
```

#### Using the list_value_rule_sets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListValueRuleSets200Response>, Integer, Hash)> list_value_rule_sets_with_http_info(account_id, ad_account_id, opts)

```ruby
begin
  # List value rule sets
  data, status_code, headers = api_instance.list_value_rule_sets_with_http_info(account_id, ad_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListValueRuleSets200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->list_value_rule_sets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token. |  |
| **ad_account_id** | **String** | Meta ad account id (act_&lt;n&gt;). |  |
| **limit** | **Integer** | Rows per page | [optional][default to 25] |
| **after** | **String** | Cursor from paging.after of the previous page. Meta does not document paging on this edge; &#x60;after&#x60; comes back null when it omits cursors. | [optional] |

### Return type

[**ListValueRuleSets200Response**](ListValueRuleSets200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_ad_account

> <UpdateAdAccount200Response> update_ad_account(update_ad_account_request)

Update ad account settings

Sets the default DSA beneficiary and payor on a Meta ad account (EU DSA, Article 26). Set them once and every EU-targeted call to `/v1/ads/create`, `/v1/ads/boost` and `/v1/ads/ctwa` on that ad account can omit `dsaBeneficiary`/`dsaPayor`: Meta applies the defaults automatically.  The values are written to the ad account on Meta, the same setting Ads Manager edits. Nothing is stored in Zernio, and defaults already set in Ads Manager work identically. Zernio never guesses these values for you. Beneficiary and payor are legal disclosures shown to EU users, so you must provide the entity names explicitly. Use `GET /v1/ads/dsa-recommendations` to offer suggestions in your UI.  If `defaultDsaPayor` is omitted, the beneficiary is also set as the payor, which covers the common case where the same entity benefits from and pays for the ads. Read the current values back with `GET /v1/ads/dsa-defaults`.  Currently supported for Meta accounts only; other platforms return 400. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdAccountsApi.new
update_ad_account_request = Zernio::UpdateAdAccountRequest.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example', default_dsa_beneficiary: 'default_dsa_beneficiary_example'}) # UpdateAdAccountRequest | 

begin
  # Update ad account settings
  result = api_instance.update_ad_account(update_ad_account_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->update_ad_account: #{e}"
end
```

#### Using the update_ad_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateAdAccount200Response>, Integer, Hash)> update_ad_account_with_http_info(update_ad_account_request)

```ruby
begin
  # Update ad account settings
  data, status_code, headers = api_instance.update_ad_account_with_http_info(update_ad_account_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateAdAccount200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->update_ad_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_ad_account_request** | [**UpdateAdAccountRequest**](UpdateAdAccountRequest.md) |  |  |

### Return type

[**UpdateAdAccount200Response**](UpdateAdAccount200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_value_rule_set

> <UpdateValueRuleSet200Response> update_value_rule_set(value_rule_set_id, update_value_rule_set_request)

Replace a value rule set

**THIS IS A FULL REPLACE, NOT A PATCH.** Meta's update is declarative: the body you send becomes the rule set.  - `GET /v1/ads/value-rule-sets/{valueRuleSetId}` FIRST. - Keep a rule or criterion by echoing its `id`. - Create one by including the object WITHOUT an `id`. - Delete one by OMITTING it from the array. There is no warning and no undo.  `name` and `rules` are both required for exactly this reason: a partial body would silently destroy every rule left out.  **Rule order is semantic**: the array order you send is the evaluation order, and only the first matching rule adjusts the bid for an overlapping audience.  Existing rule sets created elsewhere may contain `LOCATION_DMA` criteria. Those went inert on 2026-06-22 and are rejected here; migrate them to `LOCATION_COMSCORE_MARKET`.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdAccountsApi.new
value_rule_set_id = 'value_rule_set_id_example' # String | Platform value rule set id.
update_value_rule_set_request = Zernio::UpdateValueRuleSetRequest.new({account_id: 'account_id_example', name: 'name_example', rules: [Zernio::ValueRule.new({name: 'name_example', adjust_sign: 'INCREASE', adjust_value: 37, criteria: [Zernio::ValueRuleCriterion.new({criteria_type: 'AGE', operator: 'CONTAINS', criteria_values: ['criteria_values_example'], criteria_value_types: ['criteria_value_types_example']})]})]}) # UpdateValueRuleSetRequest | 

begin
  # Replace a value rule set
  result = api_instance.update_value_rule_set(value_rule_set_id, update_value_rule_set_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->update_value_rule_set: #{e}"
end
```

#### Using the update_value_rule_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateValueRuleSet200Response>, Integer, Hash)> update_value_rule_set_with_http_info(value_rule_set_id, update_value_rule_set_request)

```ruby
begin
  # Replace a value rule set
  data, status_code, headers = api_instance.update_value_rule_set_with_http_info(value_rule_set_id, update_value_rule_set_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateValueRuleSet200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->update_value_rule_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value_rule_set_id** | **String** | Platform value rule set id. |  |
| **update_value_rule_set_request** | [**UpdateValueRuleSetRequest**](UpdateValueRuleSetRequest.md) |  |  |

### Return type

[**UpdateValueRuleSet200Response**](UpdateValueRuleSet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

