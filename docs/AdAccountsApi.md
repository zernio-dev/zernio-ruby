# Zernio::AdAccountsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_account_callouts**](AdAccountsApi.md#add_account_callouts) | **POST** /v1/ads/accounts/callouts | Add account callouts |
| [**add_account_sitelinks**](AdAccountsApi.md#add_account_sitelinks) | **POST** /v1/ads/accounts/sitelinks | Add account sitelinks |
| [**add_account_structured_snippets**](AdAccountsApi.md#add_account_structured_snippets) | **POST** /v1/ads/accounts/structured-snippets | Add account snippets |
| [**assign_ad_account_user**](AdAccountsApi.md#assign_ad_account_user) | **POST** /v1/ads/accounts/users | Assign a user to an ad account |
| [**assign_page_user**](AdAccountsApi.md#assign_page_user) | **POST** /v1/ads/page-users | Assign a user to a Page |
| [**attach_ad_label**](AdAccountsApi.md#attach_ad_label) | **POST** /v1/ads/labels/{labelId}/assignments | Attach a Google Ads label |
| [**create_ad_account**](AdAccountsApi.md#create_ad_account) | **POST** /v1/ads/accounts | Create Meta ad account |
| [**create_ad_label**](AdAccountsApi.md#create_ad_label) | **POST** /v1/ads/labels | Create a Google Ads label |
| [**create_ad_negative_keyword_list**](AdAccountsApi.md#create_ad_negative_keyword_list) | **POST** /v1/ads/accounts/negative-keyword-lists | Create a negative keyword list |
| [**create_custom_conversion**](AdAccountsApi.md#create_custom_conversion) | **POST** /v1/accounts/{accountId}/custom-conversions | Create custom conversion |
| [**create_high_demand_period**](AdAccountsApi.md#create_high_demand_period) | **POST** /v1/ads/high-demand-periods | Schedule a budget increase |
| [**create_value_rule_set**](AdAccountsApi.md#create_value_rule_set) | **POST** /v1/ads/value-rule-sets | Create a value rule set |
| [**delete_ad_comment**](AdAccountsApi.md#delete_ad_comment) | **DELETE** /v1/ads/{adId}/comments/{commentId} | Delete an ad comment |
| [**delete_ad_negative_keyword_list**](AdAccountsApi.md#delete_ad_negative_keyword_list) | **DELETE** /v1/ads/accounts/negative-keyword-lists/{listId} | Delete a negative keyword list |
| [**delete_value_rule_set**](AdAccountsApi.md#delete_value_rule_set) | **DELETE** /v1/ads/value-rule-sets/{valueRuleSetId} | Delete a value rule set |
| [**detach_ad_label**](AdAccountsApi.md#detach_ad_label) | **DELETE** /v1/ads/labels/{labelId}/assignments | Detach a Google Ads label |
| [**get_ad_account_finance**](AdAccountsApi.md#get_ad_account_finance) | **GET** /v1/ads/accounts/finance | Ad account finances |
| [**get_ad_account_hierarchy**](AdAccountsApi.md#get_ad_account_hierarchy) | **GET** /v1/ads/accounts/hierarchy | Get manager account hierarchy |
| [**get_ad_account_live_entities**](AdAccountsApi.md#get_ad_account_live_entities) | **GET** /v1/ads/accounts/live | Read an ad account&#39;s campaigns and ad sets live |
| [**get_ad_comments**](AdAccountsApi.md#get_ad_comments) | **GET** /v1/ads/{adId}/comments | List comments on an ad |
| [**get_ad_negative_keyword_list**](AdAccountsApi.md#get_ad_negative_keyword_list) | **GET** /v1/ads/accounts/negative-keyword-lists/{listId} | Get a negative keyword list |
| [**get_ads_activity_log**](AdAccountsApi.md#get_ads_activity_log) | **GET** /v1/ads/activity | Ad account change / audit log |
| [**get_dsa_defaults**](AdAccountsApi.md#get_dsa_defaults) | **GET** /v1/ads/dsa-defaults | Get ad account DSA defaults |
| [**get_dsa_recommendations**](AdAccountsApi.md#get_dsa_recommendations) | **GET** /v1/ads/dsa-recommendations | Get DSA recommendations |
| [**get_ios_fourteen_campaign_limits**](AdAccountsApi.md#get_ios_fourteen_campaign_limits) | **GET** /v1/ads/ios-fourteen-campaign-limits | Get iOS 14 campaign limits |
| [**get_value_rule_set**](AdAccountsApi.md#get_value_rule_set) | **GET** /v1/ads/value-rule-sets/{valueRuleSetId} | Read a value rule set |
| [**hide_ad_comment**](AdAccountsApi.md#hide_ad_comment) | **POST** /v1/ads/{adId}/comments/{commentId}/hide | Hide or unhide an ad comment |
| [**invite_ad_account_to_manager**](AdAccountsApi.md#invite_ad_account_to_manager) | **POST** /v1/ads/accounts/manager-links | Invite a client account to a manager |
| [**list_account_callouts**](AdAccountsApi.md#list_account_callouts) | **GET** /v1/ads/accounts/callouts | List account callouts |
| [**list_account_sitelinks**](AdAccountsApi.md#list_account_sitelinks) | **GET** /v1/ads/accounts/sitelinks | List account sitelinks |
| [**list_account_structured_snippets**](AdAccountsApi.md#list_account_structured_snippets) | **GET** /v1/ads/accounts/structured-snippets | List account snippets |
| [**list_ad_account_users**](AdAccountsApi.md#list_ad_account_users) | **GET** /v1/ads/accounts/users | Ad account users |
| [**list_ad_accounts**](AdAccountsApi.md#list_ad_accounts) | **GET** /v1/ads/accounts | List ad accounts |
| [**list_ad_labels**](AdAccountsApi.md#list_ad_labels) | **GET** /v1/ads/labels | List ad labels |
| [**list_ad_negative_keyword_lists**](AdAccountsApi.md#list_ad_negative_keyword_lists) | **GET** /v1/ads/accounts/negative-keyword-lists | List negative keyword lists |
| [**list_ad_studies**](AdAccountsApi.md#list_ad_studies) | **GET** /v1/ads/studies | A/B tests and lift studies |
| [**list_ads_business_centers**](AdAccountsApi.md#list_ads_business_centers) | **GET** /v1/ads/business-centers | List TikTok Business Centers |
| [**list_ads_instagram_accounts**](AdAccountsApi.md#list_ads_instagram_accounts) | **GET** /v1/ads/instagram-accounts | List Instagram ad identities |
| [**list_ads_instagram_posts**](AdAccountsApi.md#list_ads_instagram_posts) | **GET** /v1/ads/instagram-posts | List Instagram posts to boost |
| [**list_advertisable_applications**](AdAccountsApi.md#list_advertisable_applications) | **GET** /v1/ads/advertisable-applications | List advertisable apps |
| [**list_custom_conversions**](AdAccountsApi.md#list_custom_conversions) | **GET** /v1/accounts/{accountId}/custom-conversions | List custom conversions |
| [**list_high_demand_periods**](AdAccountsApi.md#list_high_demand_periods) | **GET** /v1/ads/high-demand-periods | List high-demand periods |
| [**list_meta_business_users**](AdAccountsApi.md#list_meta_business_users) | **GET** /v1/ads/businesses/users | Business users |
| [**list_meta_businesses**](AdAccountsApi.md#list_meta_businesses) | **GET** /v1/ads/businesses | Businesses list |
| [**list_page_users**](AdAccountsApi.md#list_page_users) | **GET** /v1/ads/page-users | Page users of a business |
| [**list_tik_tok_ad_pixels**](AdAccountsApi.md#list_tik_tok_ad_pixels) | **GET** /v1/ads/pixels | List TikTok ad pixels |
| [**list_value_rule_sets**](AdAccountsApi.md#list_value_rule_sets) | **GET** /v1/ads/value-rule-sets | List value rule sets |
| [**remove_account_callout**](AdAccountsApi.md#remove_account_callout) | **DELETE** /v1/ads/accounts/callouts | Remove account callout |
| [**remove_account_sitelink**](AdAccountsApi.md#remove_account_sitelink) | **DELETE** /v1/ads/accounts/sitelinks | Remove account sitelink |
| [**remove_account_structured_snippet**](AdAccountsApi.md#remove_account_structured_snippet) | **DELETE** /v1/ads/accounts/structured-snippets | Remove account snippet |
| [**remove_ad_account_user**](AdAccountsApi.md#remove_ad_account_user) | **DELETE** /v1/ads/accounts/users | Remove a user from an ad account |
| [**remove_ad_label**](AdAccountsApi.md#remove_ad_label) | **DELETE** /v1/ads/labels/{labelId} | Remove a Google Ads label |
| [**remove_page_user**](AdAccountsApi.md#remove_page_user) | **DELETE** /v1/ads/page-users | Remove a user from a Page |
| [**replace_ad_negative_keyword_list_keywords**](AdAccountsApi.md#replace_ad_negative_keyword_list_keywords) | **PUT** /v1/ads/accounts/negative-keyword-lists/{listId}/keywords | Replace negative list keywords |
| [**reply_to_ad_comment**](AdAccountsApi.md#reply_to_ad_comment) | **POST** /v1/ads/{adId}/comments/{commentId}/reply | Reply to an ad comment |
| [**update_account_callouts**](AdAccountsApi.md#update_account_callouts) | **PUT** /v1/ads/accounts/callouts | Update account callouts |
| [**update_account_sitelinks**](AdAccountsApi.md#update_account_sitelinks) | **PUT** /v1/ads/accounts/sitelinks | Update account sitelinks |
| [**update_account_structured_snippets**](AdAccountsApi.md#update_account_structured_snippets) | **PUT** /v1/ads/accounts/structured-snippets | Update account snippets |
| [**update_ad_account**](AdAccountsApi.md#update_ad_account) | **PATCH** /v1/ads/accounts | Update ad account settings |
| [**update_ad_account_manager_link**](AdAccountsApi.md#update_ad_account_manager_link) | **PATCH** /v1/ads/accounts/manager-links | Accept, decline, cancel or end a manager link |
| [**update_ad_label**](AdAccountsApi.md#update_ad_label) | **PATCH** /v1/ads/labels/{labelId} | Update a Google Ads label |
| [**update_ad_negative_keyword_list**](AdAccountsApi.md#update_ad_negative_keyword_list) | **PUT** /v1/ads/accounts/negative-keyword-lists/{listId} | Rename a negative keyword list |
| [**update_value_rule_set**](AdAccountsApi.md#update_value_rule_set) | **PUT** /v1/ads/value-rule-sets/{valueRuleSetId} | Replace a value rule set |


## add_account_callouts

> <AddAccountCallouts201Response> add_account_callouts(add_account_callouts_request)

Add account callouts

Creates assets and customer_asset links for this Google customer. Links apply at account level.

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
add_account_callouts_request = Zernio::AddAccountCalloutsRequest.new({account_id: 'account_id_example', callouts: ['callouts_example']}) # AddAccountCalloutsRequest | 

begin
  # Add account callouts
  result = api_instance.add_account_callouts(add_account_callouts_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->add_account_callouts: #{e}"
end
```

#### Using the add_account_callouts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddAccountCallouts201Response>, Integer, Hash)> add_account_callouts_with_http_info(add_account_callouts_request)

```ruby
begin
  # Add account callouts
  data, status_code, headers = api_instance.add_account_callouts_with_http_info(add_account_callouts_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddAccountCallouts201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->add_account_callouts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_account_callouts_request** | [**AddAccountCalloutsRequest**](AddAccountCalloutsRequest.md) |  |  |

### Return type

[**AddAccountCallouts201Response**](AddAccountCallouts201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_account_sitelinks

> <AddAccountSitelinks201Response> add_account_sitelinks(add_account_sitelinks_request)

Add account sitelinks

Creates assets and customer_asset links for this Google customer. Links apply at account level.

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
add_account_sitelinks_request = Zernio::AddAccountSitelinksRequest.new({account_id: 'account_id_example', sitelinks: [Zernio::GoogleSitelink.new({text: 'text_example', link_url: 'link_url_example'})]}) # AddAccountSitelinksRequest | 

begin
  # Add account sitelinks
  result = api_instance.add_account_sitelinks(add_account_sitelinks_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->add_account_sitelinks: #{e}"
end
```

#### Using the add_account_sitelinks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddAccountSitelinks201Response>, Integer, Hash)> add_account_sitelinks_with_http_info(add_account_sitelinks_request)

```ruby
begin
  # Add account sitelinks
  data, status_code, headers = api_instance.add_account_sitelinks_with_http_info(add_account_sitelinks_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddAccountSitelinks201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->add_account_sitelinks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_account_sitelinks_request** | [**AddAccountSitelinksRequest**](AddAccountSitelinksRequest.md) |  |  |

### Return type

[**AddAccountSitelinks201Response**](AddAccountSitelinks201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_account_structured_snippets

> <AddAccountStructuredSnippets201Response> add_account_structured_snippets(add_account_structured_snippets_request)

Add account snippets

Creates assets and customer_asset links for this Google customer. Links apply at account level.

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
add_account_structured_snippets_request = Zernio::AddAccountStructuredSnippetsRequest.new({account_id: 'account_id_example', structured_snippets: [Zernio::GoogleStructuredSnippet.new({header: 'Amenities', values: ['values_example']})]}) # AddAccountStructuredSnippetsRequest | 

begin
  # Add account snippets
  result = api_instance.add_account_structured_snippets(add_account_structured_snippets_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->add_account_structured_snippets: #{e}"
end
```

#### Using the add_account_structured_snippets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddAccountStructuredSnippets201Response>, Integer, Hash)> add_account_structured_snippets_with_http_info(add_account_structured_snippets_request)

```ruby
begin
  # Add account snippets
  data, status_code, headers = api_instance.add_account_structured_snippets_with_http_info(add_account_structured_snippets_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddAccountStructuredSnippets201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->add_account_structured_snippets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_account_structured_snippets_request** | [**AddAccountStructuredSnippetsRequest**](AddAccountStructuredSnippetsRequest.md) |  |  |

### Return type

[**AddAccountStructuredSnippets201Response**](AddAccountStructuredSnippets201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## assign_ad_account_user

> <AssignAdAccountUser201Response> assign_ad_account_user(assign_ad_account_user_request)

Assign a user to an ad account

Gives a person of the portfolio tasks on the ad account. `MANAGE` is admin, `ADVERTISE` creates and edits ads, `ANALYZE` reads reports, `DRAFT` edits drafts only. Assigning an already assigned user replaces their task set.

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
assign_ad_account_user_request = Zernio::AssignAdAccountUserRequest.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example', user_id: 'user_id_example', tasks: ['MANAGE']}) # AssignAdAccountUserRequest | 

begin
  # Assign a user to an ad account
  result = api_instance.assign_ad_account_user(assign_ad_account_user_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->assign_ad_account_user: #{e}"
end
```

#### Using the assign_ad_account_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssignAdAccountUser201Response>, Integer, Hash)> assign_ad_account_user_with_http_info(assign_ad_account_user_request)

```ruby
begin
  # Assign a user to an ad account
  data, status_code, headers = api_instance.assign_ad_account_user_with_http_info(assign_ad_account_user_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssignAdAccountUser201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->assign_ad_account_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assign_ad_account_user_request** | [**AssignAdAccountUserRequest**](AssignAdAccountUserRequest.md) |  |  |

### Return type

[**AssignAdAccountUser201Response**](AssignAdAccountUser201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## assign_page_user

> <AssignPageUser201Response> assign_page_user(assign_page_user_request)

Assign a user to a Page

Gives a person of the portfolio tasks on a Page the portfolio owns or was granted as a partner. Meta does not assign partner admins automatically, so after an owner shares a Page the partner calls this for the people whose tokens will advertise for it. `ADVERTISE` is what ad creation needs. Assigning an already assigned user replaces their task set.

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
assign_page_user_request = Zernio::AssignPageUserRequest.new({account_id: 'account_id_example', page_id: 'page_id_example', business_id: 'business_id_example', user_id: 'user_id_example', tasks: ['MANAGE']}) # AssignPageUserRequest | 

begin
  # Assign a user to a Page
  result = api_instance.assign_page_user(assign_page_user_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->assign_page_user: #{e}"
end
```

#### Using the assign_page_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssignPageUser201Response>, Integer, Hash)> assign_page_user_with_http_info(assign_page_user_request)

```ruby
begin
  # Assign a user to a Page
  data, status_code, headers = api_instance.assign_page_user_with_http_info(assign_page_user_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssignPageUser201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->assign_page_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assign_page_user_request** | [**AssignPageUserRequest**](AssignPageUserRequest.md) |  |  |

### Return type

[**AssignPageUser201Response**](AssignPageUser201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## attach_ad_label

> <AttachAdLabel200Response> attach_ad_label(label_id, google_ad_label_assignments)

Attach a Google Ads label

Attaches the label to campaigns, ad groups, ads and keywords (Google CampaignLabel, AdGroupLabel, AdGroupAdLabel and AdGroupCriterionLabel) in one mutate. Idempotent: a target that already carries the label is counted in `unchanged` instead of failing the call. All ids are Google's own: ads and keywords use the composite id Google puts in their resource names, `{adGroupId}~{adId}` and `{adGroupId}~{criterionId}` (the keyword form is the tail of `resourceName` on `GET /v1/ads/keywords`).

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
label_id = 'label_id_example' # String | Google label id
google_ad_label_assignments = Zernio::GoogleAdLabelAssignments.new({account_id: 'account_id_example'}) # GoogleAdLabelAssignments | 

begin
  # Attach a Google Ads label
  result = api_instance.attach_ad_label(label_id, google_ad_label_assignments)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->attach_ad_label: #{e}"
end
```

#### Using the attach_ad_label_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AttachAdLabel200Response>, Integer, Hash)> attach_ad_label_with_http_info(label_id, google_ad_label_assignments)

```ruby
begin
  # Attach a Google Ads label
  data, status_code, headers = api_instance.attach_ad_label_with_http_info(label_id, google_ad_label_assignments)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AttachAdLabel200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->attach_ad_label_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label_id** | **String** | Google label id |  |
| **google_ad_label_assignments** | [**GoogleAdLabelAssignments**](GoogleAdLabelAssignments.md) |  |  |

### Return type

[**AttachAdLabel200Response**](AttachAdLabel200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ad_account

> <CreateAdAccount201Response> create_ad_account(create_ad_account_request)

Create Meta ad account

Creates a durable Meta ad account in the end user's own business portfolio using their connected Meta Ads token. Requires an active metaads accountId, Ads access, business_management permission and business admin access. Discover portfolios with GET /v1/ads/businesses. System-user tokens may return an empty businesses list; supply the known business ID in that case.  The self-serve account starts without a payment method. The user must add a payment method in Ads Manager before ads can deliver. Zernio cannot add payment methods. Meta may require business verification and limits how many accounts a business can create. Closing an account does not guarantee more capacity. An ad account cannot truly be deleted, even after closing it and removing it from a business.  timezoneId is Meta's numeric ID, not an IANA timezone name. Select it from https://developers.facebook.com/docs/marketing-api/reference/ad-account/timezone-ids/. For example, 1 is America/Los_Angeles. Meta validates supported currencies and IDs. endAdvertiser, mediaAgency and partner default to NONE for the self-serve flow.  The new account is added atomically to an existing scoped ad-account allowlist. Unrestricted connections stay unrestricted. Reconnecting the same Meta identity preserves this scope unless a caller explicitly replaces it. Discovery is nudged immediately. Use the returned adAccountId with the existing ads endpoints.  This operation is not idempotent and Zernio never automatically retries it. Unknown body fields are rejected. No validateOnly or dry-run option is supported. After a timeout or a 502 with details.creationStatus=unknown, check the business in Ads Manager before attempting another creation. A 201 with connectionUpdated=false means the account exists but needs reconnecting with adAccountIds containing the returned ID and the previous scoped IDs via GET /v1/connect/facebook/ads. Do not repeat the create call. 

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
create_ad_account_request = Zernio::CreateAdAccountRequest.new({account_id: 'account_id_example', business_id: 'business_id_example', name: 'name_example', currency: 'currency_example', timezone_id: 37}) # CreateAdAccountRequest | 

begin
  # Create Meta ad account
  result = api_instance.create_ad_account(create_ad_account_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->create_ad_account: #{e}"
end
```

#### Using the create_ad_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAdAccount201Response>, Integer, Hash)> create_ad_account_with_http_info(create_ad_account_request)

```ruby
begin
  # Create Meta ad account
  data, status_code, headers = api_instance.create_ad_account_with_http_info(create_ad_account_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAdAccount201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->create_ad_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_ad_account_request** | [**CreateAdAccountRequest**](CreateAdAccountRequest.md) |  |  |

### Return type

[**CreateAdAccount201Response**](CreateAdAccount201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ad_label

> <CreateAdLabel201Response> create_ad_label(create_ad_label_request)

Create a Google Ads label

Creates a label on a Google Ads customer. Attach it to campaigns, ad groups, ads and keywords with `POST /v1/ads/labels/{labelId}/assignments`. Label names are unique per customer; a duplicate is a 400.

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
create_ad_label_request = Zernio::CreateAdLabelRequest.new({account_id: 'account_id_example', name: 'name_example'}) # CreateAdLabelRequest | 

begin
  # Create a Google Ads label
  result = api_instance.create_ad_label(create_ad_label_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->create_ad_label: #{e}"
end
```

#### Using the create_ad_label_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAdLabel201Response>, Integer, Hash)> create_ad_label_with_http_info(create_ad_label_request)

```ruby
begin
  # Create a Google Ads label
  data, status_code, headers = api_instance.create_ad_label_with_http_info(create_ad_label_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAdLabel201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->create_ad_label_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_ad_label_request** | [**CreateAdLabelRequest**](CreateAdLabelRequest.md) |  |  |

### Return type

[**CreateAdLabel201Response**](CreateAdLabel201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ad_negative_keyword_list

> <CreateAdNegativeKeywordList201Response> create_ad_negative_keyword_list(create_ad_negative_keyword_list_request)

Create a negative keyword list

Creates one Google Ads shared negative keyword list with optional initial keywords in a single atomic mutation. Daily quota is reserved for every mutate item, so large batches may return 429 before any change. This operation is not idempotent. The list is not attached to any campaign.

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
create_ad_negative_keyword_list_request = Zernio::CreateAdNegativeKeywordListRequest.new({account_id: 'account_id_example', name: 'name_example'}) # CreateAdNegativeKeywordListRequest | 

begin
  # Create a negative keyword list
  result = api_instance.create_ad_negative_keyword_list(create_ad_negative_keyword_list_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->create_ad_negative_keyword_list: #{e}"
end
```

#### Using the create_ad_negative_keyword_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAdNegativeKeywordList201Response>, Integer, Hash)> create_ad_negative_keyword_list_with_http_info(create_ad_negative_keyword_list_request)

```ruby
begin
  # Create a negative keyword list
  data, status_code, headers = api_instance.create_ad_negative_keyword_list_with_http_info(create_ad_negative_keyword_list_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAdNegativeKeywordList201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->create_ad_negative_keyword_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_ad_negative_keyword_list_request** | [**CreateAdNegativeKeywordListRequest**](CreateAdNegativeKeywordListRequest.md) |  |  |

### Return type

[**CreateAdNegativeKeywordList201Response**](CreateAdNegativeKeywordList201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_custom_conversion

> <CustomConversionResult> create_custom_conversion(account_id, create_custom_conversion_request)

Create custom conversion

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
  # Create custom conversion
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
  # Create custom conversion
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

Pre-schedule a temporary budget increase (Black Friday, a launch, a sale) instead of editing the budget by hand on the day. Same target rule as the GET: exactly one of `campaignId` / `adSetId`.  Two Meta constraints worth knowing before you call it. `timeStart` / `timeEnd` must fall on a 15-minute boundary, and a campaign cannot mix `ABSOLUTE` and `MULTIPLIER` across its schedules; the second type is rejected with \"Can't mix your budget scaling selection\". Window rules (must sit inside the campaign's run dates, minimum lead time, no overlap) are Meta's and its message is forwarded verbatim.

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


## delete_ad_comment

> <ReplyToAdComment200Response> delete_ad_comment(ad_id, comment_id, opts)

Delete an ad comment

Delete your own TikTok ad comment or reply. TikTok must return can_delete=true for the comment. Other users' comments can be hidden instead.  Unknown identity and video item fields are resolved only when needed for this action, then persisted for reuse. Comment-specific fields take precedence. If TikTok no longer returns the ad needed to resolve identity, 404 ad_not_found directs you to check deletion or archival in TikTok Ads Manager. Listing can still succeed. Unsupported or unavailable identity returns 403 feature_not_available. Denied access to ad details returns 403 insufficient_permissions with reconnect guidance and the upstream platformError.  Requires Ads access. The ad is resolved within the caller's accessible profiles. Before moderation, Zernio verifies that the comment belongs to this ad using TikTok's ad-group comment listing. The default search window is the last 30 days. Use since/until for older comments, with at most 30 days between the dates. Lookups scan at most 2,000 ad-group comments; narrow the date window if exceeded. Meta returns 501 feature_not_available with guidance to use the existing inbox comment endpoints and the account/post IDs from GET /v1/ads/{adId}/comments. 

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
ad_id = 'ad_id_example' # String | Internal Zernio ad ID or indexed platform ad ID.
comment_id = 'comment_id_example' # String | TikTok comment ID from the ad comment listing.
opts = {
  since: Date.parse('2013-10-20'), # Date | Start date of the comment lookup window. Defaults to 30 days before until.
  _until: Date.parse('2013-10-20') # Date | End date of the comment lookup window. Defaults to today in UTC.
}

begin
  # Delete an ad comment
  result = api_instance.delete_ad_comment(ad_id, comment_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->delete_ad_comment: #{e}"
end
```

#### Using the delete_ad_comment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReplyToAdComment200Response>, Integer, Hash)> delete_ad_comment_with_http_info(ad_id, comment_id, opts)

```ruby
begin
  # Delete an ad comment
  data, status_code, headers = api_instance.delete_ad_comment_with_http_info(ad_id, comment_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReplyToAdComment200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->delete_ad_comment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_id** | **String** | Internal Zernio ad ID or indexed platform ad ID. |  |
| **comment_id** | **String** | TikTok comment ID from the ad comment listing. |  |
| **since** | **Date** | Start date of the comment lookup window. Defaults to 30 days before until. | [optional] |
| **_until** | **Date** | End date of the comment lookup window. Defaults to today in UTC. | [optional] |

### Return type

[**ReplyToAdComment200Response**](ReplyToAdComment200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_ad_negative_keyword_list

> <DeleteAdNegativeKeywordList200Response> delete_ad_negative_keyword_list(list_id, account_id, opts)

Delete a negative keyword list

Removes the Google shared negative keyword list. Detach it from all campaigns first; an in-use list is rejected. Only NEGATIVE_KEYWORDS shared sets are supported.

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
list_id = 'list_id_example' # String | 
account_id = 'account_id_example' # String | 
opts = {
  ad_account_id: 'ad_account_id_example', # String | 
  customer_id: 'customer_id_example', # String | 
  platform: 'facebook' # String | 
}

begin
  # Delete a negative keyword list
  result = api_instance.delete_ad_negative_keyword_list(list_id, account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->delete_ad_negative_keyword_list: #{e}"
end
```

#### Using the delete_ad_negative_keyword_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteAdNegativeKeywordList200Response>, Integer, Hash)> delete_ad_negative_keyword_list_with_http_info(list_id, account_id, opts)

```ruby
begin
  # Delete a negative keyword list
  data, status_code, headers = api_instance.delete_ad_negative_keyword_list_with_http_info(list_id, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteAdNegativeKeywordList200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->delete_ad_negative_keyword_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **String** |  |  |
| **account_id** | **String** |  |  |
| **ad_account_id** | **String** |  | [optional] |
| **customer_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |

### Return type

[**DeleteAdNegativeKeywordList200Response**](DeleteAdNegativeKeywordList200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
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


## detach_ad_label

> <DetachAdLabel200Response> detach_ad_label(label_id, account_id, opts)

Detach a Google Ads label

Removes the label from the given targets. Idempotent; a target without the label is counted in `unchanged`. Fields go in the query string. A JSON body with the same fields is also accepted and, when sent, the query string is ignored.

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
label_id = 'label_id_example' # String | Google label id
account_id = 'account_id_example' # String | Zernio Google Ads connection id.
opts = {
  ad_account_id: 'ad_account_id_example', # String | Platform ad account ID (Google customer ID, digits only). Required when the connection has multiple customers.
  customer_id: 'customer_id_example', # String | Alias of adAccountId, kept for existing callers
  campaign_ids: ['inner_example'], # Array<String> | Google campaign ids. Repeat the parameter or pass a comma-separated list.
  ad_set_ids: ['inner_example'], # Array<String> | Google ad group ids. Repeat the parameter or pass a comma-separated list.
  ad_ids: ['inner_example'], # Array<String> | Google ad group ad ids, {adGroupId}~{adId}. Repeat the parameter or pass a comma-separated list.
  keyword_ids: ['inner_example'] # Array<String> | Google keyword criterion ids, {adGroupId}~{criterionId}. Repeat the parameter or pass a comma-separated list.
}

begin
  # Detach a Google Ads label
  result = api_instance.detach_ad_label(label_id, account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->detach_ad_label: #{e}"
end
```

#### Using the detach_ad_label_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DetachAdLabel200Response>, Integer, Hash)> detach_ad_label_with_http_info(label_id, account_id, opts)

```ruby
begin
  # Detach a Google Ads label
  data, status_code, headers = api_instance.detach_ad_label_with_http_info(label_id, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetachAdLabel200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->detach_ad_label_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label_id** | **String** | Google label id |  |
| **account_id** | **String** | Zernio Google Ads connection id. |  |
| **ad_account_id** | **String** | Platform ad account ID (Google customer ID, digits only). Required when the connection has multiple customers. | [optional] |
| **customer_id** | **String** | Alias of adAccountId, kept for existing callers | [optional] |
| **campaign_ids** | [**Array&lt;String&gt;**](String.md) | Google campaign ids. Repeat the parameter or pass a comma-separated list. | [optional] |
| **ad_set_ids** | [**Array&lt;String&gt;**](String.md) | Google ad group ids. Repeat the parameter or pass a comma-separated list. | [optional] |
| **ad_ids** | [**Array&lt;String&gt;**](String.md) | Google ad group ad ids, {adGroupId}~{adId}. Repeat the parameter or pass a comma-separated list. | [optional] |
| **keyword_ids** | [**Array&lt;String&gt;**](String.md) | Google keyword criterion ids, {adGroupId}~{criterionId}. Repeat the parameter or pass a comma-separated list. | [optional] |

### Return type

[**DetachAdLabel200Response**](DetachAdLabel200Response.md)

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


## get_ad_account_hierarchy

> <GetAdAccountHierarchy200Response> get_ad_account_hierarchy(account_id, opts)

Get manager account hierarchy

Live manager (MCC) and client tree for a Google Ads connection. Starts from every customer the Google user behind the connection can access directly and walks each tree to any depth with `customer_client`, then reads each manager's own client links so every client carries its direct parent, the `managerLinkId` and the link status. Invitations a manager sent that the client has not accepted yet appear as clients with `linkStatus: PENDING` (Google returns no name or currency for them). Refused, canceled and ended links are history and are omitted. `managerLinks` on a root lists the managers linked to that account, including invitations it can still accept with PATCH /v1/ads/accounts/manager-links. A directly accessible account that is also nested in another tree appears only once, inside that tree. `directCustomers` lists every account the Google user accesses directly (the ones this connection can accept or decline invitations for) with their pending invitations, including accounts that are also nested in a tree. Customers Google refuses to read (for example a cancelled account) are listed in `unavailable` with Google's reason instead of failing the call. Up to 50 roots and 50 managers per root are read; `truncated` is true when more exist. Cached for 10 minutes per connection; the response carries `cachedAt` and `stale`. When the connection is scoped to specific ad accounts, client accounts outside that scope are hidden (managers stay visible).

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
account_id = 'account_id_example' # String | Google ads SocialAccount id.
opts = {
  ad_account_id: 'ad_account_id_example', # String | Only return the tree rooted at this customer id (digits only). It must be an account the Google user accesses directly. Omit to list every tree.
  customer_id: 'customer_id_example' # String | Alias of adAccountId, kept for consistency with the other Google Ads account endpoints.
}

begin
  # Get manager account hierarchy
  result = api_instance.get_ad_account_hierarchy(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->get_ad_account_hierarchy: #{e}"
end
```

#### Using the get_ad_account_hierarchy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAdAccountHierarchy200Response>, Integer, Hash)> get_ad_account_hierarchy_with_http_info(account_id, opts)

```ruby
begin
  # Get manager account hierarchy
  data, status_code, headers = api_instance.get_ad_account_hierarchy_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAdAccountHierarchy200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->get_ad_account_hierarchy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Google ads SocialAccount id. |  |
| **ad_account_id** | **String** | Only return the tree rooted at this customer id (digits only). It must be an account the Google user accesses directly. Omit to list every tree. | [optional] |
| **customer_id** | **String** | Alias of adAccountId, kept for consistency with the other Google Ads account endpoints. | [optional] |

### Return type

[**GetAdAccountHierarchy200Response**](GetAdAccountHierarchy200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ad_account_live_entities

> <GetAdAccountLiveEntities200Response> get_ad_account_live_entities(account_id, ad_account_id, opts)

Read an ad account's campaigns and ad sets live

Reads the campaigns and ad sets of one Meta ad account or TikTok advertiser **live from the platform**, so it is cheap enough to run before every write: for example a per-ad-account spend ceiling that must see the current daily / lifetime budget rather than the synced copy. On Meta it is a single Graph call per request (the account's `/campaigns` and `/adsets` edges, filtered by `effective_status`); on TikTok one `campaign/get` and one `adgroup/get` page (TikTok ad groups are returned as `adSets`).  **Live vs synced.** GET /v1/ads/campaigns and GET /v1/ads/ad-sets serve Zernio's synced store, refreshed by background sync (typically 15 to 60 minutes behind Meta), and their `live=true` re-reads only the on/off switches of at most 20 objects. This endpoint returns what Meta reports at `readAt`, for every matching campaign and ad set, and stores nothing.  Budgets and bid amounts are in whole units of `currency`, the same units as the synced rows (Meta's minor units are converted; TikTok already reports whole units). A campaign with a campaign budget (Meta Advantage+ campaign budget, TikTok campaign budget optimization) carries `budget`; otherwise each ad set carries its own.  Each level returns at most `limit` rows. When more match, `paging.<level>.after` is a cursor: pass it back as `after` together with `level` to read the next page of that level only. TikTok pages by number, so a TikTok cursor must be sent with the same `limit` that produced it (another `limit` is a 400). Other platforms answer 501 rather than serving synced data.  **TikTok specifics.** `status` maps to TikTok's `primary_status` filter, which takes one value: ACTIVE = delivering (`STATUS_DELIVERY_OK`), PAUSED = switched off (`STATUS_DISABLE`), DELETED = `STATUS_DELETE`; omitted = every status except deleted (`STATUS_NOT_DELETE`, which includes enabled entities that are not delivering, such as an ad group in review). Several values, or IN_PROCESS, WITH_ISSUES, CAMPAIGN_PAUSED and ARCHIVED, are a 400. `budgetRemaining` and `spendCap` are always null (TikTok reports neither), campaign `bidStrategy` is null (TikTok bids per ad group), ad set `bidStrategy` is normalized to the Meta vocabulary like GET /v1/ads, `promotedObject` is `{ pixelId, customEventType, applicationId, customConversionId }` (the keys TikTok has set, as POST /v1/ads/create takes them), and `targeting` holds TikTok's targeting fields verbatim.

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
account_id = 'account_id_example' # String | Zernio SocialAccount id (posting or ads variant) used to resolve the platform token.
ad_account_id = 'ad_account_id_example' # String | Meta ad account id (act_<n>) or TikTok advertiser id (digits).
opts = {
  status: 'ACTIVE', # String | Comma-separated Meta `effective_status` values to keep: ACTIVE, PAUSED, IN_PROCESS, WITH_ISSUES, DELETED, ARCHIVED, and CAMPAIGN_PAUSED (ad sets only; the campaigns level ignores it). Defaults to every status except DELETED and ARCHIVED. An unknown value is a 400. TikTok takes a single value: ACTIVE, PAUSED or DELETED (see the description).
  level: 'campaign', # String | Read only one level. Required with `after`. Both levels are read when omitted.
  limit: 56, # Integer | Maximum rows per level in this response.
  after: 'after_example' # String | Cursor from `paging.campaigns.after` or `paging.adSets.after` of a previous response. Requires `level` (and on TikTok the same `limit`).
}

begin
  # Read an ad account's campaigns and ad sets live
  result = api_instance.get_ad_account_live_entities(account_id, ad_account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->get_ad_account_live_entities: #{e}"
end
```

#### Using the get_ad_account_live_entities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAdAccountLiveEntities200Response>, Integer, Hash)> get_ad_account_live_entities_with_http_info(account_id, ad_account_id, opts)

```ruby
begin
  # Read an ad account's campaigns and ad sets live
  data, status_code, headers = api_instance.get_ad_account_live_entities_with_http_info(account_id, ad_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAdAccountLiveEntities200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->get_ad_account_live_entities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id (posting or ads variant) used to resolve the platform token. |  |
| **ad_account_id** | **String** | Meta ad account id (act_&lt;n&gt;) or TikTok advertiser id (digits). |  |
| **status** | **String** | Comma-separated Meta &#x60;effective_status&#x60; values to keep: ACTIVE, PAUSED, IN_PROCESS, WITH_ISSUES, DELETED, ARCHIVED, and CAMPAIGN_PAUSED (ad sets only; the campaigns level ignores it). Defaults to every status except DELETED and ARCHIVED. An unknown value is a 400. TikTok takes a single value: ACTIVE, PAUSED or DELETED (see the description). | [optional] |
| **level** | **String** | Read only one level. Required with &#x60;after&#x60;. Both levels are read when omitted. | [optional] |
| **limit** | **Integer** | Maximum rows per level in this response. | [optional][default to 200] |
| **after** | **String** | Cursor from &#x60;paging.campaigns.after&#x60; or &#x60;paging.adSets.after&#x60; of a previous response. Requires &#x60;level&#x60; (and on TikTok the same &#x60;limit&#x60;). | [optional] |

### Return type

[**GetAdAccountLiveEntities200Response**](GetAdAccountLiveEntities200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ad_comments

> <GetAdComments200Response> get_ad_comments(ad_id, opts)

List comments on an ad

Returns comments on an ad's underlying creative post. Useful for moderating or analyzing engagement on dark posts (ad creatives that never went live organically), which the regular GET /v1/inbox/comments/{postId} endpoint cannot serve because dark posts are not in Zernio's post database.  An ad that runs on both Facebook feed and Instagram feed has two separate underlying posts with separate comment threads (the creative's effective_object_story_id and effective_instagram_media_id). Use the `placement` query param to pick one; with no param the Instagram side is returned when it exists, otherwise Facebook. The identifiers are read from the ad record (persisted during sync) with a Marketing-API fallback for ads that predate the field.  For Instagram-placed comments, the Instagram account that runs the ad must be connected to Zernio, because those comments are read through that account's token. If no connected Instagram account on the profile can read the ad's media, the call returns ads_connection_required (the Facebook side, if any, is still readable via ?placement=facebook).  TikTok uses the connected TikTok Ads advertiser token and supports both paid video ads and Spark Ads. `since` and `until` select a date window of at most 30 days; the default is the last 30 days. TikTok searches by ad group, so Zernio filters each page to this ad. A page can be empty while `pagination.hasMore` is true. Reuse `pagination.cursor` with the same `limit`; the cursor retains the date window. `placement` is Meta-only and returns a 400 for TikTok. Listing needs no identity or video item ID. When the ad group is stored, each page makes one comment-list call and no ad-detail lookup, including for external ads that TikTok no longer returns from ad details. `meta.tiktokItemId: null` does not prevent listing. If the ad group is missing, Zernio fetches ad details; unavailable details return 404 ad_not_found, and no ad group returns 400 ad_not_commentable.  TikTok returns replies as separate comments with `parentId`; nested reply fetching is not supported. `canReply` requires a first-level comment, comment-management permission, a video item ID and a supported TT_USER or CUSTOMIZED_USER identity. `canDelete` requires TikTok's own-comment deletion capability, a video item ID and a supported identity. Both flags are false when identity or item is unknown. Listing uses stored and comment-specific fields without fetching identity. A direct reply or delete request can lazily resolve missing fields and succeed even after a false flag. `canHide` is true because visibility changes need only advertiser and comment IDs. `canLike` is false. Use the ad comment reply, hide and delete operations below to moderate TikTok comments. Other platforms return feature_not_available.  Requires the Ads add-on. Response shape matches GET /v1/inbox/comments/{postId}.  The `{adId}` path segment accepts any identifier dialect Zernio indexes for the ad: Zernio internal `_id` (24-char hex), the numeric `platformAdId` (the value shipped in `comment.received` webhooks as `comment.ad.id`), or the creative's `effective_object_story_id` / `effective_instagram_media_id`. Caller doesn't need a translation step. 

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
ad_id = 'ad_id_example' # String | Internal Zernio ad ID or indexed platform ad/post ID.
opts = {
  placement: 'facebook', # String | Which side of the ad to return comments for. Omit to default to the Instagram side when present, else Facebook. Returns ad_not_commentable if the ad has no such placement.
  limit: 56, # Integer | 
  since: Date.parse('2013-10-20'), # Date | TikTok-only start date. Defaults to 30 days before until. Maximum window is 30 days.
  _until: Date.parse('2013-10-20'), # Date | TikTok-only end date. Defaults to today in UTC.
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
| **ad_id** | **String** | Internal Zernio ad ID or indexed platform ad/post ID. |  |
| **placement** | **String** | Which side of the ad to return comments for. Omit to default to the Instagram side when present, else Facebook. Returns ad_not_commentable if the ad has no such placement. | [optional] |
| **limit** | **Integer** |  | [optional][default to 25] |
| **since** | **Date** | TikTok-only start date. Defaults to 30 days before until. Maximum window is 30 days. | [optional] |
| **_until** | **Date** | TikTok-only end date. Defaults to today in UTC. | [optional] |
| **cursor** | **String** | Pagination cursor from a previous response. | [optional] |

### Return type

[**GetAdComments200Response**](GetAdComments200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ad_negative_keyword_list

> <GetAdNegativeKeywordList200Response> get_ad_negative_keyword_list(list_id, account_id, opts)

Get a negative keyword list

Google Ads shared negative keyword lists (shared_set type NEGATIVE_KEYWORDS). Reads are cached for 10 minutes; quota exhaustion may return the last successful result for up to 7 days with stale=true. Customer selection is limited to this connection and its account scope. Includes the keywords and their criterion ids.

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
list_id = 'list_id_example' # String | 
account_id = 'account_id_example' # String | 
opts = {
  ad_account_id: 'ad_account_id_example', # String | 
  customer_id: 'customer_id_example', # String | 
  platform: 'facebook' # String | 
}

begin
  # Get a negative keyword list
  result = api_instance.get_ad_negative_keyword_list(list_id, account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->get_ad_negative_keyword_list: #{e}"
end
```

#### Using the get_ad_negative_keyword_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAdNegativeKeywordList200Response>, Integer, Hash)> get_ad_negative_keyword_list_with_http_info(list_id, account_id, opts)

```ruby
begin
  # Get a negative keyword list
  data, status_code, headers = api_instance.get_ad_negative_keyword_list_with_http_info(list_id, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAdNegativeKeywordList200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->get_ad_negative_keyword_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **String** |  |  |
| **account_id** | **String** |  |  |
| **ad_account_id** | **String** |  | [optional] |
| **customer_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |

### Return type

[**GetAdNegativeKeywordList200Response**](GetAdNegativeKeywordList200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ads_activity_log

> <GetAdsActivityLog200Response> get_ads_activity_log(account_id, ad_account_id, opts)

Ad account change / audit log

**Google**: reads the customer's `change_event` history, newest first. Google keeps 30 days of it, so `since` defaults to 29 days ago and an older `since` returns 400; `until` defaults to today. Each change is mapped onto the Meta row shape: `event_type` = resource_change_operation (CREATE, UPDATE, REMOVE), `event_time` = change_date_time, `actor_name` = user_email, `object_type` = change_resource_type, `object_id` = the last numeric id of `object_resource_name`, `application_name` = client_type, `changed_fields` (array), and `extra_data` = a JSON string `{ old, new }` with Google's old and new resource. Pass `paging.after` back as `after` for the next page; it is null when nothing older is left. A page never splits a change batch (the changes of one request share an `event_time`), so a page can hold fewer rows than `limit` while more follow, or more when one batch is larger than `limit`. `adAccountId` is the numeric customer id.  **Meta**: Account-level audit log from Meta's `/act_X/activities`: who changed what and when (creates, edits, status flips, budget changes...) with Meta's translated event names and the structured before/after in `extra_data`. Rows are returned verbatim. Meta has no server-side per-object filter on this edge, so `objectId` filters the returned page client-side (combine with paging to walk history for one campaign/ad set/ad).

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
ad_account_id = 'ad_account_id_example' # String | Meta ad account id (act_<n>), or the Google customer id (digits only).
opts = {
  since: Date.parse('2013-10-20'), # Date | Start of range (YYYY-MM-DD). Google: at most 29 days ago, the default.
  _until: Date.parse('2013-10-20'), # Date | End of range (YYYY-MM-DD).
  object_id: 'object_id_example', # String | Client-side filter to one object id (campaign, ad set / ad group or ad).
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
| **ad_account_id** | **String** | Meta ad account id (act_&lt;n&gt;), or the Google customer id (digits only). |  |
| **since** | **Date** | Start of range (YYYY-MM-DD). Google: at most 29 days ago, the default. | [optional] |
| **_until** | **Date** | End of range (YYYY-MM-DD). | [optional] |
| **object_id** | **String** | Client-side filter to one object id (campaign, ad set / ad group or ad). | [optional] |
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

> <GetDsaDefaults200Response> get_dsa_defaults(account_id, ad_account_id)

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
account_id = 'account_id_example' # String | Account ID (metaads, or a facebook/instagram posting account)
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

> <Array(<GetDsaDefaults200Response>, Integer, Hash)> get_dsa_defaults_with_http_info(account_id, ad_account_id)

```ruby
begin
  # Get ad account DSA defaults
  data, status_code, headers = api_instance.get_dsa_defaults_with_http_info(account_id, ad_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDsaDefaults200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->get_dsa_defaults_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID (metaads, or a facebook/instagram posting account) |  |
| **ad_account_id** | **String** | Meta ad account ID (act_...) |  |

### Return type

[**GetDsaDefaults200Response**](GetDsaDefaults200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_dsa_recommendations

> <GetDsaRecommendations200Response> get_dsa_recommendations(account_id, ad_account_id)

Get DSA recommendations

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
account_id = 'account_id_example' # String | Account ID (metaads, or a facebook/instagram posting account)
ad_account_id = 'ad_account_id_example' # String | Meta ad account ID (act_...)

begin
  # Get DSA recommendations
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
  # Get DSA recommendations
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
| **account_id** | **String** | Account ID (metaads, or a facebook/instagram posting account) |  |
| **ad_account_id** | **String** | Meta ad account ID (act_...) |  |

### Return type

[**GetDsaRecommendations200Response**](GetDsaRecommendations200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ios_fourteen_campaign_limits

> <GetIosFourteenCampaignLimits200Response> get_ios_fourteen_campaign_limits(account_id, ad_account_id, application_id)

Get iOS 14 campaign limits

Reads Meta iOS 14 campaign limits for an application on an ad account. applicationId is sent as Meta app_id. This read does not establish that the application is configured for iOS promotion.

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
account_id = 'account_id_example' # String | Zernio Meta Ads or Facebook SocialAccount ID.
ad_account_id = 'ad_account_id_example' # String | Meta ad account ID including the act_ prefix.
application_id = 'application_id_example' # String | Meta application ID from advertisable-applications.

begin
  # Get iOS 14 campaign limits
  result = api_instance.get_ios_fourteen_campaign_limits(account_id, ad_account_id, application_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->get_ios_fourteen_campaign_limits: #{e}"
end
```

#### Using the get_ios_fourteen_campaign_limits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetIosFourteenCampaignLimits200Response>, Integer, Hash)> get_ios_fourteen_campaign_limits_with_http_info(account_id, ad_account_id, application_id)

```ruby
begin
  # Get iOS 14 campaign limits
  data, status_code, headers = api_instance.get_ios_fourteen_campaign_limits_with_http_info(account_id, ad_account_id, application_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetIosFourteenCampaignLimits200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->get_ios_fourteen_campaign_limits_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio Meta Ads or Facebook SocialAccount ID. |  |
| **ad_account_id** | **String** | Meta ad account ID including the act_ prefix. |  |
| **application_id** | **String** | Meta application ID from advertisable-applications. |  |

### Return type

[**GetIosFourteenCampaignLimits200Response**](GetIosFourteenCampaignLimits200Response.md)

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


## hide_ad_comment

> <HideAdComment200Response> hide_ad_comment(ad_id, comment_id, hide_ad_comment_request, opts)

Hide or unhide an ad comment

Hide or restore a TikTok ad comment. Send hidden=true to hide it or hidden=false to make it public again. Identity and video item ID are not required; no identity lookup is performed.  Requires Ads access. The ad is resolved within the caller's accessible profiles. Before moderation, Zernio verifies that the comment belongs to this ad using TikTok's ad-group comment listing. The default search window is the last 30 days. Use since/until for older comments, with at most 30 days between the dates. Lookups scan at most 2,000 ad-group comments; narrow the date window if exceeded. Meta returns 501 feature_not_available with guidance to use the existing inbox comment endpoints and the account/post IDs from GET /v1/ads/{adId}/comments. 

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
ad_id = 'ad_id_example' # String | Internal Zernio ad ID or indexed platform ad ID.
comment_id = 'comment_id_example' # String | TikTok comment ID from the ad comment listing.
hide_ad_comment_request = Zernio::HideAdCommentRequest.new({hidden: false}) # HideAdCommentRequest | 
opts = {
  since: Date.parse('2013-10-20'), # Date | Start date of the comment lookup window. Defaults to 30 days before until.
  _until: Date.parse('2013-10-20') # Date | End date of the comment lookup window. Defaults to today in UTC.
}

begin
  # Hide or unhide an ad comment
  result = api_instance.hide_ad_comment(ad_id, comment_id, hide_ad_comment_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->hide_ad_comment: #{e}"
end
```

#### Using the hide_ad_comment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HideAdComment200Response>, Integer, Hash)> hide_ad_comment_with_http_info(ad_id, comment_id, hide_ad_comment_request, opts)

```ruby
begin
  # Hide or unhide an ad comment
  data, status_code, headers = api_instance.hide_ad_comment_with_http_info(ad_id, comment_id, hide_ad_comment_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HideAdComment200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->hide_ad_comment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_id** | **String** | Internal Zernio ad ID or indexed platform ad ID. |  |
| **comment_id** | **String** | TikTok comment ID from the ad comment listing. |  |
| **hide_ad_comment_request** | [**HideAdCommentRequest**](HideAdCommentRequest.md) |  |  |
| **since** | **Date** | Start date of the comment lookup window. Defaults to 30 days before until. | [optional] |
| **_until** | **Date** | End date of the comment lookup window. Defaults to today in UTC. | [optional] |

### Return type

[**HideAdComment200Response**](HideAdComment200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## invite_ad_account_to_manager

> <GoogleAdsManagerLink> invite_ad_account_to_manager(invite_ad_account_to_manager_request)

Invite a client account to a manager

Sends a manager-to-client link invitation from `managerCustomerId` to `clientCustomerId` (Google's CustomerClientLinkService). The manager must be one the connection's Google user reaches, directly or under another manager (see GET /v1/ads/accounts/hierarchy); the client can be any Google Ads account. The link stays `PENDING` until someone with access to the client accepts it in Google Ads or through PATCH on this path. Not idempotent: Google refuses a second invitation while one is pending. Send `validateOnly: true` to have Google check the request without sending anything.

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
invite_ad_account_to_manager_request = Zernio::InviteAdAccountToManagerRequest.new({account_id: 'account_id_example', manager_customer_id: 'manager_customer_id_example', client_customer_id: 'client_customer_id_example'}) # InviteAdAccountToManagerRequest | 

begin
  # Invite a client account to a manager
  result = api_instance.invite_ad_account_to_manager(invite_ad_account_to_manager_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->invite_ad_account_to_manager: #{e}"
end
```

#### Using the invite_ad_account_to_manager_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GoogleAdsManagerLink>, Integer, Hash)> invite_ad_account_to_manager_with_http_info(invite_ad_account_to_manager_request)

```ruby
begin
  # Invite a client account to a manager
  data, status_code, headers = api_instance.invite_ad_account_to_manager_with_http_info(invite_ad_account_to_manager_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GoogleAdsManagerLink>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->invite_ad_account_to_manager_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invite_ad_account_to_manager_request** | [**InviteAdAccountToManagerRequest**](InviteAdAccountToManagerRequest.md) |  |  |

### Return type

[**GoogleAdsManagerLink**](GoogleAdsManagerLink.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_account_callouts

> <ListAccountCallouts200Response> list_account_callouts(account_id, opts)

List account callouts

Lists directly attached Google assets. Fresh reads are cached for 10 minutes; exhausted quota may return the last successful read with stale=true. Inherited assets are not included. Preserves Google RMF C.75 account-level callouts.

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
account_id = 'account_id_example' # String | 
opts = {
  ad_account_id: 'ad_account_id_example', # String | 
  customer_id: 'customer_id_example' # String | 
}

begin
  # List account callouts
  result = api_instance.list_account_callouts(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->list_account_callouts: #{e}"
end
```

#### Using the list_account_callouts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAccountCallouts200Response>, Integer, Hash)> list_account_callouts_with_http_info(account_id, opts)

```ruby
begin
  # List account callouts
  data, status_code, headers = api_instance.list_account_callouts_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAccountCallouts200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->list_account_callouts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **ad_account_id** | **String** |  | [optional] |
| **customer_id** | **String** |  | [optional] |

### Return type

[**ListAccountCallouts200Response**](ListAccountCallouts200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_account_sitelinks

> <ListAccountSitelinks200Response> list_account_sitelinks(account_id, opts)

List account sitelinks

Lists directly attached Google assets. Fresh reads are cached for 10 minutes; exhausted quota may return the last successful read with stale=true. Inherited assets are not included.

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
account_id = 'account_id_example' # String | 
opts = {
  ad_account_id: 'ad_account_id_example', # String | 
  customer_id: 'customer_id_example' # String | 
}

begin
  # List account sitelinks
  result = api_instance.list_account_sitelinks(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->list_account_sitelinks: #{e}"
end
```

#### Using the list_account_sitelinks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAccountSitelinks200Response>, Integer, Hash)> list_account_sitelinks_with_http_info(account_id, opts)

```ruby
begin
  # List account sitelinks
  data, status_code, headers = api_instance.list_account_sitelinks_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAccountSitelinks200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->list_account_sitelinks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **ad_account_id** | **String** |  | [optional] |
| **customer_id** | **String** |  | [optional] |

### Return type

[**ListAccountSitelinks200Response**](ListAccountSitelinks200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_account_structured_snippets

> <ListAccountStructuredSnippets200Response> list_account_structured_snippets(account_id, opts)

List account snippets

Lists directly attached Google assets. Fresh reads are cached for 10 minutes; exhausted quota may return the last successful read with stale=true. Inherited assets are not included.

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
account_id = 'account_id_example' # String | 
opts = {
  ad_account_id: 'ad_account_id_example', # String | 
  customer_id: 'customer_id_example' # String | 
}

begin
  # List account snippets
  result = api_instance.list_account_structured_snippets(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->list_account_structured_snippets: #{e}"
end
```

#### Using the list_account_structured_snippets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAccountStructuredSnippets200Response>, Integer, Hash)> list_account_structured_snippets_with_http_info(account_id, opts)

```ruby
begin
  # List account snippets
  data, status_code, headers = api_instance.list_account_structured_snippets_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAccountStructuredSnippets200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->list_account_structured_snippets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **ad_account_id** | **String** |  | [optional] |
| **customer_id** | **String** |  | [optional] |

### Return type

[**ListAccountStructuredSnippets200Response**](ListAccountStructuredSnippets200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ad_account_users

> <ListAdAccountUsers200Response> list_ad_account_users(account_id, ad_account_id, business_id)

Ad account users

People of a business portfolio assigned to a Meta ad account, with their tasks. Ids are business-scoped user ids (see `GET /v1/ads/businesses/users`).

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
business_id = 'business_id_example' # String | Business portfolio whose people to list.

begin
  # Ad account users
  result = api_instance.list_ad_account_users(account_id, ad_account_id, business_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->list_ad_account_users: #{e}"
end
```

#### Using the list_ad_account_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAdAccountUsers200Response>, Integer, Hash)> list_ad_account_users_with_http_info(account_id, ad_account_id, business_id)

```ruby
begin
  # Ad account users
  data, status_code, headers = api_instance.list_ad_account_users_with_http_info(account_id, ad_account_id, business_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAdAccountUsers200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->list_ad_account_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token. |  |
| **ad_account_id** | **String** | Meta ad account id (act_&lt;n&gt;). |  |
| **business_id** | **String** | Business portfolio whose people to list. |  |

### Return type

[**ListAdAccountUsers200Response**](ListAdAccountUsers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ad_accounts

> <ListAdAccounts200Response> list_ad_accounts(account_id, opts)

List ad accounts

Returns the platform ad accounts available for the given account (e.g. Meta ad accounts, TikTok advertiser IDs, Google Ads customer IDs). Meta business-login accounts use their own system-user token. Fresh Meta discovery includes businessId and businessName from the owning Business Manager when available; cached entries gain these fields after the next discovery refresh.  For TikTok agencies: enumerates every advertiser under every Business Center the token can read (paginated server-side), then chunks the lookup against TikTok's `/advertiser/info/` endpoint (which has a per-call cap of ≤100 IDs). Solo advertisers without a BC fall back to the OAuth-time `advertiser_ids` list. Cached for 1h on the SocialAccount; lazy-refreshed on first call after expiry.  For Google Ads: responds `429` when Google's API quota is temporarily exhausted (instead of an empty list). Retry after a delay. 

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
account_id = 'account_id_example' # String | Account ID
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
| **account_id** | **String** | Account ID |  |
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

> <ListAdLabels200Response> list_ad_labels(account_id, opts)

List ad labels

Lists the organizational labels on an ad account.  - **Meta**: pass `adAccountId=act_<n>`. Rows are Meta's `/act_X/adlabels` returned verbatim   (id, name, created/updated time), paginated with `limit` / `after`. - **Google Ads**: pass the numeric customer id as `adAccountId` (optional when the   connection has a single customer). Returns every non-removed label as a `GoogleAdLabel`   in one page (`paging.after` is always null). Reads are cached for 10 minutes; when the   shared Google quota is exhausted the last successful result is served with `stale: true`.

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
account_id = 'account_id_example' # String | Zernio SocialAccount id. For Meta, the posting or ads variant used to resolve the token.
opts = {
  ad_account_id: 'ad_account_id_example', # String | Meta ad account id (act_<n>), or the Google Ads customer id (digits only).
  customer_id: 'customer_id_example', # String | Google only. Alias of adAccountId, kept for existing callers.
  limit: 56, # Integer | Meta only. Rows per page.
  after: 'after_example' # String | Meta only. Cursor from paging.after of the previous page.
}

begin
  # List ad labels
  result = api_instance.list_ad_labels(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->list_ad_labels: #{e}"
end
```

#### Using the list_ad_labels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAdLabels200Response>, Integer, Hash)> list_ad_labels_with_http_info(account_id, opts)

```ruby
begin
  # List ad labels
  data, status_code, headers = api_instance.list_ad_labels_with_http_info(account_id, opts)
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
| **account_id** | **String** | Zernio SocialAccount id. For Meta, the posting or ads variant used to resolve the token. |  |
| **ad_account_id** | **String** | Meta ad account id (act_&lt;n&gt;), or the Google Ads customer id (digits only). | [optional] |
| **customer_id** | **String** | Google only. Alias of adAccountId, kept for existing callers. | [optional] |
| **limit** | **Integer** | Meta only. Rows per page. | [optional][default to 25] |
| **after** | **String** | Meta only. Cursor from paging.after of the previous page. | [optional] |

### Return type

[**ListAdLabels200Response**](ListAdLabels200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ad_negative_keyword_lists

> <ListAdNegativeKeywordLists200Response> list_ad_negative_keyword_lists(account_id, opts)

List negative keyword lists

Google Ads shared negative keyword lists (shared_set type NEGATIVE_KEYWORDS). Reads are cached for 10 minutes; quota exhaustion may return the last successful result for up to 7 days with stale=true. Customer selection is limited to this connection and its account scope.

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
account_id = 'account_id_example' # String | 
opts = {
  ad_account_id: 'ad_account_id_example', # String | 
  customer_id: 'customer_id_example', # String | 
  platform: 'facebook' # String | 
}

begin
  # List negative keyword lists
  result = api_instance.list_ad_negative_keyword_lists(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->list_ad_negative_keyword_lists: #{e}"
end
```

#### Using the list_ad_negative_keyword_lists_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAdNegativeKeywordLists200Response>, Integer, Hash)> list_ad_negative_keyword_lists_with_http_info(account_id, opts)

```ruby
begin
  # List negative keyword lists
  data, status_code, headers = api_instance.list_ad_negative_keyword_lists_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAdNegativeKeywordLists200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->list_ad_negative_keyword_lists_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **ad_account_id** | **String** |  | [optional] |
| **customer_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |

### Return type

[**ListAdNegativeKeywordLists200Response**](ListAdNegativeKeywordLists200Response.md)

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
  fields: 'id,name,type,cells{id,name,treatment_percentage}', # String | Comma-separated Graph field override. Supports nested {} projections and Graph field modifiers, so a nested edge can be paged explicitly: without a .limit() modifier the expansion runs at the Meta default page size and the tail is dropped silently.
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
| **fields** | **String** | Comma-separated Graph field override. Supports nested {} projections and Graph field modifiers, so a nested edge can be paged explicitly: without a .limit() modifier the expansion runs at the Meta default page size and the tail is dropped silently. | [optional] |
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


## list_ads_instagram_accounts

> <ListAdsInstagramAccounts200Response> list_ads_instagram_accounts(account_id, ad_account_id)

List Instagram ad identities

Discovers identities through connected_instagram_accounts, Page linkage and Page-backed identities, with a best-effort business fallback. Business permission errors do not fail discovery. The resolved object uses the same profile-scoped resolver as ad creation; null means no identity was resolved. Format-specific observed-actor fallbacks at creative creation are not predicted.

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
account_id = 'account_id_example' # String | Zernio Meta Ads or Facebook SocialAccount ID.
ad_account_id = 'ad_account_id_example' # String | Meta ad account ID including the act_ prefix.

begin
  # List Instagram ad identities
  result = api_instance.list_ads_instagram_accounts(account_id, ad_account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->list_ads_instagram_accounts: #{e}"
end
```

#### Using the list_ads_instagram_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAdsInstagramAccounts200Response>, Integer, Hash)> list_ads_instagram_accounts_with_http_info(account_id, ad_account_id)

```ruby
begin
  # List Instagram ad identities
  data, status_code, headers = api_instance.list_ads_instagram_accounts_with_http_info(account_id, ad_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAdsInstagramAccounts200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->list_ads_instagram_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio Meta Ads or Facebook SocialAccount ID. |  |
| **ad_account_id** | **String** | Meta ad account ID including the act_ prefix. |  |

### Return type

[**ListAdsInstagramAccounts200Response**](ListAdsInstagramAccounts200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ads_instagram_posts

> <ListAdsInstagramPosts200Response> list_ads_instagram_posts(account_id, opts)

List Instagram posts to boost

Lists the media of the Instagram account this Meta connection can reach, so an existing Instagram post can be boosted without connecting the Instagram account separately. Each `posts[].id` is the existing-post id to send as `platformPostId` when creating the ad; Meta turns it into `source_instagram_media_id` on the creative. Identity resolution reuses the same resolver as `/v1/ads/instagram-accounts`. `igUserId` is always checked against the identities the connection can reach and is never trusted as sent. When no identity is reachable the endpoint fails instead of returning an empty list, and the two causes stay apart: `403 reconnect_required` means the connection predates Instagram access (Meta then omits `instagram_business_account` from the Page read rather than erroring, so it looks identical to having no data) and the account must be reconnected granting Instagram access, while `422 instagram_business_account_unresolved` means the Page genuinely has no Instagram professional account linked.

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
account_id = 'account_id_example' # String | Zernio Meta Ads, Facebook or Instagram SocialAccount ID.
opts = {
  ad_account_id: 'ad_account_id_example', # String | Meta ad account ID including the act_ prefix. Narrows identity resolution to the Instagram accounts reachable from this ad account.
  ig_user_id: 'ig_user_id_example', # String | Instagram identity to list. Must be one this connection can reach, otherwise the request is rejected with a 400.
  limit: 56, # Integer | Number of posts to return per page.
  after: 'after_example' # String | Opaque Meta cursor from a previous response's paging.after.
}

begin
  # List Instagram posts to boost
  result = api_instance.list_ads_instagram_posts(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->list_ads_instagram_posts: #{e}"
end
```

#### Using the list_ads_instagram_posts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAdsInstagramPosts200Response>, Integer, Hash)> list_ads_instagram_posts_with_http_info(account_id, opts)

```ruby
begin
  # List Instagram posts to boost
  data, status_code, headers = api_instance.list_ads_instagram_posts_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAdsInstagramPosts200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->list_ads_instagram_posts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio Meta Ads, Facebook or Instagram SocialAccount ID. |  |
| **ad_account_id** | **String** | Meta ad account ID including the act_ prefix. Narrows identity resolution to the Instagram accounts reachable from this ad account. | [optional] |
| **ig_user_id** | **String** | Instagram identity to list. Must be one this connection can reach, otherwise the request is rejected with a 400. | [optional] |
| **limit** | **Integer** | Number of posts to return per page. | [optional][default to 25] |
| **after** | **String** | Opaque Meta cursor from a previous response&#39;s paging.after. | [optional] |

### Return type

[**ListAdsInstagramPosts200Response**](ListAdsInstagramPosts200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_advertisable_applications

> <ListAdvertisableApplications200Response> list_advertisable_applications(account_id, ad_account_id)

List advertisable apps

Lists applications available to a Meta ad account, their supported platforms and unmodified object store URLs. A listed app still needs a configured mobile platform and store URL to run install promotion.

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
account_id = 'account_id_example' # String | Zernio Meta Ads or Facebook SocialAccount ID.
ad_account_id = 'ad_account_id_example' # String | Meta ad account ID including the act_ prefix.

begin
  # List advertisable apps
  result = api_instance.list_advertisable_applications(account_id, ad_account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->list_advertisable_applications: #{e}"
end
```

#### Using the list_advertisable_applications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAdvertisableApplications200Response>, Integer, Hash)> list_advertisable_applications_with_http_info(account_id, ad_account_id)

```ruby
begin
  # List advertisable apps
  data, status_code, headers = api_instance.list_advertisable_applications_with_http_info(account_id, ad_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAdvertisableApplications200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->list_advertisable_applications_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio Meta Ads or Facebook SocialAccount ID. |  |
| **ad_account_id** | **String** | Meta ad account ID including the act_ prefix. |  |

### Return type

[**ListAdvertisableApplications200Response**](ListAdvertisableApplications200Response.md)

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

List high-demand periods

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
  # List high-demand periods
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
  # List high-demand periods
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


## list_meta_business_users

> <ListMetaBusinessUsers200Response> list_meta_business_users(account_id, business_id)

Business users

People and system users of a Meta business portfolio, with the business-scoped ids that `POST /v1/ads/accounts/users` and `POST /v1/ads/page-users` take. The connected Meta user must be an admin of the portfolio.

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
business_id = 'business_id_example' # String | Meta business portfolio id.

begin
  # Business users
  result = api_instance.list_meta_business_users(account_id, business_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->list_meta_business_users: #{e}"
end
```

#### Using the list_meta_business_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListMetaBusinessUsers200Response>, Integer, Hash)> list_meta_business_users_with_http_info(account_id, business_id)

```ruby
begin
  # Business users
  data, status_code, headers = api_instance.list_meta_business_users_with_http_info(account_id, business_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListMetaBusinessUsers200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->list_meta_business_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token. |  |
| **business_id** | **String** | Meta business portfolio id. |  |

### Return type

[**ListMetaBusinessUsers200Response**](ListMetaBusinessUsers200Response.md)

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


## list_page_users

> <ListPageUsers200Response> list_page_users(account_id, page_id, business_id)

Page users of a business

People of a business portfolio assigned to a Facebook Page the portfolio owns or was granted as a partner (`POST /v1/accounts/{accountId}/business-partners` on the owner side).

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
page_id = 'page_id_example' # String | Facebook Page id.
business_id = 'business_id_example' # String | Business portfolio whose people to list.

begin
  # Page users of a business
  result = api_instance.list_page_users(account_id, page_id, business_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->list_page_users: #{e}"
end
```

#### Using the list_page_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPageUsers200Response>, Integer, Hash)> list_page_users_with_http_info(account_id, page_id, business_id)

```ruby
begin
  # Page users of a business
  data, status_code, headers = api_instance.list_page_users_with_http_info(account_id, page_id, business_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPageUsers200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->list_page_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token. |  |
| **page_id** | **String** | Facebook Page id. |  |
| **business_id** | **String** | Business portfolio whose people to list. |  |

### Return type

[**ListPageUsers200Response**](ListPageUsers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tik_tok_ad_pixels

> <ListTikTokAdPixels200Response> list_tik_tok_ad_pixels(account_id, opts)

List TikTok ad pixels

Lists pixels and their supported optimization events for a connected TikTok Ads account. The advertiser defaults to the first advertiser on the connection. Reconnect if Pixel Management permission has not been granted.

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
account_id = 'account_id_example' # String | Zernio SocialAccount ID.
opts = {
  ad_account_id: 'ad_account_id_example', # String | Platform ad account ID (TikTok advertiser id, digits only). Defaults to the first advertiser on the connection.
  advertiser_id: 'advertiser_id_example', # String | Alias of adAccountId, kept for existing callers
  code: 'code_example' # String | Filter by a Pixel Code.
}

begin
  # List TikTok ad pixels
  result = api_instance.list_tik_tok_ad_pixels(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->list_tik_tok_ad_pixels: #{e}"
end
```

#### Using the list_tik_tok_ad_pixels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTikTokAdPixels200Response>, Integer, Hash)> list_tik_tok_ad_pixels_with_http_info(account_id, opts)

```ruby
begin
  # List TikTok ad pixels
  data, status_code, headers = api_instance.list_tik_tok_ad_pixels_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTikTokAdPixels200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->list_tik_tok_ad_pixels_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount ID. |  |
| **ad_account_id** | **String** | Platform ad account ID (TikTok advertiser id, digits only). Defaults to the first advertiser on the connection. | [optional] |
| **advertiser_id** | **String** | Alias of adAccountId, kept for existing callers | [optional] |
| **code** | **String** | Filter by a Pixel Code. | [optional] |

### Return type

[**ListTikTokAdPixels200Response**](ListTikTokAdPixels200Response.md)

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


## remove_account_callout

> <RemoveAccountCallout200Response> remove_account_callout(account_id, asset_id, opts)

Remove account callout

Removes the customer_asset attachment only. The underlying shared asset and its campaign or ad-group attachments remain. Fields go in the query string. A JSON body with the same fields is also accepted and, when sent, the query string is ignored.

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
account_id = 'account_id_example' # String | Zernio Google Ads connection id.
asset_id = 'asset_id_example' # String | Numeric Google Ads asset id.
opts = {
  ad_account_id: 'ad_account_id_example', # String | Platform ad account ID (Google customer ID, digits only). Required when the connection has multiple customers.
  customer_id: 'customer_id_example' # String | Alias of adAccountId, kept for existing callers
}

begin
  # Remove account callout
  result = api_instance.remove_account_callout(account_id, asset_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->remove_account_callout: #{e}"
end
```

#### Using the remove_account_callout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoveAccountCallout200Response>, Integer, Hash)> remove_account_callout_with_http_info(account_id, asset_id, opts)

```ruby
begin
  # Remove account callout
  data, status_code, headers = api_instance.remove_account_callout_with_http_info(account_id, asset_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoveAccountCallout200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->remove_account_callout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio Google Ads connection id. |  |
| **asset_id** | **String** | Numeric Google Ads asset id. |  |
| **ad_account_id** | **String** | Platform ad account ID (Google customer ID, digits only). Required when the connection has multiple customers. | [optional] |
| **customer_id** | **String** | Alias of adAccountId, kept for existing callers | [optional] |

### Return type

[**RemoveAccountCallout200Response**](RemoveAccountCallout200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_account_sitelink

> <RemoveAccountCallout200Response> remove_account_sitelink(account_id, asset_id, opts)

Remove account sitelink

Removes the customer_asset attachment only. The underlying shared asset and its campaign or ad-group attachments remain. Fields go in the query string. A JSON body with the same fields is also accepted and, when sent, the query string is ignored.

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
account_id = 'account_id_example' # String | Zernio Google Ads connection id.
asset_id = 'asset_id_example' # String | Numeric Google Ads asset id.
opts = {
  ad_account_id: 'ad_account_id_example', # String | Platform ad account ID (Google customer ID, digits only). Required when the connection has multiple customers.
  customer_id: 'customer_id_example' # String | Alias of adAccountId, kept for existing callers
}

begin
  # Remove account sitelink
  result = api_instance.remove_account_sitelink(account_id, asset_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->remove_account_sitelink: #{e}"
end
```

#### Using the remove_account_sitelink_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoveAccountCallout200Response>, Integer, Hash)> remove_account_sitelink_with_http_info(account_id, asset_id, opts)

```ruby
begin
  # Remove account sitelink
  data, status_code, headers = api_instance.remove_account_sitelink_with_http_info(account_id, asset_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoveAccountCallout200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->remove_account_sitelink_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio Google Ads connection id. |  |
| **asset_id** | **String** | Numeric Google Ads asset id. |  |
| **ad_account_id** | **String** | Platform ad account ID (Google customer ID, digits only). Required when the connection has multiple customers. | [optional] |
| **customer_id** | **String** | Alias of adAccountId, kept for existing callers | [optional] |

### Return type

[**RemoveAccountCallout200Response**](RemoveAccountCallout200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_account_structured_snippet

> <RemoveAccountCallout200Response> remove_account_structured_snippet(account_id, asset_id, opts)

Remove account snippet

Removes the customer_asset attachment only. The underlying shared asset and its campaign or ad-group attachments remain. Fields go in the query string. A JSON body with the same fields is also accepted and, when sent, the query string is ignored.

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
account_id = 'account_id_example' # String | Zernio Google Ads connection id.
asset_id = 'asset_id_example' # String | Numeric Google Ads asset id.
opts = {
  ad_account_id: 'ad_account_id_example', # String | Platform ad account ID (Google customer ID, digits only). Required when the connection has multiple customers.
  customer_id: 'customer_id_example' # String | Alias of adAccountId, kept for existing callers
}

begin
  # Remove account snippet
  result = api_instance.remove_account_structured_snippet(account_id, asset_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->remove_account_structured_snippet: #{e}"
end
```

#### Using the remove_account_structured_snippet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoveAccountCallout200Response>, Integer, Hash)> remove_account_structured_snippet_with_http_info(account_id, asset_id, opts)

```ruby
begin
  # Remove account snippet
  data, status_code, headers = api_instance.remove_account_structured_snippet_with_http_info(account_id, asset_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoveAccountCallout200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->remove_account_structured_snippet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio Google Ads connection id. |  |
| **asset_id** | **String** | Numeric Google Ads asset id. |  |
| **ad_account_id** | **String** | Platform ad account ID (Google customer ID, digits only). Required when the connection has multiple customers. | [optional] |
| **customer_id** | **String** | Alias of adAccountId, kept for existing callers | [optional] |

### Return type

[**RemoveAccountCallout200Response**](RemoveAccountCallout200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_ad_account_user

> <RemoveAdAccountUser200Response> remove_ad_account_user(account_id, ad_account_id, user_id)

Remove a user from an ad account

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
account_id = 'account_id_example' # String | Zernio SocialAccount id used to resolve the Meta token.
ad_account_id = 'ad_account_id_example' # String | Meta ad account id (act_<n>).
user_id = 'user_id_example' # String | Business-scoped user id.

begin
  # Remove a user from an ad account
  result = api_instance.remove_ad_account_user(account_id, ad_account_id, user_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->remove_ad_account_user: #{e}"
end
```

#### Using the remove_ad_account_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoveAdAccountUser200Response>, Integer, Hash)> remove_ad_account_user_with_http_info(account_id, ad_account_id, user_id)

```ruby
begin
  # Remove a user from an ad account
  data, status_code, headers = api_instance.remove_ad_account_user_with_http_info(account_id, ad_account_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoveAdAccountUser200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->remove_ad_account_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id used to resolve the Meta token. |  |
| **ad_account_id** | **String** | Meta ad account id (act_&lt;n&gt;). |  |
| **user_id** | **String** | Business-scoped user id. |  |

### Return type

[**RemoveAdAccountUser200Response**](RemoveAdAccountUser200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_ad_label

> <RemoveAdLabel200Response> remove_ad_label(label_id, account_id, opts)

Remove a Google Ads label

Removes the label. Google drops it from every campaign, ad group, ad and keyword it was attached to.

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
label_id = 'label_id_example' # String | Google label id
account_id = 'account_id_example' # String | Zernio SocialAccount id (Google Ads)
opts = {
  ad_account_id: 'ad_account_id_example', # String | Google customer id. Required when the connection has multiple customers.
  customer_id: 'customer_id_example' # String | Alias of adAccountId
}

begin
  # Remove a Google Ads label
  result = api_instance.remove_ad_label(label_id, account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->remove_ad_label: #{e}"
end
```

#### Using the remove_ad_label_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoveAdLabel200Response>, Integer, Hash)> remove_ad_label_with_http_info(label_id, account_id, opts)

```ruby
begin
  # Remove a Google Ads label
  data, status_code, headers = api_instance.remove_ad_label_with_http_info(label_id, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoveAdLabel200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->remove_ad_label_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label_id** | **String** | Google label id |  |
| **account_id** | **String** | Zernio SocialAccount id (Google Ads) |  |
| **ad_account_id** | **String** | Google customer id. Required when the connection has multiple customers. | [optional] |
| **customer_id** | **String** | Alias of adAccountId | [optional] |

### Return type

[**RemoveAdLabel200Response**](RemoveAdLabel200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_page_user

> <RemovePageUser200Response> remove_page_user(account_id, page_id, user_id)

Remove a user from a Page

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
account_id = 'account_id_example' # String | Zernio SocialAccount id used to resolve the Meta token.
page_id = 'page_id_example' # String | Facebook Page id.
user_id = 'user_id_example' # String | Business-scoped user id.

begin
  # Remove a user from a Page
  result = api_instance.remove_page_user(account_id, page_id, user_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->remove_page_user: #{e}"
end
```

#### Using the remove_page_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemovePageUser200Response>, Integer, Hash)> remove_page_user_with_http_info(account_id, page_id, user_id)

```ruby
begin
  # Remove a user from a Page
  data, status_code, headers = api_instance.remove_page_user_with_http_info(account_id, page_id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemovePageUser200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->remove_page_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id used to resolve the Meta token. |  |
| **page_id** | **String** | Facebook Page id. |  |
| **user_id** | **String** | Business-scoped user id. |  |

### Return type

[**RemovePageUser200Response**](RemovePageUser200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## replace_ad_negative_keyword_list_keywords

> <ReplaceAdNegativeKeywordListKeywords200Response> replace_ad_negative_keyword_list_keywords(list_id, replace_ad_negative_keyword_list_keywords_request)

Replace negative list keywords

Replaces the full desired keyword set. Existing keywords are diffed by normalized text and match type; creates and removals are applied atomically in one mutation. Unchanged criteria retain their ids. Send an empty keywords array to clear the list. Changes affect every campaign using this list. Each create or removal consumes one daily operation; the entire batch must fit the remaining quota.

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
list_id = 'list_id_example' # String | 
replace_ad_negative_keyword_list_keywords_request = Zernio::ReplaceAdNegativeKeywordListKeywordsRequest.new({account_id: 'account_id_example', keywords: [Zernio::KeywordEntryOneOf.new({text: 'text_example'})]}) # ReplaceAdNegativeKeywordListKeywordsRequest | 

begin
  # Replace negative list keywords
  result = api_instance.replace_ad_negative_keyword_list_keywords(list_id, replace_ad_negative_keyword_list_keywords_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->replace_ad_negative_keyword_list_keywords: #{e}"
end
```

#### Using the replace_ad_negative_keyword_list_keywords_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReplaceAdNegativeKeywordListKeywords200Response>, Integer, Hash)> replace_ad_negative_keyword_list_keywords_with_http_info(list_id, replace_ad_negative_keyword_list_keywords_request)

```ruby
begin
  # Replace negative list keywords
  data, status_code, headers = api_instance.replace_ad_negative_keyword_list_keywords_with_http_info(list_id, replace_ad_negative_keyword_list_keywords_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReplaceAdNegativeKeywordListKeywords200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->replace_ad_negative_keyword_list_keywords_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **String** |  |  |
| **replace_ad_negative_keyword_list_keywords_request** | [**ReplaceAdNegativeKeywordListKeywordsRequest**](ReplaceAdNegativeKeywordListKeywordsRequest.md) |  |  |

### Return type

[**ReplaceAdNegativeKeywordListKeywords200Response**](ReplaceAdNegativeKeywordListKeywords200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## reply_to_ad_comment

> <ReplyToAdComment200Response> reply_to_ad_comment(ad_id, comment_id, reply_to_ad_comment_request, opts)

Reply to an ad comment

Reply to a first-level TikTok ad comment. Requires a TT_USER or CUSTOMIZED_USER identity with comment-management permission. Replies to replies are rejected. The response commentId identifies the new reply. This operation is not idempotent; do not blindly retry an uncertain response.  Unknown identity and video item fields are resolved only when needed for this action, then persisted for reuse. Comment-specific fields take precedence. If TikTok no longer returns the ad needed to resolve identity, 404 ad_not_found directs you to check deletion or archival in TikTok Ads Manager. Listing can still succeed. Unsupported or unavailable identity returns 403 feature_not_available. Denied access to ad details returns 403 insufficient_permissions with reconnect guidance and the upstream platformError.  Requires Ads access. The ad is resolved within the caller's accessible profiles. Before moderation, Zernio verifies that the comment belongs to this ad using TikTok's ad-group comment listing. The default search window is the last 30 days. Use since/until for older comments, with at most 30 days between the dates. Lookups scan at most 2,000 ad-group comments; narrow the date window if exceeded. Meta returns 501 feature_not_available with guidance to use the existing inbox comment endpoints and the account/post IDs from GET /v1/ads/{adId}/comments. 

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
ad_id = 'ad_id_example' # String | Internal Zernio ad ID or indexed platform ad ID.
comment_id = 'comment_id_example' # String | TikTok comment ID from the ad comment listing.
reply_to_ad_comment_request = Zernio::ReplyToAdCommentRequest.new({text: 'text_example'}) # ReplyToAdCommentRequest | 
opts = {
  since: Date.parse('2013-10-20'), # Date | Start date of the comment lookup window. Defaults to 30 days before until.
  _until: Date.parse('2013-10-20') # Date | End date of the comment lookup window. Defaults to today in UTC.
}

begin
  # Reply to an ad comment
  result = api_instance.reply_to_ad_comment(ad_id, comment_id, reply_to_ad_comment_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->reply_to_ad_comment: #{e}"
end
```

#### Using the reply_to_ad_comment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReplyToAdComment200Response>, Integer, Hash)> reply_to_ad_comment_with_http_info(ad_id, comment_id, reply_to_ad_comment_request, opts)

```ruby
begin
  # Reply to an ad comment
  data, status_code, headers = api_instance.reply_to_ad_comment_with_http_info(ad_id, comment_id, reply_to_ad_comment_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReplyToAdComment200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->reply_to_ad_comment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_id** | **String** | Internal Zernio ad ID or indexed platform ad ID. |  |
| **comment_id** | **String** | TikTok comment ID from the ad comment listing. |  |
| **reply_to_ad_comment_request** | [**ReplyToAdCommentRequest**](ReplyToAdCommentRequest.md) |  |  |
| **since** | **Date** | Start date of the comment lookup window. Defaults to 30 days before until. | [optional] |
| **_until** | **Date** | End date of the comment lookup window. Defaults to today in UTC. | [optional] |

### Return type

[**ReplyToAdComment200Response**](ReplyToAdComment200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_account_callouts

> <UpdateAccountCallouts200Response> update_account_callouts(update_account_callouts_request)

Update account callouts

Edits existing Google assets in place. Send updates with assetResourceName and the fields to change. An asset is shared: changes affect every attachment using it. Omitted fields stay unchanged. The operation consumes the Google operations budget and invalidates affected cached lists.

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
update_account_callouts_request = Zernio::UpdateAccountCalloutsRequest.new({account_id: 'account_id_example', updates: [Zernio::UpdateAccountCalloutsRequestUpdatesInner.new({asset_resource_name: 'asset_resource_name_example'})]}) # UpdateAccountCalloutsRequest | 

begin
  # Update account callouts
  result = api_instance.update_account_callouts(update_account_callouts_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->update_account_callouts: #{e}"
end
```

#### Using the update_account_callouts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateAccountCallouts200Response>, Integer, Hash)> update_account_callouts_with_http_info(update_account_callouts_request)

```ruby
begin
  # Update account callouts
  data, status_code, headers = api_instance.update_account_callouts_with_http_info(update_account_callouts_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateAccountCallouts200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->update_account_callouts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_account_callouts_request** | [**UpdateAccountCalloutsRequest**](UpdateAccountCalloutsRequest.md) |  |  |

### Return type

[**UpdateAccountCallouts200Response**](UpdateAccountCallouts200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_account_sitelinks

> <UpdateAccountCallouts200Response> update_account_sitelinks(update_account_sitelinks_request)

Update account sitelinks

Edits existing Google assets in place. Send updates with assetResourceName and the fields to change. An asset is shared: changes affect every attachment using it. Omitted fields stay unchanged. The operation consumes the Google operations budget and invalidates affected cached lists.

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
update_account_sitelinks_request = Zernio::UpdateAccountSitelinksRequest.new({account_id: 'account_id_example', updates: [Zernio::UpdateAccountSitelinksRequestUpdatesInner.new({asset_resource_name: 'asset_resource_name_example'})]}) # UpdateAccountSitelinksRequest | 

begin
  # Update account sitelinks
  result = api_instance.update_account_sitelinks(update_account_sitelinks_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->update_account_sitelinks: #{e}"
end
```

#### Using the update_account_sitelinks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateAccountCallouts200Response>, Integer, Hash)> update_account_sitelinks_with_http_info(update_account_sitelinks_request)

```ruby
begin
  # Update account sitelinks
  data, status_code, headers = api_instance.update_account_sitelinks_with_http_info(update_account_sitelinks_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateAccountCallouts200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->update_account_sitelinks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_account_sitelinks_request** | [**UpdateAccountSitelinksRequest**](UpdateAccountSitelinksRequest.md) |  |  |

### Return type

[**UpdateAccountCallouts200Response**](UpdateAccountCallouts200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_account_structured_snippets

> <UpdateAccountCallouts200Response> update_account_structured_snippets(update_account_structured_snippets_request)

Update account snippets

Edits existing Google assets in place. Send updates with assetResourceName and the fields to change. An asset is shared: changes affect every attachment using it. Omitted fields stay unchanged. The operation consumes the Google operations budget and invalidates affected cached lists.

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
update_account_structured_snippets_request = Zernio::UpdateAccountStructuredSnippetsRequest.new({account_id: 'account_id_example', updates: [Zernio::UpdateAccountStructuredSnippetsRequestUpdatesInner.new({asset_resource_name: 'asset_resource_name_example'})]}) # UpdateAccountStructuredSnippetsRequest | 

begin
  # Update account snippets
  result = api_instance.update_account_structured_snippets(update_account_structured_snippets_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->update_account_structured_snippets: #{e}"
end
```

#### Using the update_account_structured_snippets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateAccountCallouts200Response>, Integer, Hash)> update_account_structured_snippets_with_http_info(update_account_structured_snippets_request)

```ruby
begin
  # Update account snippets
  data, status_code, headers = api_instance.update_account_structured_snippets_with_http_info(update_account_structured_snippets_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateAccountCallouts200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->update_account_structured_snippets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_account_structured_snippets_request** | [**UpdateAccountStructuredSnippetsRequest**](UpdateAccountStructuredSnippetsRequest.md) |  |  |

### Return type

[**UpdateAccountCallouts200Response**](UpdateAccountCallouts200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_ad_account

> <UpdateAdAccount200Response> update_ad_account(update_ad_account_request)

Update ad account settings

Updates a Meta ad account in place: its name, its account-level spend cap, and its default DSA beneficiary and payor. Pass any combination of fields.  **Spend cap.** `spendCap` is the total the account may spend before Meta pauses every campaign in it, in whole units of the account currency. `spendCap: null` removes the cap and `resetAmountSpent: true` restarts the amount counted against it from zero. When `name`, `spendCap` or `resetAmountSpent` is passed, the response carries `settings`, the account's finances re-read after the write (same shape as `GET /v1/ads/accounts/finance`), so the effective cap can be confirmed in one call.  **DSA defaults.** Sets the default DSA beneficiary and payor on the ad account (EU DSA, Article 26). Set them once and every EU-targeted call to `/v1/ads/create`, `/v1/ads/boost` and `/v1/ads/ctwa` on that ad account can omit `dsaBeneficiary`/`dsaPayor`: Meta applies the defaults automatically.  The values are written to the ad account on Meta, the same setting Ads Manager edits. Nothing is stored in Zernio, and defaults already set in Ads Manager work identically. Zernio never guesses these values for you. Beneficiary and payor are legal disclosures shown to EU users, so you must provide the entity names explicitly. Use `GET /v1/ads/dsa-recommendations` to offer suggestions in your UI.  If `defaultDsaPayor` is omitted, the beneficiary is also set as the payor, which covers the common case where the same entity benefits from and pays for the ads. Read the current values back with `GET /v1/ads/dsa-defaults`.  **Google: account-level URL tracking.** On a Google Ads connection, `adAccountId` is the customer id and only `trackingUrlTemplate` / `finalUrlSuffix` are accepted (the Meta fields return 400). They write `customer.tracking_url_template` and `customer.final_url_suffix`, one update mask leaf per field sent; an empty string clears the field. The response carries `urlTracking` with the values written. For one campaign, send the same fields to PUT /v1/ads/campaigns/{campaignId}.  Other platforms return 400. 

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
update_ad_account_request = Zernio::UpdateAdAccountRequest.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example'}) # UpdateAdAccountRequest | 

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


## update_ad_account_manager_link

> <GoogleAdsManagerLink> update_ad_account_manager_link(update_ad_account_manager_link_request)

Accept, decline, cancel or end a manager link

Changes one manager-client link, identified by `managerCustomerId`, `clientCustomerId` and `managerLinkId` (all from GET /v1/ads/accounts/hierarchy). `accept` and `decline` answer a pending invitation as the client (CustomerManagerLinkService), so the connection's Google user needs direct access to the client account; access through a manager is not enough, because the link does not exist yet. `cancel` withdraws a pending invitation and `unlink` ends an active link, both as the manager (CustomerClientLinkService). Send `validateOnly: true` to have Google check the change without applying it.

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
update_ad_account_manager_link_request = Zernio::UpdateAdAccountManagerLinkRequest.new({account_id: 'account_id_example', manager_customer_id: 'manager_customer_id_example', client_customer_id: 'client_customer_id_example', manager_link_id: 'manager_link_id_example', action: 'accept'}) # UpdateAdAccountManagerLinkRequest | 

begin
  # Accept, decline, cancel or end a manager link
  result = api_instance.update_ad_account_manager_link(update_ad_account_manager_link_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->update_ad_account_manager_link: #{e}"
end
```

#### Using the update_ad_account_manager_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GoogleAdsManagerLink>, Integer, Hash)> update_ad_account_manager_link_with_http_info(update_ad_account_manager_link_request)

```ruby
begin
  # Accept, decline, cancel or end a manager link
  data, status_code, headers = api_instance.update_ad_account_manager_link_with_http_info(update_ad_account_manager_link_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GoogleAdsManagerLink>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->update_ad_account_manager_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_ad_account_manager_link_request** | [**UpdateAdAccountManagerLinkRequest**](UpdateAdAccountManagerLinkRequest.md) |  |  |

### Return type

[**GoogleAdsManagerLink**](GoogleAdsManagerLink.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_ad_label

> <UpdateAdLabel200Response> update_ad_label(label_id, update_ad_label_request)

Update a Google Ads label

Changes the name, color or description of a label. Only the fields sent are written.

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
label_id = 'label_id_example' # String | Google label id
update_ad_label_request = Zernio::UpdateAdLabelRequest.new({account_id: 'account_id_example'}) # UpdateAdLabelRequest | 

begin
  # Update a Google Ads label
  result = api_instance.update_ad_label(label_id, update_ad_label_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->update_ad_label: #{e}"
end
```

#### Using the update_ad_label_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateAdLabel200Response>, Integer, Hash)> update_ad_label_with_http_info(label_id, update_ad_label_request)

```ruby
begin
  # Update a Google Ads label
  data, status_code, headers = api_instance.update_ad_label_with_http_info(label_id, update_ad_label_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateAdLabel200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->update_ad_label_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label_id** | **String** | Google label id |  |
| **update_ad_label_request** | [**UpdateAdLabelRequest**](UpdateAdLabelRequest.md) |  |  |

### Return type

[**UpdateAdLabel200Response**](UpdateAdLabel200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_ad_negative_keyword_list

> <UpdateAdNegativeKeywordList200Response> update_ad_negative_keyword_list(list_id, update_ad_negative_keyword_list_request)

Rename a negative keyword list

Renames a shared negative keyword list. Keywords and campaign associations are unchanged. Use the keywords endpoint to edit the desired keyword set.

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
list_id = 'list_id_example' # String | 
update_ad_negative_keyword_list_request = Zernio::UpdateAdNegativeKeywordListRequest.new({account_id: 'account_id_example', name: 'name_example'}) # UpdateAdNegativeKeywordListRequest | 

begin
  # Rename a negative keyword list
  result = api_instance.update_ad_negative_keyword_list(list_id, update_ad_negative_keyword_list_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->update_ad_negative_keyword_list: #{e}"
end
```

#### Using the update_ad_negative_keyword_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateAdNegativeKeywordList200Response>, Integer, Hash)> update_ad_negative_keyword_list_with_http_info(list_id, update_ad_negative_keyword_list_request)

```ruby
begin
  # Rename a negative keyword list
  data, status_code, headers = api_instance.update_ad_negative_keyword_list_with_http_info(list_id, update_ad_negative_keyword_list_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateAdNegativeKeywordList200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdAccountsApi->update_ad_negative_keyword_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **String** |  |  |
| **update_ad_negative_keyword_list_request** | [**UpdateAdNegativeKeywordListRequest**](UpdateAdNegativeKeywordListRequest.md) |  |  |

### Return type

[**UpdateAdNegativeKeywordList200Response**](UpdateAdNegativeKeywordList200Response.md)

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

