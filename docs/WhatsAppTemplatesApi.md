# Zernio::WhatsAppTemplatesApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_whats_app_library_template**](WhatsAppTemplatesApi.md#get_whats_app_library_template) | **GET** /v1/whatsapp/template-library | Look up a library template |


## get_whats_app_library_template

> <GetWhatsAppLibraryTemplate200Response> get_whats_app_library_template(account_id, name, opts)

Look up a library template

Look up a single pre-approved Template Library template by its exact name, to introspect its structure before importing it. Most importantly it returns the template's `buttons`: a library template with `URL` / `PHONE_NUMBER` buttons must be created with a matching `library_template_button_inputs` array (see Create Template), or Meta rejects it. Use this to discover which inputs to collect. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppTemplatesApi.new
account_id = 'account_id_example' # String | WhatsApp social account ID
name = 'name_example' # String | Exact library template name
opts = {
  language: 'language_example' # String | Desired language variant (e.g. es, en_US). If the template is not offered in it, the first available variant is returned and named in the response language field.
}

begin
  # Look up a library template
  result = api_instance.get_whats_app_library_template(account_id, name, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppTemplatesApi->get_whats_app_library_template: #{e}"
end
```

#### Using the get_whats_app_library_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWhatsAppLibraryTemplate200Response>, Integer, Hash)> get_whats_app_library_template_with_http_info(account_id, name, opts)

```ruby
begin
  # Look up a library template
  data, status_code, headers = api_instance.get_whats_app_library_template_with_http_info(account_id, name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWhatsAppLibraryTemplate200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppTemplatesApi->get_whats_app_library_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account ID |  |
| **name** | **String** | Exact library template name |  |
| **language** | **String** | Desired language variant (e.g. es, en_US). If the template is not offered in it, the first available variant is returned and named in the response language field. | [optional] |

### Return type

[**GetWhatsAppLibraryTemplate200Response**](GetWhatsAppLibraryTemplate200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

