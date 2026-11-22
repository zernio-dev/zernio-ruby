# Zernio::AdRulesApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_ad_rule**](AdRulesApi.md#create_ad_rule) | **POST** /v1/ads/rules | Create an ad rule |
| [**delete_ad_rule**](AdRulesApi.md#delete_ad_rule) | **DELETE** /v1/ads/rules/{ruleId} | Delete an ad rule |
| [**get_ad_rule**](AdRulesApi.md#get_ad_rule) | **GET** /v1/ads/rules/{ruleId} | Get an ad rule |
| [**get_ad_rule_hourly_windows**](AdRulesApi.md#get_ad_rule_hourly_windows) | **GET** /v1/ads/rules/hourly-windows | Check whether an ad account has hourly windows |
| [**list_ad_account_rule_alerts**](AdRulesApi.md#list_ad_account_rule_alerts) | **GET** /v1/ads/rules/alerts | List an ad account&#39;s open alerts |
| [**list_ad_rule_activity**](AdRulesApi.md#list_ad_rule_activity) | **GET** /v1/ads/rules/activity | List every change ad rules made |
| [**list_ad_rule_alerts**](AdRulesApi.md#list_ad_rule_alerts) | **GET** /v1/ads/rules/{ruleId}/alerts | List a rule&#39;s alerts |
| [**list_ad_rule_runs**](AdRulesApi.md#list_ad_rule_runs) | **GET** /v1/ads/rules/{ruleId}/runs | List an ad rule&#39;s runs |
| [**list_ad_rule_templates**](AdRulesApi.md#list_ad_rule_templates) | **GET** /v1/ads/rules/templates | List ready-made ad rules |
| [**list_ad_rules**](AdRulesApi.md#list_ad_rules) | **GET** /v1/ads/rules | List ad rules |
| [**preview_ad_rule**](AdRulesApi.md#preview_ad_rule) | **POST** /v1/ads/rules/{ruleId}/preview | Preview an ad rule |
| [**undo_ad_rule_activity**](AdRulesApi.md#undo_ad_rule_activity) | **POST** /v1/ads/rules/activity/{activityId}/undo | Undo a change an ad rule made |
| [**update_ad_rule**](AdRulesApi.md#update_ad_rule) | **PATCH** /v1/ads/rules/{ruleId} | Update an ad rule |


## create_ad_rule

> <CreateAdRule201Response> create_ad_rule(create_ad_rule_request)

Create an ad rule

Creates a rule that checks the campaigns, ad sets, ads, keywords or search terms of one ad account on a schedule and acts on each one that meets every condition.  Rules support Meta, Google, TikTok, LinkedIn, Pinterest, X and Reddit ads connections. Keyword and search term rules are Google only. Use `POST /v1/ads/rules/{ruleId}/preview` to see what a rule would match before enabling it.  ### Evaluation  Each object is evaluated on its own, over the ad account's calendar days. Campaigns, ad sets and ads read the metrics Zernio syncs; keywords and search terms are summed from the daily history Zernio keeps of them.  ### Actions  A rule can notify (the `ad_rule.triggered` webhook), and take at most one of:  - `pause` - `activate` - `adjust_budget` - `adjust_bid` - `adjust_target` - `reallocate_budget` - `duplicate` - `edit_name`  A keyword rule can notify and pause; a search term rule only notifies.  ### Cooldown  After acting on an object, the rule leaves that object alone for `cooldownMinutes`. A rule that changes ads (any action but `notify`) needs a cooldown at least as long as its schedule.  ### How `activate` works  `activate` only reactivates objects a rule paused, never ones you paused yourself (unless `includeManuallyPaused` is true), and only once the cooldown has passed since that pause.  A rule on set times (`schedule.times`) does not wait for the cooldown: it restarts only what a rule on set times paused, such as a morning restart after a night pause.  If you reactivate and pause such an object yourself between two runs of a rule, Zernio cannot tell your pause from the rule's, and an `activate` rule may reactivate it. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdRulesApi.new
create_ad_rule_request = Zernio::CreateAdRuleRequest.new({name: 'name_example', account_id: 'account_id_example', ad_account_id: 'ad_account_id_example', level: Zernio::AdRuleLevel::CAMPAIGN, conditions: Zernio::AdRuleConditionsOneOf.new({all: [Zernio::AdRuleCondition.new({metric: 'spend', window: 'today', op: '>', value: 3.56})]}), actions: [Zernio::AdRuleActionOneOf.new({type: 'notify'})]}) # CreateAdRuleRequest | 

begin
  # Create an ad rule
  result = api_instance.create_ad_rule(create_ad_rule_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdRulesApi->create_ad_rule: #{e}"
end
```

#### Using the create_ad_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAdRule201Response>, Integer, Hash)> create_ad_rule_with_http_info(create_ad_rule_request)

```ruby
begin
  # Create an ad rule
  data, status_code, headers = api_instance.create_ad_rule_with_http_info(create_ad_rule_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAdRule201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdRulesApi->create_ad_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_ad_rule_request** | [**CreateAdRuleRequest**](CreateAdRuleRequest.md) |  |  |

### Return type

[**CreateAdRule201Response**](CreateAdRule201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_ad_rule

> <UpdateYoutubeDefaultPlaylist200Response> delete_ad_rule(rule_id)

Delete an ad rule

Deletes a rule and its run history. Changes the rule already made on the platform stay. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdRulesApi.new
rule_id = 'rule_id_example' # String | 

begin
  # Delete an ad rule
  result = api_instance.delete_ad_rule(rule_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdRulesApi->delete_ad_rule: #{e}"
end
```

#### Using the delete_ad_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateYoutubeDefaultPlaylist200Response>, Integer, Hash)> delete_ad_rule_with_http_info(rule_id)

```ruby
begin
  # Delete an ad rule
  data, status_code, headers = api_instance.delete_ad_rule_with_http_info(rule_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateYoutubeDefaultPlaylist200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdRulesApi->delete_ad_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_id** | **String** |  |  |

### Return type

[**UpdateYoutubeDefaultPlaylist200Response**](UpdateYoutubeDefaultPlaylist200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ad_rule

> <CreateAdRule201Response> get_ad_rule(rule_id)

Get an ad rule

Returns one ad rule. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdRulesApi.new
rule_id = 'rule_id_example' # String | 

begin
  # Get an ad rule
  result = api_instance.get_ad_rule(rule_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdRulesApi->get_ad_rule: #{e}"
end
```

#### Using the get_ad_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAdRule201Response>, Integer, Hash)> get_ad_rule_with_http_info(rule_id)

```ruby
begin
  # Get an ad rule
  data, status_code, headers = api_instance.get_ad_rule_with_http_info(rule_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAdRule201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdRulesApi->get_ad_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_id** | **String** |  |  |

### Return type

[**CreateAdRule201Response**](CreateAdRule201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ad_rule_hourly_windows

> <GetAdRuleHourlyWindows200Response> get_ad_rule_hourly_windows(account_id, ad_account_id)

Check whether an ad account has hourly windows

Hourly windows (`last_complete_hour`, `last_3h`, `today_so_far`) read campaign totals hour by hour, which Zernio syncs only for some Meta and Google ad accounts.  A rule with an hourly condition is saved only on an ad account that has them: on any other, creating or editing it returns 400. `hourlyWindows` says which case applies. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdRulesApi.new
account_id = 'account_id_example' # String | The ads connection.
ad_account_id = 'ad_account_id_example' # String | The ad account on that connection.

begin
  # Check whether an ad account has hourly windows
  result = api_instance.get_ad_rule_hourly_windows(account_id, ad_account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdRulesApi->get_ad_rule_hourly_windows: #{e}"
end
```

#### Using the get_ad_rule_hourly_windows_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAdRuleHourlyWindows200Response>, Integer, Hash)> get_ad_rule_hourly_windows_with_http_info(account_id, ad_account_id)

```ruby
begin
  # Check whether an ad account has hourly windows
  data, status_code, headers = api_instance.get_ad_rule_hourly_windows_with_http_info(account_id, ad_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAdRuleHourlyWindows200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdRulesApi->get_ad_rule_hourly_windows_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The ads connection. |  |
| **ad_account_id** | **String** | The ad account on that connection. |  |

### Return type

[**GetAdRuleHourlyWindows200Response**](GetAdRuleHourlyWindows200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ad_account_rule_alerts

> <ListAdAccountRuleAlerts200Response> list_ad_account_rule_alerts(account_id, ad_account_id, opts)

List an ad account's open alerts

The open alerts of every rule of one ad account, newest first, in one call: each alert names its rule in `ruleId`. Only `open` alerts are listed. For one rule's pending and resolved alerts, use `GET /v1/ads/rules/{ruleId}/alerts`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdRulesApi.new
account_id = 'account_id_example' # String | The connected ads account the rules run on.
ad_account_id = 'ad_account_id_example' # String | The platform ad account ID.
opts = {
  limit: 56, # Integer | 
  cursor: 'cursor_example' # String | `nextCursor` from the previous page.
}

begin
  # List an ad account's open alerts
  result = api_instance.list_ad_account_rule_alerts(account_id, ad_account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdRulesApi->list_ad_account_rule_alerts: #{e}"
end
```

#### Using the list_ad_account_rule_alerts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAdAccountRuleAlerts200Response>, Integer, Hash)> list_ad_account_rule_alerts_with_http_info(account_id, ad_account_id, opts)

```ruby
begin
  # List an ad account's open alerts
  data, status_code, headers = api_instance.list_ad_account_rule_alerts_with_http_info(account_id, ad_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAdAccountRuleAlerts200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdRulesApi->list_ad_account_rule_alerts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The connected ads account the rules run on. |  |
| **ad_account_id** | **String** | The platform ad account ID. |  |
| **limit** | **Integer** |  | [optional][default to 50] |
| **cursor** | **String** | &#x60;nextCursor&#x60; from the previous page. | [optional] |

### Return type

[**ListAdAccountRuleAlerts200Response**](ListAdAccountRuleAlerts200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ad_rule_activity

> <ListAdRuleActivity200Response> list_ad_rule_activity(opts)

List every change ad rules made

What your rules did over the last 31 days, newest first, across all rules of the profiles the key can reach.  There is one entry per change a rule made or tried: pause, reactivation, budget, bid or target change, copy or name tag. Skipped and failed attempts are included.  Entries stay for those 31 days after a rule is renamed or deleted; `ruleName` is the rule's name when it acted. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdRulesApi.new
opts = {
  rule_id: 'rule_id_example', # String | 
  account_id: 'account_id_example', # String | Only changes of rules on this ads connection.
  type: 'pause', # String | 
  from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | ISO 8601 date-time, inclusive.
  to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | ISO 8601 date-time, inclusive.
  limit: 56, # Integer | 
  cursor: 'cursor_example' # String | `nextCursor` from the previous page.
}

begin
  # List every change ad rules made
  result = api_instance.list_ad_rule_activity(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdRulesApi->list_ad_rule_activity: #{e}"
end
```

#### Using the list_ad_rule_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAdRuleActivity200Response>, Integer, Hash)> list_ad_rule_activity_with_http_info(opts)

```ruby
begin
  # List every change ad rules made
  data, status_code, headers = api_instance.list_ad_rule_activity_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAdRuleActivity200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdRulesApi->list_ad_rule_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_id** | **String** |  | [optional] |
| **account_id** | **String** | Only changes of rules on this ads connection. | [optional] |
| **type** | **String** |  | [optional] |
| **from** | **Time** | ISO 8601 date-time, inclusive. | [optional] |
| **to** | **Time** | ISO 8601 date-time, inclusive. | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |
| **cursor** | **String** | &#x60;nextCursor&#x60; from the previous page. | [optional] |

### Return type

[**ListAdRuleActivity200Response**](ListAdRuleActivity200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ad_rule_alerts

> <ListAdRuleAlerts200Response> list_ad_rule_alerts(rule_id, opts)

List a rule's alerts

The alert episodes of a rule with a `lifecycle`, newest first. `pending` alerts are confirming, `open` ones were acted on, `resolved` ones ended, with `resolvedReason` saying why. Resolved alerts are kept 90 days. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdRulesApi.new
rule_id = 'rule_id_example' # String | 
opts = {
  state: 'pending', # String | 
  limit: 56, # Integer | 
  cursor: 'cursor_example' # String | `nextCursor` from the previous page.
}

begin
  # List a rule's alerts
  result = api_instance.list_ad_rule_alerts(rule_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdRulesApi->list_ad_rule_alerts: #{e}"
end
```

#### Using the list_ad_rule_alerts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAdRuleAlerts200Response>, Integer, Hash)> list_ad_rule_alerts_with_http_info(rule_id, opts)

```ruby
begin
  # List a rule's alerts
  data, status_code, headers = api_instance.list_ad_rule_alerts_with_http_info(rule_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAdRuleAlerts200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdRulesApi->list_ad_rule_alerts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_id** | **String** |  |  |
| **state** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |
| **cursor** | **String** | &#x60;nextCursor&#x60; from the previous page. | [optional] |

### Return type

[**ListAdRuleAlerts200Response**](ListAdRuleAlerts200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ad_rule_runs

> <ListAdRuleRuns200Response> list_ad_rule_runs(rule_id, opts)

List an ad rule's runs

Lists a rule's scheduled runs, newest first: what each run evaluated, matched and did. A run that matched nothing or did not happen (`no_match`, `paused`) is kept 7 days, any other run 31 days. For every change across all rules, use `GET /v1/ads/rules/activity`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdRulesApi.new
rule_id = 'rule_id_example' # String | 
opts = {
  limit: 56, # Integer | 
  skip: 56 # Integer | 
}

begin
  # List an ad rule's runs
  result = api_instance.list_ad_rule_runs(rule_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdRulesApi->list_ad_rule_runs: #{e}"
end
```

#### Using the list_ad_rule_runs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAdRuleRuns200Response>, Integer, Hash)> list_ad_rule_runs_with_http_info(rule_id, opts)

```ruby
begin
  # List an ad rule's runs
  data, status_code, headers = api_instance.list_ad_rule_runs_with_http_info(rule_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAdRuleRuns200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdRulesApi->list_ad_rule_runs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_id** | **String** |  |  |
| **limit** | **Integer** |  | [optional][default to 20] |
| **skip** | **Integer** |  | [optional][default to 0] |

### Return type

[**ListAdRuleRuns200Response**](ListAdRuleRuns200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ad_rule_templates

> <ListAdRuleTemplates200Response> list_ad_rule_templates

List ready-made ad rules

Common rules to start from: stop losers, scale winners, pause ads with no conversions, creative fatigue and spend spike alerts.  Each template is a complete rule body. Add `name`, `accountId` and `adAccountId`, adjust the thresholds to the ad account, and send it to `POST /v1/ads/rules`. Amounts are in the ad account currency. `platforms` lists the networks a template works on, or is null for all of them. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdRulesApi.new

begin
  # List ready-made ad rules
  result = api_instance.list_ad_rule_templates
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdRulesApi->list_ad_rule_templates: #{e}"
end
```

#### Using the list_ad_rule_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAdRuleTemplates200Response>, Integer, Hash)> list_ad_rule_templates_with_http_info

```ruby
begin
  # List ready-made ad rules
  data, status_code, headers = api_instance.list_ad_rule_templates_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAdRuleTemplates200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdRulesApi->list_ad_rule_templates_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListAdRuleTemplates200Response**](ListAdRuleTemplates200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ad_rules

> <ListAdRules200Response> list_ad_rules(opts)

List ad rules

Lists the ad rules on the profiles your key can reach, newest first. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdRulesApi.new
opts = {
  account_id: 'account_id_example', # String | Only rules on this ads connection.
  ad_account_id: 'ad_account_id_example', # String | Only rules watching this platform ad account.
  limit: 56, # Integer | 
  skip: 56 # Integer | 
}

begin
  # List ad rules
  result = api_instance.list_ad_rules(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdRulesApi->list_ad_rules: #{e}"
end
```

#### Using the list_ad_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAdRules200Response>, Integer, Hash)> list_ad_rules_with_http_info(opts)

```ruby
begin
  # List ad rules
  data, status_code, headers = api_instance.list_ad_rules_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAdRules200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdRulesApi->list_ad_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Only rules on this ads connection. | [optional] |
| **ad_account_id** | **String** | Only rules watching this platform ad account. | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |
| **skip** | **Integer** |  | [optional][default to 0] |

### Return type

[**ListAdRules200Response**](ListAdRules200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## preview_ad_rule

> <AdRuleEvaluation> preview_ad_rule(rule_id)

Preview an ad rule

Evaluates a rule against current metrics and returns what it would match right now, without acting on anything, sending a webhook or starting a cooldown. Works on disabled rules. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdRulesApi.new
rule_id = 'rule_id_example' # String | 

begin
  # Preview an ad rule
  result = api_instance.preview_ad_rule(rule_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdRulesApi->preview_ad_rule: #{e}"
end
```

#### Using the preview_ad_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdRuleEvaluation>, Integer, Hash)> preview_ad_rule_with_http_info(rule_id)

```ruby
begin
  # Preview an ad rule
  data, status_code, headers = api_instance.preview_ad_rule_with_http_info(rule_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdRuleEvaluation>
rescue Zernio::ApiError => e
  puts "Error when calling AdRulesApi->preview_ad_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_id** | **String** |  |  |

### Return type

[**AdRuleEvaluation**](AdRuleEvaluation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## undo_ad_rule_activity

> <UndoAdRuleActivity200Response> undo_ad_rule_activity(activity_id)

Undo a change an ad rule made

Puts back a pause, reactivation, budget or bid change, or name tag a rule applied, as a new change recorded in the activity feed. The rule's cooldown then covers the object.  It is refused (409 `invalid_resource_state`) when the change was not applied, was already undone, is a copy, or when the object changed since: delivering again after a pause, paused again after a reactivation, or on another budget, bid or name. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdRulesApi.new
activity_id = 'activity_id_example' # String | The `id` of an entry from `GET /v1/ads/rules/activity`.

begin
  # Undo a change an ad rule made
  result = api_instance.undo_ad_rule_activity(activity_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdRulesApi->undo_ad_rule_activity: #{e}"
end
```

#### Using the undo_ad_rule_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UndoAdRuleActivity200Response>, Integer, Hash)> undo_ad_rule_activity_with_http_info(activity_id)

```ruby
begin
  # Undo a change an ad rule made
  data, status_code, headers = api_instance.undo_ad_rule_activity_with_http_info(activity_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UndoAdRuleActivity200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdRulesApi->undo_ad_rule_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **activity_id** | **String** | The &#x60;id&#x60; of an entry from &#x60;GET /v1/ads/rules/activity&#x60;. |  |

### Return type

[**UndoAdRuleActivity200Response**](UndoAdRuleActivity200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_ad_rule

> <CreateAdRule201Response> update_ad_rule(rule_id, update_ad_rule_request)

Update an ad rule

Changes any field of a rule except its connection and ad account. Send `campaignIds: null` to check the whole ad account again. Changing the schedule, or enabling a disabled rule, moves the next run; re-sending `enabled: true` on an enabled rule does not. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdRulesApi.new
rule_id = 'rule_id_example' # String | 
update_ad_rule_request = Zernio::UpdateAdRuleRequest.new # UpdateAdRuleRequest | 

begin
  # Update an ad rule
  result = api_instance.update_ad_rule(rule_id, update_ad_rule_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdRulesApi->update_ad_rule: #{e}"
end
```

#### Using the update_ad_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAdRule201Response>, Integer, Hash)> update_ad_rule_with_http_info(rule_id, update_ad_rule_request)

```ruby
begin
  # Update an ad rule
  data, status_code, headers = api_instance.update_ad_rule_with_http_info(rule_id, update_ad_rule_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAdRule201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdRulesApi->update_ad_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_id** | **String** |  |  |
| **update_ad_rule_request** | [**UpdateAdRuleRequest**](UpdateAdRuleRequest.md) |  |  |

### Return type

[**CreateAdRule201Response**](CreateAdRule201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

