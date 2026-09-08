# Zernio::BusinessAgentApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_business_agent_allowlist_entry**](BusinessAgentApi.md#add_business_agent_allowlist_entry) | **POST** /v1/accounts/{accountId}/business-agent/allowlist | Allowlist a consumer |
| [**add_business_agent_website**](BusinessAgentApi.md#add_business_agent_website) | **POST** /v1/accounts/{accountId}/business-agent/websites | Add a website to crawl |
| [**create_business_agent_connector**](BusinessAgentApi.md#create_business_agent_connector) | **POST** /v1/accounts/{accountId}/business-agent/connectors | Create a connector |
| [**create_business_agent_connector_tool**](BusinessAgentApi.md#create_business_agent_connector_tool) | **POST** /v1/accounts/{accountId}/business-agent/connectors/{connectorId}/tools | Create a connector tool |
| [**create_business_agent_faq**](BusinessAgentApi.md#create_business_agent_faq) | **POST** /v1/accounts/{accountId}/business-agent/faqs | Create a FAQ |
| [**create_business_agent_skill**](BusinessAgentApi.md#create_business_agent_skill) | **POST** /v1/accounts/{accountId}/business-agent/skills | Create a skill |
| [**create_business_agent_ui_skill**](BusinessAgentApi.md#create_business_agent_ui_skill) | **POST** /v1/accounts/{accountId}/business-agent/ui-skills | Create a UI skill |
| [**delete_business_agent_connector**](BusinessAgentApi.md#delete_business_agent_connector) | **DELETE** /v1/accounts/{accountId}/business-agent/connectors/{connectorId} | Delete a connector |
| [**delete_business_agent_connector_tool**](BusinessAgentApi.md#delete_business_agent_connector_tool) | **DELETE** /v1/accounts/{accountId}/business-agent/connectors/{connectorId}/tools/{toolId} | Delete a connector tool |
| [**delete_business_agent_faq**](BusinessAgentApi.md#delete_business_agent_faq) | **DELETE** /v1/accounts/{accountId}/business-agent/faqs/{faqId} | Delete a FAQ |
| [**delete_business_agent_file**](BusinessAgentApi.md#delete_business_agent_file) | **DELETE** /v1/accounts/{accountId}/business-agent/files/{fileId} | Delete a knowledge file |
| [**delete_business_agent_skill**](BusinessAgentApi.md#delete_business_agent_skill) | **DELETE** /v1/accounts/{accountId}/business-agent/skills/{skillId} | Delete a skill |
| [**delete_business_agent_ui_skill**](BusinessAgentApi.md#delete_business_agent_ui_skill) | **DELETE** /v1/accounts/{accountId}/business-agent/ui-skills/{uiSkillId} | Delete a UI skill |
| [**delete_business_agent_website**](BusinessAgentApi.md#delete_business_agent_website) | **DELETE** /v1/accounts/{accountId}/business-agent/websites/{websiteId} | Remove a crawled website |
| [**get_business_agent_budget**](BusinessAgentApi.md#get_business_agent_budget) | **GET** /v1/accounts/{accountId}/business-agent/budget | Get usage budgets |
| [**get_business_agent_business_information**](BusinessAgentApi.md#get_business_agent_business_information) | **GET** /v1/accounts/{accountId}/business-agent/business-information | Get business information |
| [**get_business_agent_connector**](BusinessAgentApi.md#get_business_agent_connector) | **GET** /v1/accounts/{accountId}/business-agent/connectors/{connectorId} | Get a connector |
| [**get_business_agent_connector_logs**](BusinessAgentApi.md#get_business_agent_connector_logs) | **GET** /v1/accounts/{accountId}/business-agent/connectors/{connectorId}/logs | Get connector failure logs |
| [**get_business_agent_connector_tool**](BusinessAgentApi.md#get_business_agent_connector_tool) | **GET** /v1/accounts/{accountId}/business-agent/connectors/{connectorId}/tools/{toolId} | Get a connector tool |
| [**get_business_agent_event**](BusinessAgentApi.md#get_business_agent_event) | **GET** /v1/accounts/{accountId}/business-agent/events/{eventId} | Get a business event status |
| [**get_business_agent_faq**](BusinessAgentApi.md#get_business_agent_faq) | **GET** /v1/accounts/{accountId}/business-agent/faqs/{faqId} | Get a FAQ |
| [**get_business_agent_file**](BusinessAgentApi.md#get_business_agent_file) | **GET** /v1/accounts/{accountId}/business-agent/files/{fileId} | Get a knowledge file |
| [**get_business_agent_skill**](BusinessAgentApi.md#get_business_agent_skill) | **GET** /v1/accounts/{accountId}/business-agent/skills/{skillId} | Get a skill |
| [**get_business_agent_status**](BusinessAgentApi.md#get_business_agent_status) | **GET** /v1/accounts/{accountId}/business-agent | Get agent setup status |
| [**get_business_agent_ui_skill**](BusinessAgentApi.md#get_business_agent_ui_skill) | **GET** /v1/accounts/{accountId}/business-agent/ui-skills/{uiSkillId} | Get a UI skill |
| [**get_business_agent_website**](BusinessAgentApi.md#get_business_agent_website) | **GET** /v1/accounts/{accountId}/business-agent/websites/{websiteId} | Get a crawled website |
| [**list_business_agent_allowlist**](BusinessAgentApi.md#list_business_agent_allowlist) | **GET** /v1/accounts/{accountId}/business-agent/allowlist | List allowlisted consumers |
| [**list_business_agent_connector_tools**](BusinessAgentApi.md#list_business_agent_connector_tools) | **GET** /v1/accounts/{accountId}/business-agent/connectors/{connectorId}/tools | List connector tools |
| [**list_business_agent_connectors**](BusinessAgentApi.md#list_business_agent_connectors) | **GET** /v1/accounts/{accountId}/business-agent/connectors | List connectors |
| [**list_business_agent_faqs**](BusinessAgentApi.md#list_business_agent_faqs) | **GET** /v1/accounts/{accountId}/business-agent/faqs | List FAQs |
| [**list_business_agent_files**](BusinessAgentApi.md#list_business_agent_files) | **GET** /v1/accounts/{accountId}/business-agent/files | List knowledge files |
| [**list_business_agent_settings**](BusinessAgentApi.md#list_business_agent_settings) | **GET** /v1/accounts/{accountId}/business-agent/settings | List agent settings |
| [**list_business_agent_skills**](BusinessAgentApi.md#list_business_agent_skills) | **GET** /v1/accounts/{accountId}/business-agent/skills | List skills |
| [**list_business_agent_ui_skills**](BusinessAgentApi.md#list_business_agent_ui_skills) | **GET** /v1/accounts/{accountId}/business-agent/ui-skills | List UI skills |
| [**list_business_agent_websites**](BusinessAgentApi.md#list_business_agent_websites) | **GET** /v1/accounts/{accountId}/business-agent/websites | List crawled websites |
| [**onboard_business_agent**](BusinessAgentApi.md#onboard_business_agent) | **POST** /v1/accounts/{accountId}/business-agent/onboard | Create the agent |
| [**read_business_agent_evals**](BusinessAgentApi.md#read_business_agent_evals) | **GET** /v1/accounts/{accountId}/business-agent/evals | Read evaluation data |
| [**refresh_business_agent_connector_tools**](BusinessAgentApi.md#refresh_business_agent_connector_tools) | **POST** /v1/accounts/{accountId}/business-agent/connectors/{connectorId}/refresh-tools | Refresh MCP connector tools |
| [**remove_business_agent_allowlist_entry**](BusinessAgentApi.md#remove_business_agent_allowlist_entry) | **DELETE** /v1/accounts/{accountId}/business-agent/allowlist/{entryId} | Remove an allowlisted consumer |
| [**replace_business_agent_budget**](BusinessAgentApi.md#replace_business_agent_budget) | **PUT** /v1/accounts/{accountId}/business-agent/budget | Replace usage budgets |
| [**replace_business_agent_business_information**](BusinessAgentApi.md#replace_business_agent_business_information) | **PUT** /v1/accounts/{accountId}/business-agent/business-information | Replace business information |
| [**reset_business_agent_business_information**](BusinessAgentApi.md#reset_business_agent_business_information) | **DELETE** /v1/accounts/{accountId}/business-agent/business-information | Reset business information |
| [**run_business_agent_connector_tool**](BusinessAgentApi.md#run_business_agent_connector_tool) | **POST** /v1/accounts/{accountId}/business-agent/connectors/{connectorId}/tools/{toolId}/run | Run a connector tool once |
| [**send_business_agent_event**](BusinessAgentApi.md#send_business_agent_event) | **POST** /v1/accounts/{accountId}/business-agent/events | Send a business event |
| [**send_business_agent_test_message**](BusinessAgentApi.md#send_business_agent_test_message) | **POST** /v1/accounts/{accountId}/business-agent/test-messages | Send a test message |
| [**set_business_agent_connector_credentials**](BusinessAgentApi.md#set_business_agent_connector_credentials) | **POST** /v1/accounts/{accountId}/business-agent/connectors/{connectorId}/credentials | Set connector credentials |
| [**start_business_agent_eval_run**](BusinessAgentApi.md#start_business_agent_eval_run) | **POST** /v1/accounts/{accountId}/business-agent/evals | Start an evaluation run |
| [**update_business_agent_connector**](BusinessAgentApi.md#update_business_agent_connector) | **PUT** /v1/accounts/{accountId}/business-agent/connectors/{connectorId} | Update a connector |
| [**update_business_agent_connector_tool**](BusinessAgentApi.md#update_business_agent_connector_tool) | **PUT** /v1/accounts/{accountId}/business-agent/connectors/{connectorId}/tools/{toolId} | Update a connector tool |
| [**update_business_agent_faq**](BusinessAgentApi.md#update_business_agent_faq) | **PUT** /v1/accounts/{accountId}/business-agent/faqs/{faqId} | Update a FAQ |
| [**update_business_agent_settings**](BusinessAgentApi.md#update_business_agent_settings) | **PATCH** /v1/accounts/{accountId}/business-agent/settings | Update agent settings |
| [**update_business_agent_skill**](BusinessAgentApi.md#update_business_agent_skill) | **PUT** /v1/accounts/{accountId}/business-agent/skills/{skillId} | Update a skill |
| [**update_business_agent_ui_skill**](BusinessAgentApi.md#update_business_agent_ui_skill) | **PUT** /v1/accounts/{accountId}/business-agent/ui-skills/{uiSkillId} | Update a UI skill |
| [**update_business_agent_website**](BusinessAgentApi.md#update_business_agent_website) | **PUT** /v1/accounts/{accountId}/business-agent/websites/{websiteId} | Update a crawled website |
| [**upload_business_agent_file**](BusinessAgentApi.md#upload_business_agent_file) | **POST** /v1/accounts/{accountId}/business-agent/files | Upload a knowledge file |


## add_business_agent_allowlist_entry

> <BusinessAgentAllowlistEntry> add_business_agent_allowlist_entry(account_id, add_business_agent_allowlist_entry_request)

Allowlist a consumer

One E.164 number per call. Not idempotent.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
add_business_agent_allowlist_entry_request = Zernio::AddBusinessAgentAllowlistEntryRequest.new({consumer_phone_number: '+34600000000'}) # AddBusinessAgentAllowlistEntryRequest | 

begin
  # Allowlist a consumer
  result = api_instance.add_business_agent_allowlist_entry(account_id, add_business_agent_allowlist_entry_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->add_business_agent_allowlist_entry: #{e}"
end
```

#### Using the add_business_agent_allowlist_entry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BusinessAgentAllowlistEntry>, Integer, Hash)> add_business_agent_allowlist_entry_with_http_info(account_id, add_business_agent_allowlist_entry_request)

```ruby
begin
  # Allowlist a consumer
  data, status_code, headers = api_instance.add_business_agent_allowlist_entry_with_http_info(account_id, add_business_agent_allowlist_entry_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BusinessAgentAllowlistEntry>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->add_business_agent_allowlist_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **add_business_agent_allowlist_entry_request** | [**AddBusinessAgentAllowlistEntryRequest**](AddBusinessAgentAllowlistEntryRequest.md) |  |  |

### Return type

[**BusinessAgentAllowlistEntry**](BusinessAgentAllowlistEntry.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_business_agent_website

> <BusinessAgentWebsite> add_business_agent_website(account_id, business_agent_website_input)

Add a website to crawl

Meta crawls the site into the agent knowledge and recrawls it periodically; check `crawl_status` and `crawl_error` on read. Not idempotent.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
business_agent_website_input = Zernio::BusinessAgentWebsiteInput.new({url: 'url_example'}) # BusinessAgentWebsiteInput | 

begin
  # Add a website to crawl
  result = api_instance.add_business_agent_website(account_id, business_agent_website_input)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->add_business_agent_website: #{e}"
end
```

#### Using the add_business_agent_website_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BusinessAgentWebsite>, Integer, Hash)> add_business_agent_website_with_http_info(account_id, business_agent_website_input)

```ruby
begin
  # Add a website to crawl
  data, status_code, headers = api_instance.add_business_agent_website_with_http_info(account_id, business_agent_website_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BusinessAgentWebsite>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->add_business_agent_website_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **business_agent_website_input** | [**BusinessAgentWebsiteInput**](BusinessAgentWebsiteInput.md) |  |  |

### Return type

[**BusinessAgentWebsite**](BusinessAgentWebsite.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_business_agent_connector

> <BusinessAgentConnector> create_business_agent_connector(account_id, business_agent_connector_input)

Create a connector

Base URL plus how to authenticate (OAuth client credentials, API key or none). Names are unique per number. Not idempotent.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
business_agent_connector_input = Zernio::BusinessAgentConnectorInput.new({name: 'name_example', base_url: 'base_url_example', auth_type: 'OAUTH2_CLIENT_CREDENTIALS'}) # BusinessAgentConnectorInput | 

begin
  # Create a connector
  result = api_instance.create_business_agent_connector(account_id, business_agent_connector_input)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->create_business_agent_connector: #{e}"
end
```

#### Using the create_business_agent_connector_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BusinessAgentConnector>, Integer, Hash)> create_business_agent_connector_with_http_info(account_id, business_agent_connector_input)

```ruby
begin
  # Create a connector
  data, status_code, headers = api_instance.create_business_agent_connector_with_http_info(account_id, business_agent_connector_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BusinessAgentConnector>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->create_business_agent_connector_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **business_agent_connector_input** | [**BusinessAgentConnectorInput**](BusinessAgentConnectorInput.md) |  |  |

### Return type

[**BusinessAgentConnector**](BusinessAgentConnector.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_business_agent_connector_tool

> <BusinessAgentConnectorTool> create_business_agent_connector_tool(account_id, connector_id, business_agent_connector_tool_input)

Create a connector tool

One operation on the connector, with the request definition Meta uses to build the outbound call from the conversation. Type the body params explicitly. Not idempotent.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
connector_id = 'connector_id_example' # String | 
business_agent_connector_tool_input = Zernio::BusinessAgentConnectorToolInput.new({name: 'name_example', description: 'description_example', request_definition: { key: 3.56}}) # BusinessAgentConnectorToolInput | 

begin
  # Create a connector tool
  result = api_instance.create_business_agent_connector_tool(account_id, connector_id, business_agent_connector_tool_input)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->create_business_agent_connector_tool: #{e}"
end
```

#### Using the create_business_agent_connector_tool_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BusinessAgentConnectorTool>, Integer, Hash)> create_business_agent_connector_tool_with_http_info(account_id, connector_id, business_agent_connector_tool_input)

```ruby
begin
  # Create a connector tool
  data, status_code, headers = api_instance.create_business_agent_connector_tool_with_http_info(account_id, connector_id, business_agent_connector_tool_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BusinessAgentConnectorTool>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->create_business_agent_connector_tool_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **connector_id** | **String** |  |  |
| **business_agent_connector_tool_input** | [**BusinessAgentConnectorToolInput**](BusinessAgentConnectorToolInput.md) |  |  |

### Return type

[**BusinessAgentConnectorTool**](BusinessAgentConnectorTool.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_business_agent_faq

> <BusinessAgentFaq> create_business_agent_faq(account_id, business_agent_faq_input)

Create a FAQ

One specific question per entry; beyond a few hundred entries retrieval quality drops. Not idempotent.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
business_agent_faq_input = Zernio::BusinessAgentFaqInput.new({question: 'question_example', answer: 'answer_example'}) # BusinessAgentFaqInput | 

begin
  # Create a FAQ
  result = api_instance.create_business_agent_faq(account_id, business_agent_faq_input)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->create_business_agent_faq: #{e}"
end
```

#### Using the create_business_agent_faq_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BusinessAgentFaq>, Integer, Hash)> create_business_agent_faq_with_http_info(account_id, business_agent_faq_input)

```ruby
begin
  # Create a FAQ
  data, status_code, headers = api_instance.create_business_agent_faq_with_http_info(account_id, business_agent_faq_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BusinessAgentFaq>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->create_business_agent_faq_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **business_agent_faq_input** | [**BusinessAgentFaqInput**](BusinessAgentFaqInput.md) |  |  |

### Return type

[**BusinessAgentFaq**](BusinessAgentFaq.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_business_agent_skill

> <BusinessAgentSkill> create_business_agent_skill(account_id, business_agent_skill_input)

Create a skill

Behavioral instructions in the brand voice. Reads back `pending_review` until Meta content review passes it. Not idempotent.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
business_agent_skill_input = Zernio::BusinessAgentSkillInput.new({skill: 'skill_example'}) # BusinessAgentSkillInput | 

begin
  # Create a skill
  result = api_instance.create_business_agent_skill(account_id, business_agent_skill_input)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->create_business_agent_skill: #{e}"
end
```

#### Using the create_business_agent_skill_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BusinessAgentSkill>, Integer, Hash)> create_business_agent_skill_with_http_info(account_id, business_agent_skill_input)

```ruby
begin
  # Create a skill
  data, status_code, headers = api_instance.create_business_agent_skill_with_http_info(account_id, business_agent_skill_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BusinessAgentSkill>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->create_business_agent_skill_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **business_agent_skill_input** | [**BusinessAgentSkillInput**](BusinessAgentSkillInput.md) |  |  |

### Return type

[**BusinessAgentSkill**](BusinessAgentSkill.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_business_agent_ui_skill

> <BusinessAgentUiSkill> create_business_agent_ui_skill(account_id, business_agent_ui_skill_input)

Create a UI skill

Tells the agent when to send a rich component (CTA URL button, image, carousel, list, reply buttons, location, Flow) and what to put in it. Not idempotent.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
business_agent_ui_skill_input = Zernio::BusinessAgentUiSkillInput.new({component_type: 'carousel_quick_reply', status: 'enabled', instruction: 'instruction_example'}) # BusinessAgentUiSkillInput | 

begin
  # Create a UI skill
  result = api_instance.create_business_agent_ui_skill(account_id, business_agent_ui_skill_input)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->create_business_agent_ui_skill: #{e}"
end
```

#### Using the create_business_agent_ui_skill_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BusinessAgentUiSkill>, Integer, Hash)> create_business_agent_ui_skill_with_http_info(account_id, business_agent_ui_skill_input)

```ruby
begin
  # Create a UI skill
  data, status_code, headers = api_instance.create_business_agent_ui_skill_with_http_info(account_id, business_agent_ui_skill_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BusinessAgentUiSkill>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->create_business_agent_ui_skill_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **business_agent_ui_skill_input** | [**BusinessAgentUiSkillInput**](BusinessAgentUiSkillInput.md) |  |  |

### Return type

[**BusinessAgentUiSkill**](BusinessAgentUiSkill.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_business_agent_connector

> <InlineObject> delete_business_agent_connector(account_id, connector_id)

Delete a connector

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
connector_id = 'connector_id_example' # String | 

begin
  # Delete a connector
  result = api_instance.delete_business_agent_connector(account_id, connector_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->delete_business_agent_connector: #{e}"
end
```

#### Using the delete_business_agent_connector_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject>, Integer, Hash)> delete_business_agent_connector_with_http_info(account_id, connector_id)

```ruby
begin
  # Delete a connector
  data, status_code, headers = api_instance.delete_business_agent_connector_with_http_info(account_id, connector_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->delete_business_agent_connector_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **connector_id** | **String** |  |  |

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_business_agent_connector_tool

> <InlineObject> delete_business_agent_connector_tool(account_id, connector_id, tool_id)

Delete a connector tool

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
connector_id = 'connector_id_example' # String | 
tool_id = 'tool_id_example' # String | 

begin
  # Delete a connector tool
  result = api_instance.delete_business_agent_connector_tool(account_id, connector_id, tool_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->delete_business_agent_connector_tool: #{e}"
end
```

#### Using the delete_business_agent_connector_tool_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject>, Integer, Hash)> delete_business_agent_connector_tool_with_http_info(account_id, connector_id, tool_id)

```ruby
begin
  # Delete a connector tool
  data, status_code, headers = api_instance.delete_business_agent_connector_tool_with_http_info(account_id, connector_id, tool_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->delete_business_agent_connector_tool_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **connector_id** | **String** |  |  |
| **tool_id** | **String** |  |  |

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_business_agent_faq

> <InlineObject> delete_business_agent_faq(account_id, faq_id)

Delete a FAQ

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
faq_id = 'faq_id_example' # String | 

begin
  # Delete a FAQ
  result = api_instance.delete_business_agent_faq(account_id, faq_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->delete_business_agent_faq: #{e}"
end
```

#### Using the delete_business_agent_faq_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject>, Integer, Hash)> delete_business_agent_faq_with_http_info(account_id, faq_id)

```ruby
begin
  # Delete a FAQ
  data, status_code, headers = api_instance.delete_business_agent_faq_with_http_info(account_id, faq_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->delete_business_agent_faq_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **faq_id** | **String** |  |  |

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_business_agent_file

> <InlineObject> delete_business_agent_file(account_id, file_id)

Delete a knowledge file

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
file_id = 'file_id_example' # String | 

begin
  # Delete a knowledge file
  result = api_instance.delete_business_agent_file(account_id, file_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->delete_business_agent_file: #{e}"
end
```

#### Using the delete_business_agent_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject>, Integer, Hash)> delete_business_agent_file_with_http_info(account_id, file_id)

```ruby
begin
  # Delete a knowledge file
  data, status_code, headers = api_instance.delete_business_agent_file_with_http_info(account_id, file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->delete_business_agent_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **file_id** | **String** |  |  |

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_business_agent_skill

> <InlineObject> delete_business_agent_skill(account_id, skill_id)

Delete a skill

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
skill_id = 'skill_id_example' # String | 

begin
  # Delete a skill
  result = api_instance.delete_business_agent_skill(account_id, skill_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->delete_business_agent_skill: #{e}"
end
```

#### Using the delete_business_agent_skill_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject>, Integer, Hash)> delete_business_agent_skill_with_http_info(account_id, skill_id)

```ruby
begin
  # Delete a skill
  data, status_code, headers = api_instance.delete_business_agent_skill_with_http_info(account_id, skill_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->delete_business_agent_skill_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **skill_id** | **String** |  |  |

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_business_agent_ui_skill

> <InlineObject> delete_business_agent_ui_skill(account_id, ui_skill_id)

Delete a UI skill

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
ui_skill_id = 'ui_skill_id_example' # String | 

begin
  # Delete a UI skill
  result = api_instance.delete_business_agent_ui_skill(account_id, ui_skill_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->delete_business_agent_ui_skill: #{e}"
end
```

#### Using the delete_business_agent_ui_skill_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject>, Integer, Hash)> delete_business_agent_ui_skill_with_http_info(account_id, ui_skill_id)

```ruby
begin
  # Delete a UI skill
  data, status_code, headers = api_instance.delete_business_agent_ui_skill_with_http_info(account_id, ui_skill_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->delete_business_agent_ui_skill_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **ui_skill_id** | **String** |  |  |

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_business_agent_website

> <InlineObject> delete_business_agent_website(account_id, website_id)

Remove a crawled website

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
website_id = 'website_id_example' # String | 

begin
  # Remove a crawled website
  result = api_instance.delete_business_agent_website(account_id, website_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->delete_business_agent_website: #{e}"
end
```

#### Using the delete_business_agent_website_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject>, Integer, Hash)> delete_business_agent_website_with_http_info(account_id, website_id)

```ruby
begin
  # Remove a crawled website
  data, status_code, headers = api_instance.delete_business_agent_website_with_http_info(account_id, website_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->delete_business_agent_website_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **website_id** | **String** |  |  |

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_business_agent_budget

> <GetBusinessAgentBudget200Response> get_business_agent_budget(account_id)

Get usage budgets

Caps over rolling windows for the Business Manager that owns the number. An empty list means unlimited.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).

begin
  # Get usage budgets
  result = api_instance.get_business_agent_budget(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->get_business_agent_budget: #{e}"
end
```

#### Using the get_business_agent_budget_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBusinessAgentBudget200Response>, Integer, Hash)> get_business_agent_budget_with_http_info(account_id)

```ruby
begin
  # Get usage budgets
  data, status_code, headers = api_instance.get_business_agent_budget_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBusinessAgentBudget200Response>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->get_business_agent_budget_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |

### Return type

[**GetBusinessAgentBudget200Response**](GetBusinessAgentBudget200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_business_agent_business_information

> <BusinessAgentBusinessInformation> get_business_agent_business_information(account_id)

Get business information

Payment methods, return policy, how to buy, shipping, description and contact details the agent answers from. Empty values until configured.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).

begin
  # Get business information
  result = api_instance.get_business_agent_business_information(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->get_business_agent_business_information: #{e}"
end
```

#### Using the get_business_agent_business_information_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BusinessAgentBusinessInformation>, Integer, Hash)> get_business_agent_business_information_with_http_info(account_id)

```ruby
begin
  # Get business information
  data, status_code, headers = api_instance.get_business_agent_business_information_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BusinessAgentBusinessInformation>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->get_business_agent_business_information_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |

### Return type

[**BusinessAgentBusinessInformation**](BusinessAgentBusinessInformation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_business_agent_connector

> <BusinessAgentConnector> get_business_agent_connector(account_id, connector_id)

Get a connector

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
connector_id = 'connector_id_example' # String | 

begin
  # Get a connector
  result = api_instance.get_business_agent_connector(account_id, connector_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->get_business_agent_connector: #{e}"
end
```

#### Using the get_business_agent_connector_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BusinessAgentConnector>, Integer, Hash)> get_business_agent_connector_with_http_info(account_id, connector_id)

```ruby
begin
  # Get a connector
  data, status_code, headers = api_instance.get_business_agent_connector_with_http_info(account_id, connector_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BusinessAgentConnector>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->get_business_agent_connector_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **connector_id** | **String** |  |  |

### Return type

[**BusinessAgentConnector**](BusinessAgentConnector.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_business_agent_connector_logs

> <GetBusinessAgentConnectorLogs200Response> get_business_agent_connector_logs(account_id, connector_id, opts)

Get connector failure logs

Third-party failures over the last 7 days (window at most 7 days, default the last 24 hours). Each entry carries `failure_code_name` and `error_message`.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
connector_id = 'connector_id_example' # String | 
opts = {
  start_time: 56, # Integer | Unix seconds.
  end_time: 56, # Integer | Unix seconds.
  limit: 56, # Integer | 
  tool_id: 'tool_id_example', # String | 
  include_stats: true, # Boolean | Add success rate and latency percentiles.
  summary_only: true, # Boolean | Aggregate failure patterns instead of entries.
  top_n: 56 # Integer | 
}

begin
  # Get connector failure logs
  result = api_instance.get_business_agent_connector_logs(account_id, connector_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->get_business_agent_connector_logs: #{e}"
end
```

#### Using the get_business_agent_connector_logs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBusinessAgentConnectorLogs200Response>, Integer, Hash)> get_business_agent_connector_logs_with_http_info(account_id, connector_id, opts)

```ruby
begin
  # Get connector failure logs
  data, status_code, headers = api_instance.get_business_agent_connector_logs_with_http_info(account_id, connector_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBusinessAgentConnectorLogs200Response>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->get_business_agent_connector_logs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **connector_id** | **String** |  |  |
| **start_time** | **Integer** | Unix seconds. | [optional] |
| **end_time** | **Integer** | Unix seconds. | [optional] |
| **limit** | **Integer** |  | [optional] |
| **tool_id** | **String** |  | [optional] |
| **include_stats** | **Boolean** | Add success rate and latency percentiles. | [optional] |
| **summary_only** | **Boolean** | Aggregate failure patterns instead of entries. | [optional] |
| **top_n** | **Integer** |  | [optional] |

### Return type

[**GetBusinessAgentConnectorLogs200Response**](GetBusinessAgentConnectorLogs200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_business_agent_connector_tool

> <BusinessAgentConnectorTool> get_business_agent_connector_tool(account_id, connector_id, tool_id)

Get a connector tool

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
connector_id = 'connector_id_example' # String | 
tool_id = 'tool_id_example' # String | 

begin
  # Get a connector tool
  result = api_instance.get_business_agent_connector_tool(account_id, connector_id, tool_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->get_business_agent_connector_tool: #{e}"
end
```

#### Using the get_business_agent_connector_tool_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BusinessAgentConnectorTool>, Integer, Hash)> get_business_agent_connector_tool_with_http_info(account_id, connector_id, tool_id)

```ruby
begin
  # Get a connector tool
  data, status_code, headers = api_instance.get_business_agent_connector_tool_with_http_info(account_id, connector_id, tool_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BusinessAgentConnectorTool>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->get_business_agent_connector_tool_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **connector_id** | **String** |  |  |
| **tool_id** | **String** |  |  |

### Return type

[**BusinessAgentConnectorTool**](BusinessAgentConnectorTool.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_business_agent_event

> <BusinessAgentEventStatus> get_business_agent_event(account_id, event_id)

Get a business event status

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
event_id = 'event_id_example' # String | 

begin
  # Get a business event status
  result = api_instance.get_business_agent_event(account_id, event_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->get_business_agent_event: #{e}"
end
```

#### Using the get_business_agent_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BusinessAgentEventStatus>, Integer, Hash)> get_business_agent_event_with_http_info(account_id, event_id)

```ruby
begin
  # Get a business event status
  data, status_code, headers = api_instance.get_business_agent_event_with_http_info(account_id, event_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BusinessAgentEventStatus>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->get_business_agent_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **event_id** | **String** |  |  |

### Return type

[**BusinessAgentEventStatus**](BusinessAgentEventStatus.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_business_agent_faq

> <BusinessAgentFaq> get_business_agent_faq(account_id, faq_id)

Get a FAQ

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
faq_id = 'faq_id_example' # String | 

begin
  # Get a FAQ
  result = api_instance.get_business_agent_faq(account_id, faq_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->get_business_agent_faq: #{e}"
end
```

#### Using the get_business_agent_faq_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BusinessAgentFaq>, Integer, Hash)> get_business_agent_faq_with_http_info(account_id, faq_id)

```ruby
begin
  # Get a FAQ
  data, status_code, headers = api_instance.get_business_agent_faq_with_http_info(account_id, faq_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BusinessAgentFaq>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->get_business_agent_faq_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **faq_id** | **String** |  |  |

### Return type

[**BusinessAgentFaq**](BusinessAgentFaq.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_business_agent_file

> <BusinessAgentKnowledgeFile> get_business_agent_file(account_id, file_id)

Get a knowledge file

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
file_id = 'file_id_example' # String | 

begin
  # Get a knowledge file
  result = api_instance.get_business_agent_file(account_id, file_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->get_business_agent_file: #{e}"
end
```

#### Using the get_business_agent_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BusinessAgentKnowledgeFile>, Integer, Hash)> get_business_agent_file_with_http_info(account_id, file_id)

```ruby
begin
  # Get a knowledge file
  data, status_code, headers = api_instance.get_business_agent_file_with_http_info(account_id, file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BusinessAgentKnowledgeFile>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->get_business_agent_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **file_id** | **String** |  |  |

### Return type

[**BusinessAgentKnowledgeFile**](BusinessAgentKnowledgeFile.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_business_agent_skill

> <BusinessAgentSkill> get_business_agent_skill(account_id, skill_id)

Get a skill

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
skill_id = 'skill_id_example' # String | 

begin
  # Get a skill
  result = api_instance.get_business_agent_skill(account_id, skill_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->get_business_agent_skill: #{e}"
end
```

#### Using the get_business_agent_skill_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BusinessAgentSkill>, Integer, Hash)> get_business_agent_skill_with_http_info(account_id, skill_id)

```ruby
begin
  # Get a skill
  data, status_code, headers = api_instance.get_business_agent_skill_with_http_info(account_id, skill_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BusinessAgentSkill>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->get_business_agent_skill_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **skill_id** | **String** |  |  |

### Return type

[**BusinessAgentSkill**](BusinessAgentSkill.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_business_agent_status

> <BusinessAgentStatus> get_business_agent_status(account_id)

Get agent setup status

One read that says where the merchant is: whether the number is eligible, whether the Meta Business Agent terms are accepted, whether an agent exists, whether it is on, and its settings. `manualSteps` lists what Zernio can verify is still pending (accepting the terms in WhatsApp Manager); `unverifiedSteps` lists what Meta exposes no state for (the payment method in Billing Hub). Never fails for those pre-setup states; it reports them as flags. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).

begin
  # Get agent setup status
  result = api_instance.get_business_agent_status(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->get_business_agent_status: #{e}"
end
```

#### Using the get_business_agent_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BusinessAgentStatus>, Integer, Hash)> get_business_agent_status_with_http_info(account_id)

```ruby
begin
  # Get agent setup status
  data, status_code, headers = api_instance.get_business_agent_status_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BusinessAgentStatus>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->get_business_agent_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |

### Return type

[**BusinessAgentStatus**](BusinessAgentStatus.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_business_agent_ui_skill

> <BusinessAgentUiSkill> get_business_agent_ui_skill(account_id, ui_skill_id)

Get a UI skill

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
ui_skill_id = 'ui_skill_id_example' # String | 

begin
  # Get a UI skill
  result = api_instance.get_business_agent_ui_skill(account_id, ui_skill_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->get_business_agent_ui_skill: #{e}"
end
```

#### Using the get_business_agent_ui_skill_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BusinessAgentUiSkill>, Integer, Hash)> get_business_agent_ui_skill_with_http_info(account_id, ui_skill_id)

```ruby
begin
  # Get a UI skill
  data, status_code, headers = api_instance.get_business_agent_ui_skill_with_http_info(account_id, ui_skill_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BusinessAgentUiSkill>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->get_business_agent_ui_skill_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **ui_skill_id** | **String** |  |  |

### Return type

[**BusinessAgentUiSkill**](BusinessAgentUiSkill.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_business_agent_website

> <BusinessAgentWebsite> get_business_agent_website(account_id, website_id)

Get a crawled website

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
website_id = 'website_id_example' # String | 

begin
  # Get a crawled website
  result = api_instance.get_business_agent_website(account_id, website_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->get_business_agent_website: #{e}"
end
```

#### Using the get_business_agent_website_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BusinessAgentWebsite>, Integer, Hash)> get_business_agent_website_with_http_info(account_id, website_id)

```ruby
begin
  # Get a crawled website
  data, status_code, headers = api_instance.get_business_agent_website_with_http_info(account_id, website_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BusinessAgentWebsite>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->get_business_agent_website_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **website_id** | **String** |  |  |

### Return type

[**BusinessAgentWebsite**](BusinessAgentWebsite.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_business_agent_allowlist

> <ListBusinessAgentAllowlist200Response> list_business_agent_allowlist(account_id)

List allowlisted consumers

Consumers the agent answers while `ai_audience` is ALLOWLISTED_ONLY.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).

begin
  # List allowlisted consumers
  result = api_instance.list_business_agent_allowlist(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->list_business_agent_allowlist: #{e}"
end
```

#### Using the list_business_agent_allowlist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBusinessAgentAllowlist200Response>, Integer, Hash)> list_business_agent_allowlist_with_http_info(account_id)

```ruby
begin
  # List allowlisted consumers
  data, status_code, headers = api_instance.list_business_agent_allowlist_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBusinessAgentAllowlist200Response>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->list_business_agent_allowlist_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |

### Return type

[**ListBusinessAgentAllowlist200Response**](ListBusinessAgentAllowlist200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_business_agent_connector_tools

> <ListBusinessAgentConnectorTools200Response> list_business_agent_connector_tools(account_id, connector_id)

List connector tools

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
connector_id = 'connector_id_example' # String | 

begin
  # List connector tools
  result = api_instance.list_business_agent_connector_tools(account_id, connector_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->list_business_agent_connector_tools: #{e}"
end
```

#### Using the list_business_agent_connector_tools_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBusinessAgentConnectorTools200Response>, Integer, Hash)> list_business_agent_connector_tools_with_http_info(account_id, connector_id)

```ruby
begin
  # List connector tools
  data, status_code, headers = api_instance.list_business_agent_connector_tools_with_http_info(account_id, connector_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBusinessAgentConnectorTools200Response>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->list_business_agent_connector_tools_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **connector_id** | **String** |  |  |

### Return type

[**ListBusinessAgentConnectorTools200Response**](ListBusinessAgentConnectorTools200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_business_agent_connectors

> <ListBusinessAgentConnectors200Response> list_business_agent_connectors(account_id)

List connectors

External APIs the agent may call. `connection_status` says whether Meta can currently reach each one.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).

begin
  # List connectors
  result = api_instance.list_business_agent_connectors(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->list_business_agent_connectors: #{e}"
end
```

#### Using the list_business_agent_connectors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBusinessAgentConnectors200Response>, Integer, Hash)> list_business_agent_connectors_with_http_info(account_id)

```ruby
begin
  # List connectors
  data, status_code, headers = api_instance.list_business_agent_connectors_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBusinessAgentConnectors200Response>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->list_business_agent_connectors_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |

### Return type

[**ListBusinessAgentConnectors200Response**](ListBusinessAgentConnectors200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_business_agent_faqs

> <ListBusinessAgentFaqs200Response> list_business_agent_faqs(account_id)

List FAQs

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).

begin
  # List FAQs
  result = api_instance.list_business_agent_faqs(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->list_business_agent_faqs: #{e}"
end
```

#### Using the list_business_agent_faqs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBusinessAgentFaqs200Response>, Integer, Hash)> list_business_agent_faqs_with_http_info(account_id)

```ruby
begin
  # List FAQs
  data, status_code, headers = api_instance.list_business_agent_faqs_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBusinessAgentFaqs200Response>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->list_business_agent_faqs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |

### Return type

[**ListBusinessAgentFaqs200Response**](ListBusinessAgentFaqs200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_business_agent_files

> <ListBusinessAgentFiles200Response> list_business_agent_files(account_id)

List knowledge files

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).

begin
  # List knowledge files
  result = api_instance.list_business_agent_files(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->list_business_agent_files: #{e}"
end
```

#### Using the list_business_agent_files_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBusinessAgentFiles200Response>, Integer, Hash)> list_business_agent_files_with_http_info(account_id)

```ruby
begin
  # List knowledge files
  data, status_code, headers = api_instance.list_business_agent_files_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBusinessAgentFiles200Response>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->list_business_agent_files_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |

### Return type

[**ListBusinessAgentFiles200Response**](ListBusinessAgentFiles200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_business_agent_settings

> <ListBusinessAgentSettings200Response> list_business_agent_settings(account_id, opts)

List agent settings

Settings of every agent configured on the number (normally one). Pass `agentId` to read one.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
opts = {
  agent_id: 'agent_id_example' # String | 
}

begin
  # List agent settings
  result = api_instance.list_business_agent_settings(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->list_business_agent_settings: #{e}"
end
```

#### Using the list_business_agent_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBusinessAgentSettings200Response>, Integer, Hash)> list_business_agent_settings_with_http_info(account_id, opts)

```ruby
begin
  # List agent settings
  data, status_code, headers = api_instance.list_business_agent_settings_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBusinessAgentSettings200Response>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->list_business_agent_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **agent_id** | **String** |  | [optional] |

### Return type

[**ListBusinessAgentSettings200Response**](ListBusinessAgentSettings200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_business_agent_skills

> <ListBusinessAgentSkills200Response> list_business_agent_skills(account_id)

List skills

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).

begin
  # List skills
  result = api_instance.list_business_agent_skills(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->list_business_agent_skills: #{e}"
end
```

#### Using the list_business_agent_skills_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBusinessAgentSkills200Response>, Integer, Hash)> list_business_agent_skills_with_http_info(account_id)

```ruby
begin
  # List skills
  data, status_code, headers = api_instance.list_business_agent_skills_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBusinessAgentSkills200Response>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->list_business_agent_skills_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |

### Return type

[**ListBusinessAgentSkills200Response**](ListBusinessAgentSkills200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_business_agent_ui_skills

> <ListBusinessAgentUiSkills200Response> list_business_agent_ui_skills(account_id, opts)

List UI skills

Cursor paged; follow `paging.cursors.after` until `paging.next` is absent.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
opts = {
  before: 'before_example', # String | 
  after: 'after_example', # String | 
  limit: 56 # Integer | 
}

begin
  # List UI skills
  result = api_instance.list_business_agent_ui_skills(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->list_business_agent_ui_skills: #{e}"
end
```

#### Using the list_business_agent_ui_skills_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBusinessAgentUiSkills200Response>, Integer, Hash)> list_business_agent_ui_skills_with_http_info(account_id, opts)

```ruby
begin
  # List UI skills
  data, status_code, headers = api_instance.list_business_agent_ui_skills_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBusinessAgentUiSkills200Response>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->list_business_agent_ui_skills_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **before** | **String** |  | [optional] |
| **after** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional] |

### Return type

[**ListBusinessAgentUiSkills200Response**](ListBusinessAgentUiSkills200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_business_agent_websites

> <ListBusinessAgentWebsites200Response> list_business_agent_websites(account_id)

List crawled websites

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).

begin
  # List crawled websites
  result = api_instance.list_business_agent_websites(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->list_business_agent_websites: #{e}"
end
```

#### Using the list_business_agent_websites_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBusinessAgentWebsites200Response>, Integer, Hash)> list_business_agent_websites_with_http_info(account_id)

```ruby
begin
  # List crawled websites
  data, status_code, headers = api_instance.list_business_agent_websites_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBusinessAgentWebsites200Response>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->list_business_agent_websites_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |

### Return type

[**ListBusinessAgentWebsites200Response**](ListBusinessAgentWebsites200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## onboard_business_agent

> <OnboardBusinessAgent201Response> onboard_business_agent(account_id)

Create the agent

Creates the Meta Business Agent on the number and schedules Meta's data preparation. Requires the terms to be accepted; eligibility is checked first and an ineligible number answers 403 `business_agent_not_eligible`. Not idempotent: call it once, then configure knowledge and skills, then enable it through the settings. Configuration calls made in the first minute can still answer `business_agent_not_found` while Meta prepares the workspace. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).

begin
  # Create the agent
  result = api_instance.onboard_business_agent(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->onboard_business_agent: #{e}"
end
```

#### Using the onboard_business_agent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OnboardBusinessAgent201Response>, Integer, Hash)> onboard_business_agent_with_http_info(account_id)

```ruby
begin
  # Create the agent
  data, status_code, headers = api_instance.onboard_business_agent_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OnboardBusinessAgent201Response>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->onboard_business_agent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |

### Return type

[**OnboardBusinessAgent201Response**](OnboardBusinessAgent201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_business_agent_evals

> Hash&lt;String, Object&gt; read_business_agent_evals(account_id, opts)

Read evaluation data

Without query parameters, lists the evaluation scenarios (`eval_cases`). With `jobId`, polls a run started with POST. With `summaryIds`, returns the aggregated insight reports. With `evalIds`, returns per-conversation evaluation details. One of the three at a time. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
opts = {
  job_id: 'job_id_example', # String | 
  summary_ids: 'summary_ids_example', # String | Comma-separated summary ids.
  eval_ids: 'eval_ids_example' # String | Comma-separated evaluation ids.
}

begin
  # Read evaluation data
  result = api_instance.read_business_agent_evals(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->read_business_agent_evals: #{e}"
end
```

#### Using the read_business_agent_evals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> read_business_agent_evals_with_http_info(account_id, opts)

```ruby
begin
  # Read evaluation data
  data, status_code, headers = api_instance.read_business_agent_evals_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->read_business_agent_evals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **job_id** | **String** |  | [optional] |
| **summary_ids** | **String** | Comma-separated summary ids. | [optional] |
| **eval_ids** | **String** | Comma-separated evaluation ids. | [optional] |

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## refresh_business_agent_connector_tools

> <BusinessAgentConnector> refresh_business_agent_connector_tools(account_id, connector_id)

Refresh MCP connector tools

Re-discovers the tools of an MCP connector. A failed discovery keeps the previous tool set and reports an ERROR sync status inside a 200.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
connector_id = 'connector_id_example' # String | 

begin
  # Refresh MCP connector tools
  result = api_instance.refresh_business_agent_connector_tools(account_id, connector_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->refresh_business_agent_connector_tools: #{e}"
end
```

#### Using the refresh_business_agent_connector_tools_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BusinessAgentConnector>, Integer, Hash)> refresh_business_agent_connector_tools_with_http_info(account_id, connector_id)

```ruby
begin
  # Refresh MCP connector tools
  data, status_code, headers = api_instance.refresh_business_agent_connector_tools_with_http_info(account_id, connector_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BusinessAgentConnector>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->refresh_business_agent_connector_tools_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **connector_id** | **String** |  |  |

### Return type

[**BusinessAgentConnector**](BusinessAgentConnector.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_business_agent_allowlist_entry

> <InlineObject> remove_business_agent_allowlist_entry(account_id, entry_id)

Remove an allowlisted consumer

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
entry_id = 'entry_id_example' # String | 

begin
  # Remove an allowlisted consumer
  result = api_instance.remove_business_agent_allowlist_entry(account_id, entry_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->remove_business_agent_allowlist_entry: #{e}"
end
```

#### Using the remove_business_agent_allowlist_entry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject>, Integer, Hash)> remove_business_agent_allowlist_entry_with_http_info(account_id, entry_id)

```ruby
begin
  # Remove an allowlisted consumer
  data, status_code, headers = api_instance.remove_business_agent_allowlist_entry_with_http_info(account_id, entry_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->remove_business_agent_allowlist_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **entry_id** | **String** |  |  |

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## replace_business_agent_budget

> <GetBusinessAgentBudget200Response> replace_business_agent_budget(account_id, get_business_agent_budget200_response)

Replace usage budgets

The full desired set: budgets left out are removed, an empty list returns to unlimited. Pass `budget_id` to edit one in place. When a cap is hit the agent finishes its turn, stops answering and hands the thread to a human until the window rolls over.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
get_business_agent_budget200_response = Zernio::GetBusinessAgentBudget200Response.new({budgets: [Zernio::BusinessAgentBudget.new({unit_type: 'token', time_window: 'one_day', max_budget: 37})]}) # GetBusinessAgentBudget200Response | 

begin
  # Replace usage budgets
  result = api_instance.replace_business_agent_budget(account_id, get_business_agent_budget200_response)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->replace_business_agent_budget: #{e}"
end
```

#### Using the replace_business_agent_budget_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBusinessAgentBudget200Response>, Integer, Hash)> replace_business_agent_budget_with_http_info(account_id, get_business_agent_budget200_response)

```ruby
begin
  # Replace usage budgets
  data, status_code, headers = api_instance.replace_business_agent_budget_with_http_info(account_id, get_business_agent_budget200_response)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBusinessAgentBudget200Response>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->replace_business_agent_budget_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **get_business_agent_budget200_response** | [**GetBusinessAgentBudget200Response**](GetBusinessAgentBudget200Response.md) |  |  |

### Return type

[**GetBusinessAgentBudget200Response**](GetBusinessAgentBudget200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## replace_business_agent_business_information

> <BusinessAgentBusinessInformation> replace_business_agent_business_information(account_id, business_agent_business_information)

Replace business information

Full replacement: every field you send overwrites the stored value; fields you omit are cleared.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
business_agent_business_information = Zernio::BusinessAgentBusinessInformation.new # BusinessAgentBusinessInformation | 

begin
  # Replace business information
  result = api_instance.replace_business_agent_business_information(account_id, business_agent_business_information)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->replace_business_agent_business_information: #{e}"
end
```

#### Using the replace_business_agent_business_information_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BusinessAgentBusinessInformation>, Integer, Hash)> replace_business_agent_business_information_with_http_info(account_id, business_agent_business_information)

```ruby
begin
  # Replace business information
  data, status_code, headers = api_instance.replace_business_agent_business_information_with_http_info(account_id, business_agent_business_information)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BusinessAgentBusinessInformation>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->replace_business_agent_business_information_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **business_agent_business_information** | [**BusinessAgentBusinessInformation**](BusinessAgentBusinessInformation.md) |  |  |

### Return type

[**BusinessAgentBusinessInformation**](BusinessAgentBusinessInformation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## reset_business_agent_business_information

> <InlineObject> reset_business_agent_business_information(account_id)

Reset business information

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).

begin
  # Reset business information
  result = api_instance.reset_business_agent_business_information(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->reset_business_agent_business_information: #{e}"
end
```

#### Using the reset_business_agent_business_information_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InlineObject>, Integer, Hash)> reset_business_agent_business_information_with_http_info(account_id)

```ruby
begin
  # Reset business information
  data, status_code, headers = api_instance.reset_business_agent_business_information_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InlineObject>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->reset_business_agent_business_information_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |

### Return type

[**InlineObject**](InlineObject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## run_business_agent_connector_tool

> <RunBusinessAgentConnectorTool200Response> run_business_agent_connector_tool(account_id, connector_id, tool_id, run_business_agent_connector_tool_request)

Run a connector tool once

Executes the tool against the merchant API and returns the raw upstream result, to check a connector before the agent relies on it.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
connector_id = 'connector_id_example' # String | 
tool_id = 'tool_id_example' # String | 
run_business_agent_connector_tool_request = Zernio::RunBusinessAgentConnectorToolRequest.new({input: 'input_example'}) # RunBusinessAgentConnectorToolRequest | 

begin
  # Run a connector tool once
  result = api_instance.run_business_agent_connector_tool(account_id, connector_id, tool_id, run_business_agent_connector_tool_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->run_business_agent_connector_tool: #{e}"
end
```

#### Using the run_business_agent_connector_tool_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RunBusinessAgentConnectorTool200Response>, Integer, Hash)> run_business_agent_connector_tool_with_http_info(account_id, connector_id, tool_id, run_business_agent_connector_tool_request)

```ruby
begin
  # Run a connector tool once
  data, status_code, headers = api_instance.run_business_agent_connector_tool_with_http_info(account_id, connector_id, tool_id, run_business_agent_connector_tool_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RunBusinessAgentConnectorTool200Response>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->run_business_agent_connector_tool_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **connector_id** | **String** |  |  |
| **tool_id** | **String** |  |  |
| **run_business_agent_connector_tool_request** | [**RunBusinessAgentConnectorToolRequest**](RunBusinessAgentConnectorToolRequest.md) |  |  |

### Return type

[**RunBusinessAgentConnectorTool200Response**](RunBusinessAgentConnectorTool200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_business_agent_event

> <SendBusinessAgentEvent202Response> send_business_agent_event(account_id, send_business_agent_event_request)

Send a business event

Tell the agent something happened in your systems (order shipped, document verified) so it messages the consumer about it. The consumer must already have a conversation with the number. Answers 202 with the event id; poll it for the outcome.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
send_business_agent_event_request = Zernio::SendBusinessAgentEventRequest.new({to: '+34600000000', type: 'order_shipped', description: 'description_example', payload: 'payload_example'}) # SendBusinessAgentEventRequest | 

begin
  # Send a business event
  result = api_instance.send_business_agent_event(account_id, send_business_agent_event_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->send_business_agent_event: #{e}"
end
```

#### Using the send_business_agent_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendBusinessAgentEvent202Response>, Integer, Hash)> send_business_agent_event_with_http_info(account_id, send_business_agent_event_request)

```ruby
begin
  # Send a business event
  data, status_code, headers = api_instance.send_business_agent_event_with_http_info(account_id, send_business_agent_event_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendBusinessAgentEvent202Response>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->send_business_agent_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **send_business_agent_event_request** | [**SendBusinessAgentEventRequest**](SendBusinessAgentEventRequest.md) |  |  |

### Return type

[**SendBusinessAgentEvent202Response**](SendBusinessAgentEvent202Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_business_agent_test_message

> <BusinessAgentTestMessageResponse> send_business_agent_test_message(account_id, send_business_agent_test_message_request)

Send a test message

Runs the message through the full agent pipeline in Meta sandbox with no WhatsApp user and no token billing. Pass back `conversationId` to continue a thread. Meta rate-limits it per number per hour.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
send_business_agent_test_message_request = Zernio::SendBusinessAgentTestMessageRequest.new({message: 'message_example'}) # SendBusinessAgentTestMessageRequest | 

begin
  # Send a test message
  result = api_instance.send_business_agent_test_message(account_id, send_business_agent_test_message_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->send_business_agent_test_message: #{e}"
end
```

#### Using the send_business_agent_test_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BusinessAgentTestMessageResponse>, Integer, Hash)> send_business_agent_test_message_with_http_info(account_id, send_business_agent_test_message_request)

```ruby
begin
  # Send a test message
  data, status_code, headers = api_instance.send_business_agent_test_message_with_http_info(account_id, send_business_agent_test_message_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BusinessAgentTestMessageResponse>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->send_business_agent_test_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **send_business_agent_test_message_request** | [**SendBusinessAgentTestMessageRequest**](SendBusinessAgentTestMessageRequest.md) |  |  |

### Return type

[**BusinessAgentTestMessageResponse**](BusinessAgentTestMessageResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_business_agent_connector_credentials

> <BusinessAgentConnector> set_business_agent_connector_credentials(account_id, connector_id, set_business_agent_connector_credentials_request)

Set connector credentials

Set or rotate the connector's credentials in place: `kind: api_key`, `kind: oauth` (client credentials) or `kind: certificate` (mTLS client certificate). Meta has no call that removes a credential layer; change the connector's `auth_type` or delete it instead. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
connector_id = 'connector_id_example' # String | 
set_business_agent_connector_credentials_request = Zernio::SetBusinessAgentConnectorCredentialsRequestOneOf.new({kind: 'api_key', api_key_config: Zernio::BusinessAgentApiKeyConfig.new}) # SetBusinessAgentConnectorCredentialsRequest | 

begin
  # Set connector credentials
  result = api_instance.set_business_agent_connector_credentials(account_id, connector_id, set_business_agent_connector_credentials_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->set_business_agent_connector_credentials: #{e}"
end
```

#### Using the set_business_agent_connector_credentials_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BusinessAgentConnector>, Integer, Hash)> set_business_agent_connector_credentials_with_http_info(account_id, connector_id, set_business_agent_connector_credentials_request)

```ruby
begin
  # Set connector credentials
  data, status_code, headers = api_instance.set_business_agent_connector_credentials_with_http_info(account_id, connector_id, set_business_agent_connector_credentials_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BusinessAgentConnector>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->set_business_agent_connector_credentials_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **connector_id** | **String** |  |  |
| **set_business_agent_connector_credentials_request** | [**SetBusinessAgentConnectorCredentialsRequest**](SetBusinessAgentConnectorCredentialsRequest.md) |  |  |

### Return type

[**BusinessAgentConnector**](BusinessAgentConnector.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## start_business_agent_eval_run

> <StartBusinessAgentEvalRun202Response> start_business_agent_eval_run(account_id, start_business_agent_eval_run_request)

Start an evaluation run

Simulates the given scenarios against the agent and scores them. Answers 202 with a `job_id` to poll with GET.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
start_business_agent_eval_run_request = Zernio::StartBusinessAgentEvalRunRequest.new({eval_case_ids: ['eval_case_ids_example']}) # StartBusinessAgentEvalRunRequest | 

begin
  # Start an evaluation run
  result = api_instance.start_business_agent_eval_run(account_id, start_business_agent_eval_run_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->start_business_agent_eval_run: #{e}"
end
```

#### Using the start_business_agent_eval_run_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StartBusinessAgentEvalRun202Response>, Integer, Hash)> start_business_agent_eval_run_with_http_info(account_id, start_business_agent_eval_run_request)

```ruby
begin
  # Start an evaluation run
  data, status_code, headers = api_instance.start_business_agent_eval_run_with_http_info(account_id, start_business_agent_eval_run_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StartBusinessAgentEvalRun202Response>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->start_business_agent_eval_run_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **start_business_agent_eval_run_request** | [**StartBusinessAgentEvalRunRequest**](StartBusinessAgentEvalRunRequest.md) |  |  |

### Return type

[**StartBusinessAgentEvalRun202Response**](StartBusinessAgentEvalRun202Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_business_agent_connector

> <BusinessAgentConnector> update_business_agent_connector(account_id, connector_id, business_agent_connector_input)

Update a connector

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
connector_id = 'connector_id_example' # String | 
business_agent_connector_input = Zernio::BusinessAgentConnectorInput.new({name: 'name_example', base_url: 'base_url_example', auth_type: 'OAUTH2_CLIENT_CREDENTIALS'}) # BusinessAgentConnectorInput | 

begin
  # Update a connector
  result = api_instance.update_business_agent_connector(account_id, connector_id, business_agent_connector_input)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->update_business_agent_connector: #{e}"
end
```

#### Using the update_business_agent_connector_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BusinessAgentConnector>, Integer, Hash)> update_business_agent_connector_with_http_info(account_id, connector_id, business_agent_connector_input)

```ruby
begin
  # Update a connector
  data, status_code, headers = api_instance.update_business_agent_connector_with_http_info(account_id, connector_id, business_agent_connector_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BusinessAgentConnector>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->update_business_agent_connector_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **connector_id** | **String** |  |  |
| **business_agent_connector_input** | [**BusinessAgentConnectorInput**](BusinessAgentConnectorInput.md) |  |  |

### Return type

[**BusinessAgentConnector**](BusinessAgentConnector.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_business_agent_connector_tool

> <BusinessAgentConnectorTool> update_business_agent_connector_tool(account_id, connector_id, tool_id, business_agent_connector_tool_input)

Update a connector tool

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
connector_id = 'connector_id_example' # String | 
tool_id = 'tool_id_example' # String | 
business_agent_connector_tool_input = Zernio::BusinessAgentConnectorToolInput.new({name: 'name_example', description: 'description_example', request_definition: { key: 3.56}}) # BusinessAgentConnectorToolInput | 

begin
  # Update a connector tool
  result = api_instance.update_business_agent_connector_tool(account_id, connector_id, tool_id, business_agent_connector_tool_input)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->update_business_agent_connector_tool: #{e}"
end
```

#### Using the update_business_agent_connector_tool_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BusinessAgentConnectorTool>, Integer, Hash)> update_business_agent_connector_tool_with_http_info(account_id, connector_id, tool_id, business_agent_connector_tool_input)

```ruby
begin
  # Update a connector tool
  data, status_code, headers = api_instance.update_business_agent_connector_tool_with_http_info(account_id, connector_id, tool_id, business_agent_connector_tool_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BusinessAgentConnectorTool>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->update_business_agent_connector_tool_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **connector_id** | **String** |  |  |
| **tool_id** | **String** |  |  |
| **business_agent_connector_tool_input** | [**BusinessAgentConnectorToolInput**](BusinessAgentConnectorToolInput.md) |  |  |

### Return type

[**BusinessAgentConnectorTool**](BusinessAgentConnectorTool.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_business_agent_faq

> <BusinessAgentFaq> update_business_agent_faq(account_id, faq_id, business_agent_faq_input)

Update a FAQ

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
faq_id = 'faq_id_example' # String | 
business_agent_faq_input = Zernio::BusinessAgentFaqInput.new({question: 'question_example', answer: 'answer_example'}) # BusinessAgentFaqInput | 

begin
  # Update a FAQ
  result = api_instance.update_business_agent_faq(account_id, faq_id, business_agent_faq_input)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->update_business_agent_faq: #{e}"
end
```

#### Using the update_business_agent_faq_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BusinessAgentFaq>, Integer, Hash)> update_business_agent_faq_with_http_info(account_id, faq_id, business_agent_faq_input)

```ruby
begin
  # Update a FAQ
  data, status_code, headers = api_instance.update_business_agent_faq_with_http_info(account_id, faq_id, business_agent_faq_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BusinessAgentFaq>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->update_business_agent_faq_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **faq_id** | **String** |  |  |
| **business_agent_faq_input** | [**BusinessAgentFaqInput**](BusinessAgentFaqInput.md) |  |  |

### Return type

[**BusinessAgentFaq**](BusinessAgentFaq.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_business_agent_settings

> <BusinessAgentSettings> update_business_agent_settings(account_id, update_business_agent_settings_request, opts)

Update agent settings

Partial update: fields you omit keep their value. `rollout.enabled: true` turns the agent on for new conversations; `false` stops it on every thread. Turning it on for `EVERYONE` needs a payment method on the Business Agent billable account (Meta accepts the call but delivers nothing without one); `ALLOWLISTED_ONLY` does not, which is how you test with a few numbers before billing. `never_say_phrases` replaces the whole list. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
update_business_agent_settings_request = Zernio::UpdateBusinessAgentSettingsRequest.new # UpdateBusinessAgentSettingsRequest | 
opts = {
  agent_id: 'agent_id_example' # String | 
}

begin
  # Update agent settings
  result = api_instance.update_business_agent_settings(account_id, update_business_agent_settings_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->update_business_agent_settings: #{e}"
end
```

#### Using the update_business_agent_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BusinessAgentSettings>, Integer, Hash)> update_business_agent_settings_with_http_info(account_id, update_business_agent_settings_request, opts)

```ruby
begin
  # Update agent settings
  data, status_code, headers = api_instance.update_business_agent_settings_with_http_info(account_id, update_business_agent_settings_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BusinessAgentSettings>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->update_business_agent_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **update_business_agent_settings_request** | [**UpdateBusinessAgentSettingsRequest**](UpdateBusinessAgentSettingsRequest.md) |  |  |
| **agent_id** | **String** |  | [optional] |

### Return type

[**BusinessAgentSettings**](BusinessAgentSettings.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_business_agent_skill

> <BusinessAgentSkill> update_business_agent_skill(account_id, skill_id, business_agent_skill_input)

Update a skill

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
skill_id = 'skill_id_example' # String | 
business_agent_skill_input = Zernio::BusinessAgentSkillInput.new({skill: 'skill_example'}) # BusinessAgentSkillInput | 

begin
  # Update a skill
  result = api_instance.update_business_agent_skill(account_id, skill_id, business_agent_skill_input)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->update_business_agent_skill: #{e}"
end
```

#### Using the update_business_agent_skill_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BusinessAgentSkill>, Integer, Hash)> update_business_agent_skill_with_http_info(account_id, skill_id, business_agent_skill_input)

```ruby
begin
  # Update a skill
  data, status_code, headers = api_instance.update_business_agent_skill_with_http_info(account_id, skill_id, business_agent_skill_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BusinessAgentSkill>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->update_business_agent_skill_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **skill_id** | **String** |  |  |
| **business_agent_skill_input** | [**BusinessAgentSkillInput**](BusinessAgentSkillInput.md) |  |  |

### Return type

[**BusinessAgentSkill**](BusinessAgentSkill.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_business_agent_ui_skill

> <BusinessAgentUiSkill> update_business_agent_ui_skill(account_id, ui_skill_id, business_agent_ui_skill_input)

Update a UI skill

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
ui_skill_id = 'ui_skill_id_example' # String | 
business_agent_ui_skill_input = Zernio::BusinessAgentUiSkillInput.new({component_type: 'carousel_quick_reply', status: 'enabled', instruction: 'instruction_example'}) # BusinessAgentUiSkillInput | 

begin
  # Update a UI skill
  result = api_instance.update_business_agent_ui_skill(account_id, ui_skill_id, business_agent_ui_skill_input)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->update_business_agent_ui_skill: #{e}"
end
```

#### Using the update_business_agent_ui_skill_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BusinessAgentUiSkill>, Integer, Hash)> update_business_agent_ui_skill_with_http_info(account_id, ui_skill_id, business_agent_ui_skill_input)

```ruby
begin
  # Update a UI skill
  data, status_code, headers = api_instance.update_business_agent_ui_skill_with_http_info(account_id, ui_skill_id, business_agent_ui_skill_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BusinessAgentUiSkill>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->update_business_agent_ui_skill_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **ui_skill_id** | **String** |  |  |
| **business_agent_ui_skill_input** | [**BusinessAgentUiSkillInput**](BusinessAgentUiSkillInput.md) |  |  |

### Return type

[**BusinessAgentUiSkill**](BusinessAgentUiSkill.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_business_agent_website

> <BusinessAgentWebsite> update_business_agent_website(account_id, website_id, business_agent_website_input)

Update a crawled website

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
website_id = 'website_id_example' # String | 
business_agent_website_input = Zernio::BusinessAgentWebsiteInput.new({url: 'url_example'}) # BusinessAgentWebsiteInput | 

begin
  # Update a crawled website
  result = api_instance.update_business_agent_website(account_id, website_id, business_agent_website_input)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->update_business_agent_website: #{e}"
end
```

#### Using the update_business_agent_website_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BusinessAgentWebsite>, Integer, Hash)> update_business_agent_website_with_http_info(account_id, website_id, business_agent_website_input)

```ruby
begin
  # Update a crawled website
  data, status_code, headers = api_instance.update_business_agent_website_with_http_info(account_id, website_id, business_agent_website_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BusinessAgentWebsite>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->update_business_agent_website_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **website_id** | **String** |  |  |
| **business_agent_website_input** | [**BusinessAgentWebsiteInput**](BusinessAgentWebsiteInput.md) |  |  |

### Return type

[**BusinessAgentWebsite**](BusinessAgentWebsite.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upload_business_agent_file

> <BusinessAgentKnowledgeFile> upload_business_agent_file(account_id, upload_business_agent_file_request)

Upload a knowledge file

Accepted types: pdf, doc, docx, png, jpg, jpeg, plus csv and xlsx when Meta enabled extraction on the asset. Meta's limit is 100 MB. Two ways to send the file: - JSON `{ url, fileName }`: Zernio downloads the file (public https URL, no redirects,   capped at 100 MB) and forwards it. Use this for anything above a few megabytes. - multipart form-data with a `file` part (and an optional `fileName`): bounded by the   request body limit of about 4.5 MB; larger uploads must use the `url` form. Not idempotent. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BusinessAgentApi.new
account_id = 'account_id_example' # String | WhatsApp social account id (the number must be managed through the Cloud API).
upload_business_agent_file_request = Zernio::UploadBusinessAgentFileRequest.new({url: 'url_example'}) # UploadBusinessAgentFileRequest | 

begin
  # Upload a knowledge file
  result = api_instance.upload_business_agent_file(account_id, upload_business_agent_file_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->upload_business_agent_file: #{e}"
end
```

#### Using the upload_business_agent_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BusinessAgentKnowledgeFile>, Integer, Hash)> upload_business_agent_file_with_http_info(account_id, upload_business_agent_file_request)

```ruby
begin
  # Upload a knowledge file
  data, status_code, headers = api_instance.upload_business_agent_file_with_http_info(account_id, upload_business_agent_file_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BusinessAgentKnowledgeFile>
rescue Zernio::ApiError => e
  puts "Error when calling BusinessAgentApi->upload_business_agent_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account id (the number must be managed through the Cloud API). |  |
| **upload_business_agent_file_request** | [**UploadBusinessAgentFileRequest**](UploadBusinessAgentFileRequest.md) |  |  |

### Return type

[**BusinessAgentKnowledgeFile**](BusinessAgentKnowledgeFile.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json

