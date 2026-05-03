# Zernio::LeadFormsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_lead_form**](LeadFormsApi.md#create_lead_form) | **POST** /v1/ads/lead-forms | Create a Meta Lead Gen Form |
| [**create_lead_form_test_lead**](LeadFormsApi.md#create_lead_form_test_lead) | **POST** /v1/ads/lead-forms/{formId}/test-leads | Create a synthetic test lead |
| [**delete_lead_form**](LeadFormsApi.md#delete_lead_form) | **DELETE** /v1/ads/lead-forms/{formId} | Delete a Lead Gen Form |
| [**delete_lead_form_test_lead**](LeadFormsApi.md#delete_lead_form_test_lead) | **DELETE** /v1/ads/lead-forms/{formId}/test-leads/{leadId} | Delete a (test) lead |
| [**get_lead_form**](LeadFormsApi.md#get_lead_form) | **GET** /v1/ads/lead-forms/{formId} | Get a Lead Gen Form |
| [**list_lead_form_leads**](LeadFormsApi.md#list_lead_form_leads) | **GET** /v1/ads/lead-forms/{formId}/leads | List submitted leads for a form |
| [**list_lead_forms**](LeadFormsApi.md#list_lead_forms) | **GET** /v1/ads/lead-forms | List Meta Lead Gen Forms |
| [**update_lead_form**](LeadFormsApi.md#update_lead_form) | **PATCH** /v1/ads/lead-forms/{formId} | Update a Lead Gen Form (status only) |


## create_lead_form

> <CreateLeadForm201Response> create_lead_form(create_lead_form_body)

Create a Meta Lead Gen Form

Creates a new Instant Form on the Facebook Page tied to the given social account. The form is created in `ACTIVE` status and is immediately attachable to ads (see `leadGenFormId` on POST /v1/ads/create).  Once a form has received any leads, its questions / privacy policy / thank-you page become immutable on Meta's side; only `status` may be changed via PATCH. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::LeadFormsApi.new
create_lead_form_body = Zernio::CreateLeadFormBody.new({account_id: 'account_id_example', name: 'name_example', questions: [Zernio::LeadGenFormQuestion.new({type: 'EMAIL'})], privacy_policy_url: 'privacy_policy_url_example'}) # CreateLeadFormBody | 

begin
  # Create a Meta Lead Gen Form
  result = api_instance.create_lead_form(create_lead_form_body)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling LeadFormsApi->create_lead_form: #{e}"
end
```

#### Using the create_lead_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateLeadForm201Response>, Integer, Hash)> create_lead_form_with_http_info(create_lead_form_body)

```ruby
begin
  # Create a Meta Lead Gen Form
  data, status_code, headers = api_instance.create_lead_form_with_http_info(create_lead_form_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateLeadForm201Response>
rescue Zernio::ApiError => e
  puts "Error when calling LeadFormsApi->create_lead_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_lead_form_body** | [**CreateLeadFormBody**](CreateLeadFormBody.md) |  |  |

### Return type

[**CreateLeadForm201Response**](CreateLeadForm201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_lead_form_test_lead

> <CreateLeadFormTestLead200Response> create_lead_form_test_lead(form_id, create_lead_form_test_lead_request)

Create a synthetic test lead

Submits a fake lead against a form. Useful for QA, App Review demos, and exercising webhook subscribers without waiting for real ad impressions. Meta caps a form to one outstanding test lead — call DELETE on the returned id before re-submitting. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::LeadFormsApi.new
form_id = 'form_id_example' # String | 
create_lead_form_test_lead_request = Zernio::CreateLeadFormTestLeadRequest.new({account_id: 'account_id_example', field_data: [Zernio::CreateLeadFormTestLeadRequestFieldDataInner.new({name: 'name_example', values: ['values_example']})]}) # CreateLeadFormTestLeadRequest | 

begin
  # Create a synthetic test lead
  result = api_instance.create_lead_form_test_lead(form_id, create_lead_form_test_lead_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling LeadFormsApi->create_lead_form_test_lead: #{e}"
end
```

#### Using the create_lead_form_test_lead_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateLeadFormTestLead200Response>, Integer, Hash)> create_lead_form_test_lead_with_http_info(form_id, create_lead_form_test_lead_request)

```ruby
begin
  # Create a synthetic test lead
  data, status_code, headers = api_instance.create_lead_form_test_lead_with_http_info(form_id, create_lead_form_test_lead_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateLeadFormTestLead200Response>
rescue Zernio::ApiError => e
  puts "Error when calling LeadFormsApi->create_lead_form_test_lead_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form_id** | **String** |  |  |
| **create_lead_form_test_lead_request** | [**CreateLeadFormTestLeadRequest**](CreateLeadFormTestLeadRequest.md) |  |  |

### Return type

[**CreateLeadFormTestLead200Response**](CreateLeadFormTestLead200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_lead_form

> <DeleteLeadForm200Response> delete_lead_form(form_id, account_id)

Delete a Lead Gen Form

Deletes the form from Meta. If the form has already received leads, Meta archives it instead of hard-deleting; the response is the same either way. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::LeadFormsApi.new
form_id = 'form_id_example' # String | 
account_id = 'account_id_example' # String | 

begin
  # Delete a Lead Gen Form
  result = api_instance.delete_lead_form(form_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling LeadFormsApi->delete_lead_form: #{e}"
end
```

#### Using the delete_lead_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteLeadForm200Response>, Integer, Hash)> delete_lead_form_with_http_info(form_id, account_id)

```ruby
begin
  # Delete a Lead Gen Form
  data, status_code, headers = api_instance.delete_lead_form_with_http_info(form_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteLeadForm200Response>
rescue Zernio::ApiError => e
  puts "Error when calling LeadFormsApi->delete_lead_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form_id** | **String** |  |  |
| **account_id** | **String** |  |  |

### Return type

[**DeleteLeadForm200Response**](DeleteLeadForm200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_lead_form_test_lead

> <DeleteLeadForm200Response> delete_lead_form_test_lead(form_id, lead_id, account_id)

Delete a (test) lead

Deletes a single lead by ID. Primarily used to clear the outstanding test lead so you can submit a new one. The same Graph API call works on real leads too; for production lead deletion (GDPR/CCPA) prefer a dedicated flow. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::LeadFormsApi.new
form_id = 'form_id_example' # String | 
lead_id = 'lead_id_example' # String | 
account_id = 'account_id_example' # String | 

begin
  # Delete a (test) lead
  result = api_instance.delete_lead_form_test_lead(form_id, lead_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling LeadFormsApi->delete_lead_form_test_lead: #{e}"
end
```

#### Using the delete_lead_form_test_lead_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteLeadForm200Response>, Integer, Hash)> delete_lead_form_test_lead_with_http_info(form_id, lead_id, account_id)

```ruby
begin
  # Delete a (test) lead
  data, status_code, headers = api_instance.delete_lead_form_test_lead_with_http_info(form_id, lead_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteLeadForm200Response>
rescue Zernio::ApiError => e
  puts "Error when calling LeadFormsApi->delete_lead_form_test_lead_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form_id** | **String** |  |  |
| **lead_id** | **String** |  |  |
| **account_id** | **String** |  |  |

### Return type

[**DeleteLeadForm200Response**](DeleteLeadForm200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lead_form

> <GetLeadForm200Response> get_lead_form(form_id, account_id)

Get a Lead Gen Form

Returns full details for a single form, including questions, privacy policy, and lead counts.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::LeadFormsApi.new
form_id = 'form_id_example' # String | Meta lead form ID (numeric string)
account_id = 'account_id_example' # String | 

begin
  # Get a Lead Gen Form
  result = api_instance.get_lead_form(form_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling LeadFormsApi->get_lead_form: #{e}"
end
```

#### Using the get_lead_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLeadForm200Response>, Integer, Hash)> get_lead_form_with_http_info(form_id, account_id)

```ruby
begin
  # Get a Lead Gen Form
  data, status_code, headers = api_instance.get_lead_form_with_http_info(form_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLeadForm200Response>
rescue Zernio::ApiError => e
  puts "Error when calling LeadFormsApi->get_lead_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form_id** | **String** | Meta lead form ID (numeric string) |  |
| **account_id** | **String** |  |  |

### Return type

[**GetLeadForm200Response**](GetLeadForm200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_lead_form_leads

> <ListLeadFormLeads200Response> list_lead_form_leads(form_id, account_id, opts)

List submitted leads for a form

Returns leads submitted against a Lead Gen Form. The page access token on the connected account must have the `leads_retrieval` permission — if the token was minted before that scope was approved, this endpoint returns `code: scope_reconnect_required` (HTTP 422) and the customer must reconnect the Facebook account.  For real-time delivery without polling, subscribe a webhook to the `lead.received` event. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::LeadFormsApi.new
form_id = 'form_id_example' # String | 
account_id = 'account_id_example' # String | 
opts = {
  limit: 56, # Integer | 
  cursor: 'cursor_example', # String | 
  since: 56 # Integer | Unix timestamp; only return leads created strictly after this.
}

begin
  # List submitted leads for a form
  result = api_instance.list_lead_form_leads(form_id, account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling LeadFormsApi->list_lead_form_leads: #{e}"
end
```

#### Using the list_lead_form_leads_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListLeadFormLeads200Response>, Integer, Hash)> list_lead_form_leads_with_http_info(form_id, account_id, opts)

```ruby
begin
  # List submitted leads for a form
  data, status_code, headers = api_instance.list_lead_form_leads_with_http_info(form_id, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListLeadFormLeads200Response>
rescue Zernio::ApiError => e
  puts "Error when calling LeadFormsApi->list_lead_form_leads_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form_id** | **String** |  |  |
| **account_id** | **String** |  |  |
| **limit** | **Integer** |  | [optional][default to 25] |
| **cursor** | **String** |  | [optional] |
| **since** | **Integer** | Unix timestamp; only return leads created strictly after this. | [optional] |

### Return type

[**ListLeadFormLeads200Response**](ListLeadFormLeads200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_lead_forms

> <ListLeadForms200Response> list_lead_forms(account_id, opts)

List Meta Lead Gen Forms

Returns Meta Instant Forms attached to the Facebook Page connected via the given social account. Forms live on Facebook Pages — Instagram lead ads reuse the linked Page under the hood, so even Instagram-only ad accounts list forms from the linked Facebook Page. Requires the Ads add-on. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::LeadFormsApi.new
account_id = 'account_id_example' # String | Facebook social account ID (Late SocialAccount _id)
opts = {
  limit: 56, # Integer | 
  cursor: 'cursor_example' # String | Meta `paging.cursors.after` from a prior page
}

begin
  # List Meta Lead Gen Forms
  result = api_instance.list_lead_forms(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling LeadFormsApi->list_lead_forms: #{e}"
end
```

#### Using the list_lead_forms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListLeadForms200Response>, Integer, Hash)> list_lead_forms_with_http_info(account_id, opts)

```ruby
begin
  # List Meta Lead Gen Forms
  data, status_code, headers = api_instance.list_lead_forms_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListLeadForms200Response>
rescue Zernio::ApiError => e
  puts "Error when calling LeadFormsApi->list_lead_forms_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Facebook social account ID (Late SocialAccount _id) |  |
| **limit** | **Integer** |  | [optional][default to 25] |
| **cursor** | **String** | Meta &#x60;paging.cursors.after&#x60; from a prior page | [optional] |

### Return type

[**ListLeadForms200Response**](ListLeadForms200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_lead_form

> <DeleteLeadForm200Response> update_lead_form(form_id, update_lead_form_request)

Update a Lead Gen Form (status only)

Update mutable fields on an existing form. Today only `status` is mutable on Meta's side — questions / privacy_policy / thank_you_page are immutable once a form has received any leads. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::LeadFormsApi.new
form_id = 'form_id_example' # String | 
update_lead_form_request = Zernio::UpdateLeadFormRequest.new({account_id: 'account_id_example', status: 'ACTIVE'}) # UpdateLeadFormRequest | 

begin
  # Update a Lead Gen Form (status only)
  result = api_instance.update_lead_form(form_id, update_lead_form_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling LeadFormsApi->update_lead_form: #{e}"
end
```

#### Using the update_lead_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteLeadForm200Response>, Integer, Hash)> update_lead_form_with_http_info(form_id, update_lead_form_request)

```ruby
begin
  # Update a Lead Gen Form (status only)
  data, status_code, headers = api_instance.update_lead_form_with_http_info(form_id, update_lead_form_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteLeadForm200Response>
rescue Zernio::ApiError => e
  puts "Error when calling LeadFormsApi->update_lead_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form_id** | **String** |  |  |
| **update_lead_form_request** | [**UpdateLeadFormRequest**](UpdateLeadFormRequest.md) |  |  |

### Return type

[**DeleteLeadForm200Response**](DeleteLeadForm200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

