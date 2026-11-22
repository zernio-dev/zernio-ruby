# Zernio::AutomationsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**activate_automation**](AutomationsApi.md#activate_automation) | **POST** /v1/automations/{automationId}/activate | Turn an automation on |
| [**approve_automation_approval**](AutomationsApi.md#approve_automation_approval) | **POST** /v1/automations/{automationId}/approvals/{approvalId}/approve | Approve an approval request |
| [**backtest_automation**](AutomationsApi.md#backtest_automation) | **POST** /v1/automations/{automationId}/backtest | Backtest a saved automation |
| [**backtest_automation_draft**](AutomationsApi.md#backtest_automation_draft) | **POST** /v1/automations/backtest | Backtest an unsaved automation |
| [**create_automation**](AutomationsApi.md#create_automation) | **POST** /v1/automations | Create an automation |
| [**create_automation_template**](AutomationsApi.md#create_automation_template) | **POST** /v1/automations/templates | Create an automation template |
| [**delete_automation**](AutomationsApi.md#delete_automation) | **DELETE** /v1/automations/{automationId} | Delete an automation |
| [**delete_automation_template**](AutomationsApi.md#delete_automation_template) | **DELETE** /v1/automations/templates/{templateId} | Delete an automation template |
| [**get_automation**](AutomationsApi.md#get_automation) | **GET** /v1/automations/{automationId} | Get an automation |
| [**get_automation_approval**](AutomationsApi.md#get_automation_approval) | **GET** /v1/automations/{automationId}/approvals/{approvalId} | Get an approval request |
| [**get_automation_catalog**](AutomationsApi.md#get_automation_catalog) | **GET** /v1/automations/catalog | Get the automations catalog |
| [**get_automation_controls**](AutomationsApi.md#get_automation_controls) | **GET** /v1/automations/controls | Get automation controls |
| [**get_automation_template**](AutomationsApi.md#get_automation_template) | **GET** /v1/automations/templates/{templateId} | Get an automation template |
| [**get_shared_automation_template**](AutomationsApi.md#get_shared_automation_template) | **GET** /v1/automations/templates/shared/{shareToken} | Get a shared automation template |
| [**get_zernio_automation_template**](AutomationsApi.md#get_zernio_automation_template) | **GET** /v1/automations/templates/zernio/{templateId} | Get a Zernio automation template |
| [**install_automation_template**](AutomationsApi.md#install_automation_template) | **POST** /v1/automations/templates/{templateId}/install | Install an automation template |
| [**install_shared_automation_template**](AutomationsApi.md#install_shared_automation_template) | **POST** /v1/automations/templates/shared/{shareToken}/install | Install a shared automation template |
| [**install_zernio_automation_template**](AutomationsApi.md#install_zernio_automation_template) | **POST** /v1/automations/templates/zernio/{templateId}/install | Install a Zernio automation template |
| [**list_automation_actions**](AutomationsApi.md#list_automation_actions) | **GET** /v1/automations/actions | List automation actions |
| [**list_automation_approvals**](AutomationsApi.md#list_automation_approvals) | **GET** /v1/automations/{automationId}/approvals | List an automation&#39;s approval requests |
| [**list_automation_checks**](AutomationsApi.md#list_automation_checks) | **GET** /v1/automations/{automationId}/checks | List an automation&#39;s checks |
| [**list_automation_templates**](AutomationsApi.md#list_automation_templates) | **GET** /v1/automations/templates | List automation templates |
| [**list_automations**](AutomationsApi.md#list_automations) | **GET** /v1/automations | List automations |
| [**pause_automation**](AutomationsApi.md#pause_automation) | **POST** /v1/automations/{automationId}/pause | Turn an automation off |
| [**preview_automation**](AutomationsApi.md#preview_automation) | **POST** /v1/automations/{automationId}/preview | Preview a saved automation |
| [**preview_automation_draft**](AutomationsApi.md#preview_automation_draft) | **POST** /v1/automations/preview | Preview an unsaved automation |
| [**reject_automation_approval**](AutomationsApi.md#reject_automation_approval) | **POST** /v1/automations/{automationId}/approvals/{approvalId}/reject | Reject an approval request |
| [**take_over_automation**](AutomationsApi.md#take_over_automation) | **POST** /v1/automations/{automationId}/take-over | Take over an automation |
| [**update_automation**](AutomationsApi.md#update_automation) | **PATCH** /v1/automations/{automationId} | Edit an automation |
| [**update_automation_ad_account_controls**](AutomationsApi.md#update_automation_ad_account_controls) | **PATCH** /v1/automations/controls/ad-accounts | Update one ad account&#39;s controls |
| [**update_automation_controls**](AutomationsApi.md#update_automation_controls) | **PATCH** /v1/automations/controls | Turn every ad automation off or on |
| [**update_automation_template**](AutomationsApi.md#update_automation_template) | **PATCH** /v1/automations/templates/{templateId} | Update an automation template |


## activate_automation

> <CreateAutomation201Response> activate_automation(automation_id)

Turn an automation on

An ad rule's first check runs right away.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AutomationsApi.new
automation_id = 'automation_id_example' # String | 

begin
  # Turn an automation on
  result = api_instance.activate_automation(automation_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->activate_automation: #{e}"
end
```

#### Using the activate_automation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAutomation201Response>, Integer, Hash)> activate_automation_with_http_info(automation_id)

```ruby
begin
  # Turn an automation on
  data, status_code, headers = api_instance.activate_automation_with_http_info(automation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAutomation201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->activate_automation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **automation_id** | **String** |  |  |

### Return type

[**CreateAutomation201Response**](CreateAutomation201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## approve_automation_approval

> <GetAutomationApproval200Response> approve_automation_approval(automation_id, approval_id, opts)

Approve an approval request

Approves a pending request, so the automation acts on each change it holds. Each change is checked again first, and one that no longer applies is skipped.  Only the approvers the automation names now can decide, matched by the email of the user behind the API key. A request already decided, expired or cancelled is refused with nothing changed.  Each applied or failed change fires `automation.action.applied` or `automation.action.failed`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AutomationsApi.new
automation_id = 'automation_id_example' # String | 
approval_id = 'approval_id_example' # String | 
opts = {
  automation_approval_decision: Zernio::AutomationApprovalDecision.new # AutomationApprovalDecision | 
}

begin
  # Approve an approval request
  result = api_instance.approve_automation_approval(automation_id, approval_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->approve_automation_approval: #{e}"
end
```

#### Using the approve_automation_approval_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAutomationApproval200Response>, Integer, Hash)> approve_automation_approval_with_http_info(automation_id, approval_id, opts)

```ruby
begin
  # Approve an approval request
  data, status_code, headers = api_instance.approve_automation_approval_with_http_info(automation_id, approval_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAutomationApproval200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->approve_automation_approval_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **automation_id** | **String** |  |  |
| **approval_id** | **String** |  |  |
| **automation_approval_decision** | [**AutomationApprovalDecision**](AutomationApprovalDecision.md) |  | [optional] |

### Return type

[**GetAutomationApproval200Response**](GetAutomationApproval200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## backtest_automation

> <AutomationBacktest> backtest_automation(automation_id, opts)

Backtest a saved automation

What a saved automation would have done over the last `days` days, replayed on stored daily metrics. Nothing is changed.  Each day lists what it would have done. Its own changes carry into later days, but the metrics stay what really happened. `notes` says what the replay could not know.  Only ad automations can be backtested, on at most 5,000 ads. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AutomationsApi.new
automation_id = 'automation_id_example' # String | 
opts = {
  days: 56 # Integer | How many whole days before today to replay. Today is not replayed.
}

begin
  # Backtest a saved automation
  result = api_instance.backtest_automation(automation_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->backtest_automation: #{e}"
end
```

#### Using the backtest_automation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AutomationBacktest>, Integer, Hash)> backtest_automation_with_http_info(automation_id, opts)

```ruby
begin
  # Backtest a saved automation
  data, status_code, headers = api_instance.backtest_automation_with_http_info(automation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AutomationBacktest>
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->backtest_automation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **automation_id** | **String** |  |  |
| **days** | **Integer** | How many whole days before today to replay. Today is not replayed. | [optional][default to 30] |

### Return type

[**AutomationBacktest**](AutomationBacktest.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## backtest_automation_draft

> <AutomationBacktest> backtest_automation_draft(automation_definition, opts)

Backtest an unsaved automation

Replays an automation over past days on stored daily metrics, without saving it or changing anything. It refuses what saving would refuse.  Each day lists what it would have done. Its own changes carry into later days, but the metrics stay what really happened. `notes` says what the replay could not know.  Only ad automations can be backtested, on at most 5,000 ads. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AutomationsApi.new
automation_definition = Zernio::AdRuleAutomationDefinition.new({name: 'name_example', trigger: Zernio::AutomationScheduleTrigger.new({type: 'schedule'}), subjects: Zernio::AutomationSubjects.new({each: 'campaign', ad_accounts: [Zernio::AutomationSubjectsAdAccountsInner.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example'})]}), conditions: Zernio::AdRuleConditionsOneOf.new({all: [Zernio::AdRuleCondition.new({metric: 'spend', window: 'today', op: '>', value: 3.56})]}), steps: [Zernio::AutomationApprovalStep.new({type: 'approval.request', to: ['to_example'], expires_in: '1d'})]}) # AutomationDefinition | 
opts = {
  days: 56 # Integer | How many whole days before today to replay. Today is not replayed.
}

begin
  # Backtest an unsaved automation
  result = api_instance.backtest_automation_draft(automation_definition, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->backtest_automation_draft: #{e}"
end
```

#### Using the backtest_automation_draft_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AutomationBacktest>, Integer, Hash)> backtest_automation_draft_with_http_info(automation_definition, opts)

```ruby
begin
  # Backtest an unsaved automation
  data, status_code, headers = api_instance.backtest_automation_draft_with_http_info(automation_definition, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AutomationBacktest>
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->backtest_automation_draft_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **automation_definition** | [**AutomationDefinition**](AutomationDefinition.md) |  |  |
| **days** | **Integer** | How many whole days before today to replay. Today is not replayed. | [optional][default to 30] |

### Return type

[**AutomationBacktest**](AutomationBacktest.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_automation

> <CreateAutomation201Response> create_automation(automation_definition, opts)

Create an automation

Creates an automation. Its trigger picks the kind:  - **Ad rule**: a `schedule` over campaigns, ad sets, ads, Google keywords or Google search terms, with metric `conditions` and ad `steps`. It stays paused unless `status` is `active`; preview it first with `POST /v1/automations/preview`. - **Event**: a Zernio event in `trigger.type`, such as `post.failed`, with notify steps. It is on unless `status` is `paused`. - **Scheduled**: a `schedule` over a profile's posts, with notify steps and an optional boost. It is on unless `status` is `paused`. - **Sequence**: an `enrollment` trigger on one messaging account, with message steps sent over time. It is on unless `status` is `draft`. It needs what `/v1/sequences` needs: the inbox add-on and a key with the `messages` group. - **Comment to DM**: a comment door in `trigger.type`, such as `comment.keyword`, with a `graph` of the shapes `/v1/comment-automations` holds. It is on unless `status` is `paused`, and needs what `/v1/comment-automations` needs. A post that already has an active automation is a 409. - **Flow** (`kind` is `workflow`): a flow trigger such as `inbound_message` (or a `graph` whose trigger node names it) on one account, with the builder's `graph`. It is a draft unless `status` is `active`, which needs a complete graph; `paused` is refused. It needs the inbox add-on and a full-access key.  Everything an automation cannot hold is refused at once: the 400 lists every problem with its JSON path in `details.problems`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AutomationsApi.new
automation_definition = Zernio::AdRuleAutomationDefinition.new({name: 'name_example', trigger: Zernio::AutomationScheduleTrigger.new({type: 'schedule'}), subjects: Zernio::AutomationSubjects.new({each: 'campaign', ad_accounts: [Zernio::AutomationSubjectsAdAccountsInner.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example'})]}), conditions: Zernio::AdRuleConditionsOneOf.new({all: [Zernio::AdRuleCondition.new({metric: 'spend', window: 'today', op: '>', value: 3.56})]}), steps: [Zernio::AutomationApprovalStep.new({type: 'approval.request', to: ['to_example'], expires_in: '1d'})]}) # AutomationDefinition | 
opts = {
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours.  On the Ads create, boost and duplicate endpoints, a same-body retry runs again once the cut-off request started more than 15 minutes ago. 
}

begin
  # Create an automation
  result = api_instance.create_automation(automation_definition, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->create_automation: #{e}"
end
```

#### Using the create_automation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAutomation201Response>, Integer, Hash)> create_automation_with_http_info(automation_definition, opts)

```ruby
begin
  # Create an automation
  data, status_code, headers = api_instance.create_automation_with_http_info(automation_definition, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAutomation201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->create_automation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **automation_definition** | [**AutomationDefinition**](AutomationDefinition.md) |  |  |
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours.  On the Ads create, boost and duplicate endpoints, a same-body retry runs again once the cut-off request started more than 15 minutes ago.  | [optional] |

### Return type

[**CreateAutomation201Response**](CreateAutomation201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_automation_template

> <CreateAutomationTemplate201Response> create_automation_template(create_automation_template_request, opts)

Create an automation template

Saves a reusable setup of one or more automations (up to 20) that your team, or anyone you share it with, can install. Start from your own automations, one of Zernio's templates, a shared template, or definitions sent as they are.  Nothing tied to one account is kept. Ad accounts, a trigger's profile and accounts, and alert destinations become `inputs` that each install fills. Campaign ids, id filters, dates and approval steps are dropped.  From one of Zernio's templates, each threshold and budget or bid amount also becomes an input, with the template's own value as its default.  A template that would not install is refused: the 400 lists every problem in `details.problems`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AutomationsApi.new
create_automation_template_request = Zernio::CreateAutomationTemplateRequest.new({name: 'name_example'}) # CreateAutomationTemplateRequest | 
opts = {
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours.  On the Ads create, boost and duplicate endpoints, a same-body retry runs again once the cut-off request started more than 15 minutes ago. 
}

begin
  # Create an automation template
  result = api_instance.create_automation_template(create_automation_template_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->create_automation_template: #{e}"
end
```

#### Using the create_automation_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAutomationTemplate201Response>, Integer, Hash)> create_automation_template_with_http_info(create_automation_template_request, opts)

```ruby
begin
  # Create an automation template
  data, status_code, headers = api_instance.create_automation_template_with_http_info(create_automation_template_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAutomationTemplate201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->create_automation_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_automation_template_request** | [**CreateAutomationTemplateRequest**](CreateAutomationTemplateRequest.md) |  |  |
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours.  On the Ads create, boost and duplicate endpoints, a same-body retry runs again once the cut-off request started more than 15 minutes ago.  | [optional] |

### Return type

[**CreateAutomationTemplate201Response**](CreateAutomationTemplate201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_automation

> <UpdateYoutubeDefaultPlaylist200Response> delete_automation(automation_id)

Delete an automation

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AutomationsApi.new
automation_id = 'automation_id_example' # String | 

begin
  # Delete an automation
  result = api_instance.delete_automation(automation_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->delete_automation: #{e}"
end
```

#### Using the delete_automation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateYoutubeDefaultPlaylist200Response>, Integer, Hash)> delete_automation_with_http_info(automation_id)

```ruby
begin
  # Delete an automation
  data, status_code, headers = api_instance.delete_automation_with_http_info(automation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateYoutubeDefaultPlaylist200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->delete_automation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **automation_id** | **String** |  |  |

### Return type

[**UpdateYoutubeDefaultPlaylist200Response**](UpdateYoutubeDefaultPlaylist200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_automation_template

> <DeleteAutomationTemplate200Response> delete_automation_template(template_id)

Delete an automation template

Deletes one of your team's templates and its share link. Automations already installed from it stay. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AutomationsApi.new
template_id = 'template_id_example' # String | The template's id.

begin
  # Delete an automation template
  result = api_instance.delete_automation_template(template_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->delete_automation_template: #{e}"
end
```

#### Using the delete_automation_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteAutomationTemplate200Response>, Integer, Hash)> delete_automation_template_with_http_info(template_id)

```ruby
begin
  # Delete an automation template
  data, status_code, headers = api_instance.delete_automation_template_with_http_info(template_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteAutomationTemplate200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->delete_automation_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** | The template&#39;s id. |  |

### Return type

[**DeleteAutomationTemplate200Response**](DeleteAutomationTemplate200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_automation

> <CreateAutomation201Response> get_automation(automation_id)

Get an automation

An automation installed from a template also carries `template`.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AutomationsApi.new
automation_id = 'automation_id_example' # String | 

begin
  # Get an automation
  result = api_instance.get_automation(automation_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->get_automation: #{e}"
end
```

#### Using the get_automation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAutomation201Response>, Integer, Hash)> get_automation_with_http_info(automation_id)

```ruby
begin
  # Get an automation
  data, status_code, headers = api_instance.get_automation_with_http_info(automation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAutomation201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->get_automation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **automation_id** | **String** |  |  |

### Return type

[**CreateAutomation201Response**](CreateAutomation201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_automation_approval

> <GetAutomationApproval200Response> get_automation_approval(automation_id, approval_id)

Get an approval request

One approval request with the changes it holds, who may decide it and whether you can.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AutomationsApi.new
automation_id = 'automation_id_example' # String | 
approval_id = 'approval_id_example' # String | 

begin
  # Get an approval request
  result = api_instance.get_automation_approval(automation_id, approval_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->get_automation_approval: #{e}"
end
```

#### Using the get_automation_approval_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAutomationApproval200Response>, Integer, Hash)> get_automation_approval_with_http_info(automation_id, approval_id)

```ruby
begin
  # Get an approval request
  data, status_code, headers = api_instance.get_automation_approval_with_http_info(automation_id, approval_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAutomationApproval200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->get_automation_approval_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **automation_id** | **String** |  |  |
| **approval_id** | **String** |  |  |

### Return type

[**GetAutomationApproval200Response**](GetAutomationApproval200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_automation_catalog

> <GetAutomationCatalog200Response> get_automation_catalog

Get the automations catalog

What an automation can contain and where each part works, built from the same checks that validate a save, so it never offers what saving refuses.  - `schema`: the JSON Schema of the body of `POST /v1/automations`. - `triggers`: every trigger, tagged with its `kind`. Ad rule and scheduled triggers list their intervals; event triggers list each event with its facts. - The other sections describe ad rules: per subject (campaign, ad set, ad) its metrics and steps with the platforms that accept them, plus filters, groups, alerts, conditions, limits and approval. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AutomationsApi.new

begin
  # Get the automations catalog
  result = api_instance.get_automation_catalog
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->get_automation_catalog: #{e}"
end
```

#### Using the get_automation_catalog_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAutomationCatalog200Response>, Integer, Hash)> get_automation_catalog_with_http_info

```ruby
begin
  # Get the automations catalog
  data, status_code, headers = api_instance.get_automation_catalog_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAutomationCatalog200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->get_automation_catalog_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetAutomationCatalog200Response**](GetAutomationCatalog200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_automation_controls

> <GetAutomationControls200Response> get_automation_controls

Get automation controls

The team's switch for every ad rule, and each ad account's own switch and daily raise limit. Boosting automations do not read them.  Every team member sees the same controls. `adAccounts` lists each ad account your automations use, plus any ad account that has controls set. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AutomationsApi.new

begin
  # Get automation controls
  result = api_instance.get_automation_controls
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->get_automation_controls: #{e}"
end
```

#### Using the get_automation_controls_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAutomationControls200Response>, Integer, Hash)> get_automation_controls_with_http_info

```ruby
begin
  # Get automation controls
  data, status_code, headers = api_instance.get_automation_controls_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAutomationControls200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->get_automation_controls_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetAutomationControls200Response**](GetAutomationControls200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_automation_template

> <CreateAutomationTemplate201Response> get_automation_template(template_id)

Get an automation template

Returns one of your team's templates, with its inputs and automations. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AutomationsApi.new
template_id = 'template_id_example' # String | The template's id.

begin
  # Get an automation template
  result = api_instance.get_automation_template(template_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->get_automation_template: #{e}"
end
```

#### Using the get_automation_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAutomationTemplate201Response>, Integer, Hash)> get_automation_template_with_http_info(template_id)

```ruby
begin
  # Get an automation template
  data, status_code, headers = api_instance.get_automation_template_with_http_info(template_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAutomationTemplate201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->get_automation_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** | The template&#39;s id. |  |

### Return type

[**CreateAutomationTemplate201Response**](CreateAutomationTemplate201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_shared_automation_template

> <CreateAutomationTemplate201Response> get_shared_automation_template(share_token)

Get a shared automation template

Returns a template shared by link, from any team. Who made it and its install counts in that team are left out, and `share` is null. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AutomationsApi.new
share_token = 'share_token_example' # String | The token from the template's `share.token`.

begin
  # Get a shared automation template
  result = api_instance.get_shared_automation_template(share_token)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->get_shared_automation_template: #{e}"
end
```

#### Using the get_shared_automation_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAutomationTemplate201Response>, Integer, Hash)> get_shared_automation_template_with_http_info(share_token)

```ruby
begin
  # Get a shared automation template
  data, status_code, headers = api_instance.get_shared_automation_template_with_http_info(share_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAutomationTemplate201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->get_shared_automation_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **share_token** | **String** | The token from the template&#39;s &#x60;share.token&#x60;. |  |

### Return type

[**CreateAutomationTemplate201Response**](CreateAutomationTemplate201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_zernio_automation_template

> <CreateAutomationTemplate201Response> get_zernio_automation_template(template_id)

Get a Zernio automation template

Returns one of Zernio's ready-made ad rule templates in the same shape as your own. Each threshold and budget or bid amount is an input with the template's own value as its default, so an install can change it or leave it. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AutomationsApi.new
template_id = 'stop_losers' # String | The id of one of Zernio's templates, for example `stop_losers`.

begin
  # Get a Zernio automation template
  result = api_instance.get_zernio_automation_template(template_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->get_zernio_automation_template: #{e}"
end
```

#### Using the get_zernio_automation_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAutomationTemplate201Response>, Integer, Hash)> get_zernio_automation_template_with_http_info(template_id)

```ruby
begin
  # Get a Zernio automation template
  data, status_code, headers = api_instance.get_zernio_automation_template_with_http_info(template_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAutomationTemplate201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->get_zernio_automation_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** | The id of one of Zernio&#39;s templates, for example &#x60;stop_losers&#x60;. |  |

### Return type

[**CreateAutomationTemplate201Response**](CreateAutomationTemplate201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## install_automation_template

> <AutomationTemplateInstallResponse> install_automation_template(template_id, automation_template_install_request, opts)

Install an automation template

Creates every automation in the template, with your values in place of its inputs. All or nothing: if one automation fails, the ones already created are removed. New automations stay paused unless `status` is `active`.  To install on many ad accounts at once, send `targets` (up to 50). Each target is its own install with its own `inputs`, which win over the shared `inputs`. A failed target leaves the others in place, and the response is 207. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AutomationsApi.new
template_id = 'template_id_example' # String | The template's id.
automation_template_install_request = Zernio::AutomationTemplateInstallRequest.new # AutomationTemplateInstallRequest | 
opts = {
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours.  On the Ads create, boost and duplicate endpoints, a same-body retry runs again once the cut-off request started more than 15 minutes ago. 
}

begin
  # Install an automation template
  result = api_instance.install_automation_template(template_id, automation_template_install_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->install_automation_template: #{e}"
end
```

#### Using the install_automation_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AutomationTemplateInstallResponse>, Integer, Hash)> install_automation_template_with_http_info(template_id, automation_template_install_request, opts)

```ruby
begin
  # Install an automation template
  data, status_code, headers = api_instance.install_automation_template_with_http_info(template_id, automation_template_install_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AutomationTemplateInstallResponse>
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->install_automation_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** | The template&#39;s id. |  |
| **automation_template_install_request** | [**AutomationTemplateInstallRequest**](AutomationTemplateInstallRequest.md) |  |  |
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours.  On the Ads create, boost and duplicate endpoints, a same-body retry runs again once the cut-off request started more than 15 minutes ago.  | [optional] |

### Return type

[**AutomationTemplateInstallResponse**](AutomationTemplateInstallResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## install_shared_automation_template

> <AutomationTemplateInstallResponse> install_shared_automation_template(share_token, automation_template_install_request, opts)

Install a shared automation template

Installs a template shared by link into your account, the same way as your own templates.  To install on many ad accounts at once, send `targets` (up to 50). Each target is its own install with its own `inputs`, which win over the shared `inputs`. A failed target leaves the others in place, and the response is 207. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AutomationsApi.new
share_token = 'share_token_example' # String | The token from the template's `share.token`.
automation_template_install_request = Zernio::AutomationTemplateInstallRequest.new # AutomationTemplateInstallRequest | 
opts = {
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours.  On the Ads create, boost and duplicate endpoints, a same-body retry runs again once the cut-off request started more than 15 minutes ago. 
}

begin
  # Install a shared automation template
  result = api_instance.install_shared_automation_template(share_token, automation_template_install_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->install_shared_automation_template: #{e}"
end
```

#### Using the install_shared_automation_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AutomationTemplateInstallResponse>, Integer, Hash)> install_shared_automation_template_with_http_info(share_token, automation_template_install_request, opts)

```ruby
begin
  # Install a shared automation template
  data, status_code, headers = api_instance.install_shared_automation_template_with_http_info(share_token, automation_template_install_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AutomationTemplateInstallResponse>
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->install_shared_automation_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **share_token** | **String** | The token from the template&#39;s &#x60;share.token&#x60;. |  |
| **automation_template_install_request** | [**AutomationTemplateInstallRequest**](AutomationTemplateInstallRequest.md) |  |  |
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours.  On the Ads create, boost and duplicate endpoints, a same-body retry runs again once the cut-off request started more than 15 minutes ago.  | [optional] |

### Return type

[**AutomationTemplateInstallResponse**](AutomationTemplateInstallResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## install_zernio_automation_template

> <AutomationTemplateInstallResponse> install_zernio_automation_template(template_id, automation_template_install_request, opts)

Install a Zernio automation template

Installs one of Zernio's ready-made templates. Leave a value input out to keep the template's default.  To install on many ad accounts at once, send `targets` (up to 50). Each target is its own install with its own `inputs`, which win over the shared `inputs`. A failed target leaves the others in place, and the response is 207. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AutomationsApi.new
template_id = 'stop_losers' # String | The id of one of Zernio's templates, for example `stop_losers`.
automation_template_install_request = Zernio::AutomationTemplateInstallRequest.new # AutomationTemplateInstallRequest | 
opts = {
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours.  On the Ads create, boost and duplicate endpoints, a same-body retry runs again once the cut-off request started more than 15 minutes ago. 
}

begin
  # Install a Zernio automation template
  result = api_instance.install_zernio_automation_template(template_id, automation_template_install_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->install_zernio_automation_template: #{e}"
end
```

#### Using the install_zernio_automation_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AutomationTemplateInstallResponse>, Integer, Hash)> install_zernio_automation_template_with_http_info(template_id, automation_template_install_request, opts)

```ruby
begin
  # Install a Zernio automation template
  data, status_code, headers = api_instance.install_zernio_automation_template_with_http_info(template_id, automation_template_install_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AutomationTemplateInstallResponse>
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->install_zernio_automation_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** | The id of one of Zernio&#39;s templates, for example &#x60;stop_losers&#x60;. |  |
| **automation_template_install_request** | [**AutomationTemplateInstallRequest**](AutomationTemplateInstallRequest.md) |  |  |
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours.  On the Ads create, boost and duplicate endpoints, a same-body retry runs again once the cut-off request started more than 15 minutes ago.  | [optional] |

### Return type

[**AutomationTemplateInstallResponse**](AutomationTemplateInstallResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_automation_actions

> <ListAutomationActions200Response> list_automation_actions(opts)

List automation actions

Every change your ad rules made, newest first: what changed, the value before and after, and whether it was applied, skipped or failed. What event and scheduled automations did is in each one's checks. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AutomationsApi.new
opts = {
  automation_id: 'automation_id_example', # String | 
  account_id: 'account_id_example', # String | Only actions on this ads connection.
  type: 'ads.pause', # String | A change reads as the value it set, so budget changes filter as `ads.set_budget`.
  from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  limit: 56, # Integer | 
  cursor: 'cursor_example' # String | `nextCursor` from the previous page.
}

begin
  # List automation actions
  result = api_instance.list_automation_actions(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->list_automation_actions: #{e}"
end
```

#### Using the list_automation_actions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAutomationActions200Response>, Integer, Hash)> list_automation_actions_with_http_info(opts)

```ruby
begin
  # List automation actions
  data, status_code, headers = api_instance.list_automation_actions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAutomationActions200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->list_automation_actions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **automation_id** | **String** |  | [optional] |
| **account_id** | **String** | Only actions on this ads connection. | [optional] |
| **type** | **String** | A change reads as the value it set, so budget changes filter as &#x60;ads.set_budget&#x60;. | [optional] |
| **from** | **Time** |  | [optional] |
| **to** | **Time** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |
| **cursor** | **String** | &#x60;nextCursor&#x60; from the previous page. | [optional] |

### Return type

[**ListAutomationActions200Response**](ListAutomationActions200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_automation_approvals

> <ListAutomationApprovals200Response> list_automation_approvals(automation_id, opts)

List an automation's approval requests

The requests an automation sent for a person's approval before acting, newest first. Each lists the changes it holds, who may decide it and until when.  Only automations that ask for approval have requests. Others return 409. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AutomationsApi.new
automation_id = 'automation_id_example' # String | 
opts = {
  status: 'pending', # String | Only requests in this status.
  limit: 56 # Integer | How many requests to return. There is no cursor; the newest come first.
}

begin
  # List an automation's approval requests
  result = api_instance.list_automation_approvals(automation_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->list_automation_approvals: #{e}"
end
```

#### Using the list_automation_approvals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAutomationApprovals200Response>, Integer, Hash)> list_automation_approvals_with_http_info(automation_id, opts)

```ruby
begin
  # List an automation's approval requests
  data, status_code, headers = api_instance.list_automation_approvals_with_http_info(automation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAutomationApprovals200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->list_automation_approvals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **automation_id** | **String** |  |  |
| **status** | **String** | Only requests in this status. | [optional] |
| **limit** | **Integer** | How many requests to return. There is no cursor; the newest come first. | [optional][default to 20] |

### Return type

[**ListAutomationApprovals200Response**](ListAutomationApprovals200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_automation_checks

> <ListAutomationChecks200Response> list_automation_checks(automation_id, opts)

List an automation's checks

Each time the automation ran, newest first, with what matched and what it did. For an event automation, each check is one event that reached it. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AutomationsApi.new
automation_id = 'automation_id_example' # String | 
opts = {
  limit: 56, # Integer | 
  cursor: 'cursor_example' # String | `nextCursor` from the previous page.
}

begin
  # List an automation's checks
  result = api_instance.list_automation_checks(automation_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->list_automation_checks: #{e}"
end
```

#### Using the list_automation_checks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAutomationChecks200Response>, Integer, Hash)> list_automation_checks_with_http_info(automation_id, opts)

```ruby
begin
  # List an automation's checks
  data, status_code, headers = api_instance.list_automation_checks_with_http_info(automation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAutomationChecks200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->list_automation_checks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **automation_id** | **String** |  |  |
| **limit** | **Integer** |  | [optional][default to 20] |
| **cursor** | **String** | &#x60;nextCursor&#x60; from the previous page. | [optional] |

### Return type

[**ListAutomationChecks200Response**](ListAutomationChecks200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_automation_templates

> <ListAutomationTemplates200Response> list_automation_templates(opts)

List automation templates

Lists your team's templates, newest first. Every team member sees the templates any member saved. A team keeps up to 200. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AutomationsApi.new
opts = {
  scope: 'team' # String | Which templates to list. Only `team` today.
}

begin
  # List automation templates
  result = api_instance.list_automation_templates(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->list_automation_templates: #{e}"
end
```

#### Using the list_automation_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAutomationTemplates200Response>, Integer, Hash)> list_automation_templates_with_http_info(opts)

```ruby
begin
  # List automation templates
  data, status_code, headers = api_instance.list_automation_templates_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAutomationTemplates200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->list_automation_templates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scope** | **String** | Which templates to list. Only &#x60;team&#x60; today. | [optional][default to &#39;team&#39;] |

### Return type

[**ListAutomationTemplates200Response**](ListAutomationTemplates200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_automations

> <ListAutomations200Response> list_automations(opts)

List automations

Lists the automations on the profiles your key can reach, newest first, across every kind: ad rules, event automations, scheduled automations, sequences, comment to DM and flows. One `cursor` pages them all.  Each kind is listed only for callers its own route lets read it; the others are left out, never an error:  - **Sequences and comment to DM** need the inbox add-on and a key with the `messages` group, as `/v1/sequences` and `/v1/comment-automations` do. - **Flows** need the inbox add-on and a full-access key, as `/v1/workflows` does. - **Ad rules, event and scheduled automations** need only access to their profile, as reading, pausing and deleting them does. Creating, editing, activating or previewing an ad rule needs the ads add-on. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AutomationsApi.new
opts = {
  account_id: 'account_id_example', # String | Only automations on this account: the ads connection of an ad rule, one of the `accountIds` of an event or scheduled automation, or the account a sequence, comment to DM or flow runs on.
  ad_account_id: 'ad_account_id_example', # String | Only ad rules checking this platform ad account.
  q: 'welcome', # String | Only automations whose name contains this text, ignoring case. `%` and `_` match themselves.
  kind: 'ad_rule,event', # String | Only these kinds, comma separated: `ad_rule`, `event`, `scheduled`, `sequence`, `comment`, `workflow`.
  limit: 56, # Integer | 
  cursor: 'cursor_example' # String | `nextCursor` from the previous page, sent back unchanged with the same `q`, `kind`, `accountId` and `adAccountId`.  Opaque: it holds the creation time and id of the page's last automation, and the next page is every kind's automations strictly older than it, so an automation created meanwhile never shifts or repeats a page. 
}

begin
  # List automations
  result = api_instance.list_automations(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->list_automations: #{e}"
end
```

#### Using the list_automations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAutomations200Response>, Integer, Hash)> list_automations_with_http_info(opts)

```ruby
begin
  # List automations
  data, status_code, headers = api_instance.list_automations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAutomations200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->list_automations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Only automations on this account: the ads connection of an ad rule, one of the &#x60;accountIds&#x60; of an event or scheduled automation, or the account a sequence, comment to DM or flow runs on. | [optional] |
| **ad_account_id** | **String** | Only ad rules checking this platform ad account. | [optional] |
| **q** | **String** | Only automations whose name contains this text, ignoring case. &#x60;%&#x60; and &#x60;_&#x60; match themselves. | [optional] |
| **kind** | **String** | Only these kinds, comma separated: &#x60;ad_rule&#x60;, &#x60;event&#x60;, &#x60;scheduled&#x60;, &#x60;sequence&#x60;, &#x60;comment&#x60;, &#x60;workflow&#x60;. | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |
| **cursor** | **String** | &#x60;nextCursor&#x60; from the previous page, sent back unchanged with the same &#x60;q&#x60;, &#x60;kind&#x60;, &#x60;accountId&#x60; and &#x60;adAccountId&#x60;.  Opaque: it holds the creation time and id of the page&#39;s last automation, and the next page is every kind&#39;s automations strictly older than it, so an automation created meanwhile never shifts or repeats a page.  | [optional] |

### Return type

[**ListAutomations200Response**](ListAutomations200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pause_automation

> <CreateAutomation201Response> pause_automation(automation_id)

Turn an automation off

Pausing never needs ads access.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AutomationsApi.new
automation_id = 'automation_id_example' # String | 

begin
  # Turn an automation off
  result = api_instance.pause_automation(automation_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->pause_automation: #{e}"
end
```

#### Using the pause_automation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAutomation201Response>, Integer, Hash)> pause_automation_with_http_info(automation_id)

```ruby
begin
  # Turn an automation off
  data, status_code, headers = api_instance.pause_automation_with_http_info(automation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAutomation201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->pause_automation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **automation_id** | **String** |  |  |

### Return type

[**CreateAutomation201Response**](CreateAutomation201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## preview_automation

> <AutomationPreview> preview_automation(automation_id, opts)

Preview a saved automation

Shows what an ad rule would do if it ran now. Nothing is changed. Event and scheduled automations cannot be previewed yet (400, `not_supported`). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AutomationsApi.new
automation_id = 'automation_id_example' # String | 
opts = {
  limit: 56 # Integer | How many subjects to list, matches first. `evaluated` and `matched` always count them all.
}

begin
  # Preview a saved automation
  result = api_instance.preview_automation(automation_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->preview_automation: #{e}"
end
```

#### Using the preview_automation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AutomationPreview>, Integer, Hash)> preview_automation_with_http_info(automation_id, opts)

```ruby
begin
  # Preview a saved automation
  data, status_code, headers = api_instance.preview_automation_with_http_info(automation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AutomationPreview>
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->preview_automation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **automation_id** | **String** |  |  |
| **limit** | **Integer** | How many subjects to list, matches first. &#x60;evaluated&#x60; and &#x60;matched&#x60; always count them all. | [optional][default to 100] |

### Return type

[**AutomationPreview**](AutomationPreview.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## preview_automation_draft

> <AutomationPreview> preview_automation_draft(automation_definition, opts)

Preview an unsaved automation

Shows what an ad rule would do if it ran now, without saving it or changing anything: every object it checks, each condition with its actual value, and the steps a match would run. It refuses what saving would refuse.  Event and scheduled automations cannot be previewed yet (400, `not_supported`). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AutomationsApi.new
automation_definition = Zernio::AdRuleAutomationDefinition.new({name: 'name_example', trigger: Zernio::AutomationScheduleTrigger.new({type: 'schedule'}), subjects: Zernio::AutomationSubjects.new({each: 'campaign', ad_accounts: [Zernio::AutomationSubjectsAdAccountsInner.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example'})]}), conditions: Zernio::AdRuleConditionsOneOf.new({all: [Zernio::AdRuleCondition.new({metric: 'spend', window: 'today', op: '>', value: 3.56})]}), steps: [Zernio::AutomationApprovalStep.new({type: 'approval.request', to: ['to_example'], expires_in: '1d'})]}) # AutomationDefinition | 
opts = {
  limit: 56 # Integer | How many subjects to list, matches first. `evaluated` and `matched` always count them all.
}

begin
  # Preview an unsaved automation
  result = api_instance.preview_automation_draft(automation_definition, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->preview_automation_draft: #{e}"
end
```

#### Using the preview_automation_draft_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AutomationPreview>, Integer, Hash)> preview_automation_draft_with_http_info(automation_definition, opts)

```ruby
begin
  # Preview an unsaved automation
  data, status_code, headers = api_instance.preview_automation_draft_with_http_info(automation_definition, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AutomationPreview>
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->preview_automation_draft_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **automation_definition** | [**AutomationDefinition**](AutomationDefinition.md) |  |  |
| **limit** | **Integer** | How many subjects to list, matches first. &#x60;evaluated&#x60; and &#x60;matched&#x60; always count them all. | [optional][default to 100] |

### Return type

[**AutomationPreview**](AutomationPreview.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## reject_automation_approval

> <GetAutomationApproval200Response> reject_automation_approval(automation_id, approval_id, opts)

Reject an approval request

Rejects a pending request: every change it holds is skipped and nothing is changed on the ad account.  Only the approvers the automation names now can decide, matched by the email of the user behind the API key. Rejecting needs no ads access, like pausing. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AutomationsApi.new
automation_id = 'automation_id_example' # String | 
approval_id = 'approval_id_example' # String | 
opts = {
  automation_approval_decision: Zernio::AutomationApprovalDecision.new # AutomationApprovalDecision | 
}

begin
  # Reject an approval request
  result = api_instance.reject_automation_approval(automation_id, approval_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->reject_automation_approval: #{e}"
end
```

#### Using the reject_automation_approval_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAutomationApproval200Response>, Integer, Hash)> reject_automation_approval_with_http_info(automation_id, approval_id, opts)

```ruby
begin
  # Reject an approval request
  data, status_code, headers = api_instance.reject_automation_approval_with_http_info(automation_id, approval_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAutomationApproval200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->reject_automation_approval_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **automation_id** | **String** |  |  |
| **approval_id** | **String** |  |  |
| **automation_approval_decision** | [**AutomationApprovalDecision**](AutomationApprovalDecision.md) |  | [optional] |

### Return type

[**GetAutomationApproval200Response**](GetAutomationApproval200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## take_over_automation

> <TakeOverAutomation200Response> take_over_automation(automation_id)

Take over an automation

Makes the caller the automation's owner, so its AI steps use the caller's own AI key. Only the owner or an admin of the active workspace can take over, from the dashboard.  When the member who made an automation leaves the workspace, its AI steps pause until it is taken over; every other step keeps running. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AutomationsApi.new
automation_id = 'automation_id_example' # String | 

begin
  # Take over an automation
  result = api_instance.take_over_automation(automation_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->take_over_automation: #{e}"
end
```

#### Using the take_over_automation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TakeOverAutomation200Response>, Integer, Hash)> take_over_automation_with_http_info(automation_id)

```ruby
begin
  # Take over an automation
  data, status_code, headers = api_instance.take_over_automation_with_http_info(automation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TakeOverAutomation200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->take_over_automation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **automation_id** | **String** |  |  |

### Return type

[**TakeOverAutomation200Response**](TakeOverAutomation200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_automation

> <CreateAutomation201Response> update_automation(automation_id, update_automation_request, opts)

Edit an automation

Replaces the top-level fields you send and keeps the rest: to change one step, send all of `steps`. The result is checked as a whole automation, so problems carry the same paths as on create.  An automation keeps its kind, and an ad rule stays on its ad account. Send `alert: null` to remove an ad rule's alert.  Send the `version` you read as `If-Match`: if the automation was saved since, the edit is refused with a 409 (`automation_stale`). An edit is also refused with a 409 when another save lands while it is being applied. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AutomationsApi.new
automation_id = 'automation_id_example' # String | 
update_automation_request = Zernio::UpdateAutomationRequest.new # UpdateAutomationRequest | 
opts = {
  if_match: 'if_match_example' # String | The automation's `version` when you read it.
}

begin
  # Edit an automation
  result = api_instance.update_automation(automation_id, update_automation_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->update_automation: #{e}"
end
```

#### Using the update_automation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAutomation201Response>, Integer, Hash)> update_automation_with_http_info(automation_id, update_automation_request, opts)

```ruby
begin
  # Edit an automation
  data, status_code, headers = api_instance.update_automation_with_http_info(automation_id, update_automation_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAutomation201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->update_automation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **automation_id** | **String** |  |  |
| **update_automation_request** | [**UpdateAutomationRequest**](UpdateAutomationRequest.md) |  |  |
| **if_match** | **String** | The automation&#39;s &#x60;version&#x60; when you read it. | [optional] |

### Return type

[**CreateAutomation201Response**](CreateAutomation201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_automation_ad_account_controls

> <GetAutomationControls200Response> update_automation_ad_account_controls(update_automation_ad_account_controls_request)

Update one ad account's controls

Turns ad rules off or on for one ad account, sets its daily raise limit, or both. Send at least one of `paused` and `dailyRaiseLimit`; fields you leave out keep their value.  The ad account must be one the connection in `accountId` reaches, as for an automation on it. Controls apply to every ad rule of the team on that ad account. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AutomationsApi.new
update_automation_ad_account_controls_request = Zernio::UpdateAutomationAdAccountControlsRequest.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example'}) # UpdateAutomationAdAccountControlsRequest | 

begin
  # Update one ad account's controls
  result = api_instance.update_automation_ad_account_controls(update_automation_ad_account_controls_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->update_automation_ad_account_controls: #{e}"
end
```

#### Using the update_automation_ad_account_controls_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAutomationControls200Response>, Integer, Hash)> update_automation_ad_account_controls_with_http_info(update_automation_ad_account_controls_request)

```ruby
begin
  # Update one ad account's controls
  data, status_code, headers = api_instance.update_automation_ad_account_controls_with_http_info(update_automation_ad_account_controls_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAutomationControls200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->update_automation_ad_account_controls_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_automation_ad_account_controls_request** | [**UpdateAutomationAdAccountControlsRequest**](UpdateAutomationAdAccountControlsRequest.md) |  |  |

### Return type

[**GetAutomationControls200Response**](GetAutomationControls200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_automation_controls

> <GetAutomationControls200Response> update_automation_controls(update_automation_controls_request)

Turn every ad automation off or on

Turns every ad rule of the team off (`paused: true`) or back on. Each rule keeps its own status, so turning the switch back on resumes exactly the rules that were active.  Scheduled automations that boost posts are not stopped by it: pause them one by one.  It reaches every profile, so only the account owner or a full-access team member can use it. A key limited to some profiles gets 403.  Turning off a switch that is already off keeps its original `pausedAt`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AutomationsApi.new
update_automation_controls_request = Zernio::UpdateAutomationControlsRequest.new({paused: false}) # UpdateAutomationControlsRequest | 

begin
  # Turn every ad automation off or on
  result = api_instance.update_automation_controls(update_automation_controls_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->update_automation_controls: #{e}"
end
```

#### Using the update_automation_controls_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAutomationControls200Response>, Integer, Hash)> update_automation_controls_with_http_info(update_automation_controls_request)

```ruby
begin
  # Turn every ad automation off or on
  data, status_code, headers = api_instance.update_automation_controls_with_http_info(update_automation_controls_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAutomationControls200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->update_automation_controls_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_automation_controls_request** | [**UpdateAutomationControlsRequest**](UpdateAutomationControlsRequest.md) |  |  |

### Return type

[**GetAutomationControls200Response**](GetAutomationControls200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_automation_template

> <CreateAutomationTemplate201Response> update_automation_template(template_id, update_automation_template_request)

Update an automation template

Renames a template, turns its share link on or off, or replaces its automations. Send at least one field.  Renaming or sharing keeps the `version`. New content (`from` or `automations`) is a new version; automations already installed keep the version they came from.  `visibility: link` turns the share link on (the same link while it stays on) and `visibility: team` revokes it. To copy a shared template, use `POST /v1/automations/templates` instead. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AutomationsApi.new
template_id = 'template_id_example' # String | The template's id.
update_automation_template_request = Zernio::UpdateAutomationTemplateRequest.new # UpdateAutomationTemplateRequest | 

begin
  # Update an automation template
  result = api_instance.update_automation_template(template_id, update_automation_template_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->update_automation_template: #{e}"
end
```

#### Using the update_automation_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAutomationTemplate201Response>, Integer, Hash)> update_automation_template_with_http_info(template_id, update_automation_template_request)

```ruby
begin
  # Update an automation template
  data, status_code, headers = api_instance.update_automation_template_with_http_info(template_id, update_automation_template_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAutomationTemplate201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AutomationsApi->update_automation_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** | The template&#39;s id. |  |
| **update_automation_template_request** | [**UpdateAutomationTemplateRequest**](UpdateAutomationTemplateRequest.md) |  |  |

### Return type

[**CreateAutomationTemplate201Response**](CreateAutomationTemplate201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

