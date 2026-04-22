# Zernio::CustomFieldsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**clear_contact_field_value**](CustomFieldsApi.md#clear_contact_field_value) | **DELETE** /v1/contacts/{contactId}/fields/{slug} | Clear custom field value |
| [**create_custom_field**](CustomFieldsApi.md#create_custom_field) | **POST** /v1/custom-fields | Create custom field |
| [**delete_custom_field**](CustomFieldsApi.md#delete_custom_field) | **DELETE** /v1/custom-fields/{fieldId} | Delete custom field |
| [**list_custom_fields**](CustomFieldsApi.md#list_custom_fields) | **GET** /v1/custom-fields | List custom field definitions |
| [**set_contact_field_value**](CustomFieldsApi.md#set_contact_field_value) | **PUT** /v1/contacts/{contactId}/fields/{slug} | Set custom field value |
| [**update_custom_field**](CustomFieldsApi.md#update_custom_field) | **PATCH** /v1/custom-fields/{fieldId} | Update custom field |


## clear_contact_field_value

> clear_contact_field_value(contact_id, slug)

Clear custom field value

Remove a custom field value from a contact. The field definition is not affected.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CustomFieldsApi.new
contact_id = 'contact_id_example' # String | 
slug = 'slug_example' # String | 

begin
  # Clear custom field value
  api_instance.clear_contact_field_value(contact_id, slug)
rescue Zernio::ApiError => e
  puts "Error when calling CustomFieldsApi->clear_contact_field_value: #{e}"
end
```

#### Using the clear_contact_field_value_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> clear_contact_field_value_with_http_info(contact_id, slug)

```ruby
begin
  # Clear custom field value
  data, status_code, headers = api_instance.clear_contact_field_value_with_http_info(contact_id, slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling CustomFieldsApi->clear_contact_field_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **String** |  |  |
| **slug** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_custom_field

> <CreateCustomField200Response> create_custom_field(create_custom_field_request)

Create custom field

Create a new custom field definition. Supported types are text, number, date, boolean, and select.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CustomFieldsApi.new
create_custom_field_request = Zernio::CreateCustomFieldRequest.new({profile_id: 'profile_id_example', name: 'name_example', type: 'text'}) # CreateCustomFieldRequest | 

begin
  # Create custom field
  result = api_instance.create_custom_field(create_custom_field_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CustomFieldsApi->create_custom_field: #{e}"
end
```

#### Using the create_custom_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCustomField200Response>, Integer, Hash)> create_custom_field_with_http_info(create_custom_field_request)

```ruby
begin
  # Create custom field
  data, status_code, headers = api_instance.create_custom_field_with_http_info(create_custom_field_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCustomField200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CustomFieldsApi->create_custom_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_custom_field_request** | [**CreateCustomFieldRequest**](CreateCustomFieldRequest.md) |  |  |

### Return type

[**CreateCustomField200Response**](CreateCustomField200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_custom_field

> delete_custom_field(field_id)

Delete custom field

Delete a custom field definition and remove its values from all contacts.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CustomFieldsApi.new
field_id = 'field_id_example' # String | 

begin
  # Delete custom field
  api_instance.delete_custom_field(field_id)
rescue Zernio::ApiError => e
  puts "Error when calling CustomFieldsApi->delete_custom_field: #{e}"
end
```

#### Using the delete_custom_field_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_custom_field_with_http_info(field_id)

```ruby
begin
  # Delete custom field
  data, status_code, headers = api_instance.delete_custom_field_with_http_info(field_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling CustomFieldsApi->delete_custom_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_custom_fields

> <ListCustomFields200Response> list_custom_fields(opts)

List custom field definitions

Returns all custom field definitions. Optionally filter by profile.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CustomFieldsApi.new
opts = {
  profile_id: 'profile_id_example' # String | Filter by profile. Omit to list across all profiles
}

begin
  # List custom field definitions
  result = api_instance.list_custom_fields(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CustomFieldsApi->list_custom_fields: #{e}"
end
```

#### Using the list_custom_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCustomFields200Response>, Integer, Hash)> list_custom_fields_with_http_info(opts)

```ruby
begin
  # List custom field definitions
  data, status_code, headers = api_instance.list_custom_fields_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCustomFields200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CustomFieldsApi->list_custom_fields_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | Filter by profile. Omit to list across all profiles | [optional] |

### Return type

[**ListCustomFields200Response**](ListCustomFields200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_contact_field_value

> set_contact_field_value(contact_id, slug, set_contact_field_value_request)

Set custom field value

Set or overwrite a custom field value on a contact. The value type must match the field definition.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CustomFieldsApi.new
contact_id = 'contact_id_example' # String | 
slug = 'slug_example' # String | 
set_contact_field_value_request = Zernio::SetContactFieldValueRequest.new({value: 3.56}) # SetContactFieldValueRequest | 

begin
  # Set custom field value
  api_instance.set_contact_field_value(contact_id, slug, set_contact_field_value_request)
rescue Zernio::ApiError => e
  puts "Error when calling CustomFieldsApi->set_contact_field_value: #{e}"
end
```

#### Using the set_contact_field_value_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> set_contact_field_value_with_http_info(contact_id, slug, set_contact_field_value_request)

```ruby
begin
  # Set custom field value
  data, status_code, headers = api_instance.set_contact_field_value_with_http_info(contact_id, slug, set_contact_field_value_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling CustomFieldsApi->set_contact_field_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **String** |  |  |
| **slug** | **String** |  |  |
| **set_contact_field_value_request** | [**SetContactFieldValueRequest**](SetContactFieldValueRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_custom_field

> <UpdateCustomField200Response> update_custom_field(field_id, opts)

Update custom field

Update a custom field definition. The field type cannot be changed after creation.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CustomFieldsApi.new
field_id = 'field_id_example' # String | 
opts = {
  update_custom_field_request: Zernio::UpdateCustomFieldRequest.new # UpdateCustomFieldRequest | 
}

begin
  # Update custom field
  result = api_instance.update_custom_field(field_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CustomFieldsApi->update_custom_field: #{e}"
end
```

#### Using the update_custom_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateCustomField200Response>, Integer, Hash)> update_custom_field_with_http_info(field_id, opts)

```ruby
begin
  # Update custom field
  data, status_code, headers = api_instance.update_custom_field_with_http_info(field_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateCustomField200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CustomFieldsApi->update_custom_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field_id** | **String** |  |  |
| **update_custom_field_request** | [**UpdateCustomFieldRequest**](UpdateCustomFieldRequest.md) |  | [optional] |

### Return type

[**UpdateCustomField200Response**](UpdateCustomField200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

