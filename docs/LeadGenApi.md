# Zernio::LeadGenApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**archive_lead_form**](LeadGenApi.md#archive_lead_form) | **DELETE** /v1/ads/lead-forms/{formId} | Archive a lead form |
| [**create_lead_form**](LeadGenApi.md#create_lead_form) | **POST** /v1/ads/lead-forms | Create a lead form |
| [**create_test_lead**](LeadGenApi.md#create_test_lead) | **POST** /v1/ads/lead-forms/{formId}/test-leads | Create a test lead |
| [**get_lead_form**](LeadGenApi.md#get_lead_form) | **GET** /v1/ads/lead-forms/{formId} | Get a lead form |
| [**list_form_leads**](LeadGenApi.md#list_form_leads) | **GET** /v1/ads/lead-forms/{formId}/leads | List leads for a single form |
| [**list_lead_forms**](LeadGenApi.md#list_lead_forms) | **GET** /v1/ads/lead-forms | List lead forms |
| [**list_leads**](LeadGenApi.md#list_leads) | **GET** /v1/ads/leads | List submitted leads |


## archive_lead_form

> <ArchiveLeadForm200Response> archive_lead_form(form_id, account_id)

Archive a lead form

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

api_instance = Zernio::LeadGenApi.new
form_id = 'form_id_example' # String | 
account_id = 'account_id_example' # String | 

begin
  # Archive a lead form
  result = api_instance.archive_lead_form(form_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling LeadGenApi->archive_lead_form: #{e}"
end
```

#### Using the archive_lead_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ArchiveLeadForm200Response>, Integer, Hash)> archive_lead_form_with_http_info(form_id, account_id)

```ruby
begin
  # Archive a lead form
  data, status_code, headers = api_instance.archive_lead_form_with_http_info(form_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ArchiveLeadForm200Response>
rescue Zernio::ApiError => e
  puts "Error when calling LeadGenApi->archive_lead_form_with_http_info: #{e}"
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


## create_lead_form

> <CreateLeadForm200Response> create_lead_form(create_lead_form_request)

Create a lead form

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

api_instance = Zernio::LeadGenApi.new
create_lead_form_request = Zernio::CreateLeadFormRequest.new({account_id: 'account_id_example', name: 'name_example', questions: [Zernio::CreateLeadFormRequestQuestionsInner.new({type: 'type_example'})], privacy_policy_url: 'privacy_policy_url_example'}) # CreateLeadFormRequest | 

begin
  # Create a lead form
  result = api_instance.create_lead_form(create_lead_form_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling LeadGenApi->create_lead_form: #{e}"
end
```

#### Using the create_lead_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateLeadForm200Response>, Integer, Hash)> create_lead_form_with_http_info(create_lead_form_request)

```ruby
begin
  # Create a lead form
  data, status_code, headers = api_instance.create_lead_form_with_http_info(create_lead_form_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateLeadForm200Response>
rescue Zernio::ApiError => e
  puts "Error when calling LeadGenApi->create_lead_form_with_http_info: #{e}"
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


## create_test_lead

> <CreateTestLead200Response> create_test_lead(form_id, create_test_lead_request)

Create a test lead

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

api_instance = Zernio::LeadGenApi.new
form_id = 'form_id_example' # String | 
create_test_lead_request = Zernio::CreateTestLeadRequest.new({account_id: 'account_id_example', field_data: [Zernio::CreateTestLeadRequestFieldDataInner.new({name: 'name_example', values: ['values_example']})]}) # CreateTestLeadRequest | 

begin
  # Create a test lead
  result = api_instance.create_test_lead(form_id, create_test_lead_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling LeadGenApi->create_test_lead: #{e}"
end
```

#### Using the create_test_lead_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTestLead200Response>, Integer, Hash)> create_test_lead_with_http_info(form_id, create_test_lead_request)

```ruby
begin
  # Create a test lead
  data, status_code, headers = api_instance.create_test_lead_with_http_info(form_id, create_test_lead_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTestLead200Response>
rescue Zernio::ApiError => e
  puts "Error when calling LeadGenApi->create_test_lead_with_http_info: #{e}"
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


## get_lead_form

> <GetLeadForm200Response> get_lead_form(form_id, account_id)

Get a lead form

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::LeadGenApi.new
form_id = 'form_id_example' # String | 
account_id = 'account_id_example' # String | 

begin
  # Get a lead form
  result = api_instance.get_lead_form(form_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling LeadGenApi->get_lead_form: #{e}"
end
```

#### Using the get_lead_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLeadForm200Response>, Integer, Hash)> get_lead_form_with_http_info(form_id, account_id)

```ruby
begin
  # Get a lead form
  data, status_code, headers = api_instance.get_lead_form_with_http_info(form_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLeadForm200Response>
rescue Zernio::ApiError => e
  puts "Error when calling LeadGenApi->get_lead_form_with_http_info: #{e}"
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

api_instance = Zernio::LeadGenApi.new
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
  puts "Error when calling LeadGenApi->list_form_leads: #{e}"
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
  puts "Error when calling LeadGenApi->list_form_leads_with_http_info: #{e}"
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

List lead forms

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

api_instance = Zernio::LeadGenApi.new
account_id = 'account_id_example' # String | Connected facebook account id.
opts = {
  limit: 56, # Integer | 
  cursor: 'cursor_example' # String | 
}

begin
  # List lead forms
  result = api_instance.list_lead_forms(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling LeadGenApi->list_lead_forms: #{e}"
end
```

#### Using the list_lead_forms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListLeadForms200Response>, Integer, Hash)> list_lead_forms_with_http_info(account_id, opts)

```ruby
begin
  # List lead forms
  data, status_code, headers = api_instance.list_lead_forms_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListLeadForms200Response>
rescue Zernio::ApiError => e
  puts "Error when calling LeadGenApi->list_lead_forms_with_http_info: #{e}"
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

List submitted leads

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

api_instance = Zernio::LeadGenApi.new
opts = {
  form_id: 'form_id_example', # String | Filter to a single lead form.
  account_id: 'account_id_example', # String | Filter to a single connected account.
  limit: 56, # Integer | 
  since: 56, # Integer | Unix seconds; only leads created at/after this Meta timestamp.
  cursor: 'cursor_example' # String | Keyset cursor from a previous response's pagination.cursor.
}

begin
  # List submitted leads
  result = api_instance.list_leads(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling LeadGenApi->list_leads: #{e}"
end
```

#### Using the list_leads_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListLeads200Response>, Integer, Hash)> list_leads_with_http_info(opts)

```ruby
begin
  # List submitted leads
  data, status_code, headers = api_instance.list_leads_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListLeads200Response>
rescue Zernio::ApiError => e
  puts "Error when calling LeadGenApi->list_leads_with_http_info: #{e}"
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

