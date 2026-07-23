# Zernio::AdAccountsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_ad_account_finance**](AdAccountsApi.md#get_ad_account_finance) | **GET** /v1/ads/accounts/finance | Ad account finances |
| [**get_ad_comments**](AdAccountsApi.md#get_ad_comments) | **GET** /v1/ads/{adId}/comments | List comments on an ad |
| [**get_ads_activity_log**](AdAccountsApi.md#get_ads_activity_log) | **GET** /v1/ads/activity | Ad account change / audit log |
| [**get_dsa_defaults**](AdAccountsApi.md#get_dsa_defaults) | **GET** /v1/ads/dsa-defaults | Get ad account DSA defaults |
| [**get_dsa_recommendations**](AdAccountsApi.md#get_dsa_recommendations) | **GET** /v1/ads/dsa-recommendations | List DSA beneficiary/payor suggestions |
| [**list_ad_accounts**](AdAccountsApi.md#list_ad_accounts) | **GET** /v1/ads/accounts | List ad accounts |
| [**list_ad_labels**](AdAccountsApi.md#list_ad_labels) | **GET** /v1/ads/labels | Ad labels |
| [**list_ad_studies**](AdAccountsApi.md#list_ad_studies) | **GET** /v1/ads/studies | A/B tests and lift studies |
| [**list_ads_business_centers**](AdAccountsApi.md#list_ads_business_centers) | **GET** /v1/ads/business-centers | List TikTok Business Centers |
| [**list_high_demand_periods**](AdAccountsApi.md#list_high_demand_periods) | **GET** /v1/ads/high-demand-periods | High demand periods / budget schedules |
| [**list_meta_businesses**](AdAccountsApi.md#list_meta_businesses) | **GET** /v1/ads/businesses | Businesses list |
| [**update_ad_account**](AdAccountsApi.md#update_ad_account) | **PATCH** /v1/ads/accounts | Update ad account settings |


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

