# Zernio::BrandedCallingApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**attach_branded_calling_numbers**](BrandedCallingApi.md#attach_branded_calling_numbers) | **POST** /v1/branded-calling/identities/{id}/numbers | Attach numbers to a verified identity |
| [**confirm_branded_calling_authorizer_email**](BrandedCallingApi.md#confirm_branded_calling_authorizer_email) | **POST** /v1/branded-calling/identities/{id}/verify-email/confirm | Confirm the authorizer&#39;s code |
| [**create_branded_calling_enterprise**](BrandedCallingApi.md#create_branded_calling_enterprise) | **POST** /v1/branded-calling/enterprises | Register a business for Branded Calling |
| [**create_branded_calling_identity**](BrandedCallingApi.md#create_branded_calling_identity) | **POST** /v1/branded-calling/identities | Create a caller identity |
| [**delete_branded_calling_enterprise**](BrandedCallingApi.md#delete_branded_calling_enterprise) | **DELETE** /v1/branded-calling/enterprises/{id} | Delete a registered business |
| [**delete_branded_calling_identity**](BrandedCallingApi.md#delete_branded_calling_identity) | **DELETE** /v1/branded-calling/identities/{id} | Delete a caller identity |
| [**detach_branded_calling_numbers**](BrandedCallingApi.md#detach_branded_calling_numbers) | **DELETE** /v1/branded-calling/identities/{id}/numbers | Detach numbers from an identity |
| [**get_branded_calling_enterprise**](BrandedCallingApi.md#get_branded_calling_enterprise) | **GET** /v1/branded-calling/enterprises/{id} | Get a registered business |
| [**get_branded_calling_identity**](BrandedCallingApi.md#get_branded_calling_identity) | **GET** /v1/branded-calling/identities/{id} | Get a caller identity |
| [**list_branded_calling_call_reasons**](BrandedCallingApi.md#list_branded_calling_call_reasons) | **GET** /v1/branded-calling/call-reasons | List pre-approved call reasons |
| [**list_branded_calling_enterprises**](BrandedCallingApi.md#list_branded_calling_enterprises) | **GET** /v1/branded-calling/enterprises | List registered businesses |
| [**list_branded_calling_identities**](BrandedCallingApi.md#list_branded_calling_identities) | **GET** /v1/branded-calling/identities | List caller identities |
| [**list_branded_calling_identity_numbers**](BrandedCallingApi.md#list_branded_calling_identity_numbers) | **GET** /v1/branded-calling/identities/{id}/numbers | List the numbers on a caller identity |
| [**preflight_branded_calling_identity**](BrandedCallingApi.md#preflight_branded_calling_identity) | **POST** /v1/branded-calling/identities/preflight | Dry-run a caller identity before creating it |
| [**resend_branded_calling_authorizer_code**](BrandedCallingApi.md#resend_branded_calling_authorizer_code) | **POST** /v1/branded-calling/identities/{id}/verify-email | Resend the authorizer&#39;s code |
| [**update_branded_calling_identity**](BrandedCallingApi.md#update_branded_calling_identity) | **PATCH** /v1/branded-calling/identities/{id} | Edit or resubmit a caller identity |


## attach_branded_calling_numbers

> <ListBrandedCallingIdentityNumbers200Response> attach_branded_calling_numbers(id, attach_branded_calling_numbers_request)

Attach numbers to a verified identity

Files a Letter of Authorization signed by you (Zernio is named as the authorized agent managing the numbers) and opens a vetting batch of up to 15 US numbers you own. The batch is all-or-nothing: one ineligible number refuses the whole call. Each number shows the identity once its own status reaches `verified`. A number belongs to one identity at a time. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BrandedCallingApi.new
id = 'id_example' # String | 
attach_branded_calling_numbers_request = Zernio::AttachBrandedCallingNumbersRequest.new({phone_number_ids: ['phone_number_ids_example'], signature: Zernio::AttachBrandedCallingNumbersRequestSignature.new({image_base64: 'image_base64_example'})}) # AttachBrandedCallingNumbersRequest | 

begin
  # Attach numbers to a verified identity
  result = api_instance.attach_branded_calling_numbers(id, attach_branded_calling_numbers_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BrandedCallingApi->attach_branded_calling_numbers: #{e}"
end
```

#### Using the attach_branded_calling_numbers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBrandedCallingIdentityNumbers200Response>, Integer, Hash)> attach_branded_calling_numbers_with_http_info(id, attach_branded_calling_numbers_request)

```ruby
begin
  # Attach numbers to a verified identity
  data, status_code, headers = api_instance.attach_branded_calling_numbers_with_http_info(id, attach_branded_calling_numbers_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBrandedCallingIdentityNumbers200Response>
rescue Zernio::ApiError => e
  puts "Error when calling BrandedCallingApi->attach_branded_calling_numbers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **attach_branded_calling_numbers_request** | [**AttachBrandedCallingNumbersRequest**](AttachBrandedCallingNumbersRequest.md) |  |  |

### Return type

[**ListBrandedCallingIdentityNumbers200Response**](ListBrandedCallingIdentityNumbers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## confirm_branded_calling_authorizer_email

> <BrandedCallingIdentity> confirm_branded_calling_authorizer_email(id, confirm_branded_calling_authorizer_email_request)

Confirm the authorizer's code

The last customer step. On success the stored references are filed and the identity is submitted to carrier vetting in the same call (`in_review`). If a later step fails the identity stays `pending_email_verification` with the email already verified; calling again resumes from that step. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BrandedCallingApi.new
id = 'id_example' # String | 
confirm_branded_calling_authorizer_email_request = Zernio::ConfirmBrandedCallingAuthorizerEmailRequest.new({code: 'code_example'}) # ConfirmBrandedCallingAuthorizerEmailRequest | 

begin
  # Confirm the authorizer's code
  result = api_instance.confirm_branded_calling_authorizer_email(id, confirm_branded_calling_authorizer_email_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BrandedCallingApi->confirm_branded_calling_authorizer_email: #{e}"
end
```

#### Using the confirm_branded_calling_authorizer_email_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BrandedCallingIdentity>, Integer, Hash)> confirm_branded_calling_authorizer_email_with_http_info(id, confirm_branded_calling_authorizer_email_request)

```ruby
begin
  # Confirm the authorizer's code
  data, status_code, headers = api_instance.confirm_branded_calling_authorizer_email_with_http_info(id, confirm_branded_calling_authorizer_email_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BrandedCallingIdentity>
rescue Zernio::ApiError => e
  puts "Error when calling BrandedCallingApi->confirm_branded_calling_authorizer_email_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **confirm_branded_calling_authorizer_email_request** | [**ConfirmBrandedCallingAuthorizerEmailRequest**](ConfirmBrandedCallingAuthorizerEmailRequest.md) |  |  |

### Return type

[**BrandedCallingIdentity**](BrandedCallingIdentity.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_branded_calling_enterprise

> <BrandedCallingEnterprise> create_branded_calling_enterprise(create_branded_calling_enterprise_request, opts)

Register a business for Branded Calling

Stores the legal entity behind your caller identities. Nothing is filed with the carrier until the business's first identity passes review. Only businesses registered in the US or Canada qualify (a FEIN or Canadian equivalent is required); any other country returns `422`. Send an `Idempotency-Key` so a retry replays the original response instead of registering the business twice. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BrandedCallingApi.new
create_branded_calling_enterprise_request = Zernio::CreateBrandedCallingEnterpriseRequest.new({legal_name: 'legal_name_example', doing_business_as: 'doing_business_as_example', organization_type: 'commercial', organization_legal_type: 'corporation', country_code: 'country_code_example', jurisdiction_of_incorporation: 'jurisdiction_of_incorporation_example', website: 'website_example', fein: 'fein_example', industry: 'industry_example', number_of_employees: '1-10', organization_contact: Zernio::BrandedCallingContact.new({first_name: 'first_name_example', last_name: 'last_name_example', email: 'email_example', phone_number: 'phone_number_example'}), billing_contact: Zernio::BrandedCallingContact.new({first_name: 'first_name_example', last_name: 'last_name_example', email: 'email_example', phone_number: 'phone_number_example'}), physical_address: Zernio::BrandedCallingAddress.new({street_address: 'street_address_example', city: 'city_example', administrative_area: 'administrative_area_example', postal_code: 'postal_code_example', country: 'country_example'}), billing_address: Zernio::BrandedCallingAddress.new({street_address: 'street_address_example', city: 'city_example', administrative_area: 'administrative_area_example', postal_code: 'postal_code_example', country: 'country_example'})}) # CreateBrandedCallingEnterpriseRequest | 
opts = {
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes retries safe. Same key + same body replays the original response; same key + different body → 422; key still processing → 409.
}

begin
  # Register a business for Branded Calling
  result = api_instance.create_branded_calling_enterprise(create_branded_calling_enterprise_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BrandedCallingApi->create_branded_calling_enterprise: #{e}"
end
```

#### Using the create_branded_calling_enterprise_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BrandedCallingEnterprise>, Integer, Hash)> create_branded_calling_enterprise_with_http_info(create_branded_calling_enterprise_request, opts)

```ruby
begin
  # Register a business for Branded Calling
  data, status_code, headers = api_instance.create_branded_calling_enterprise_with_http_info(create_branded_calling_enterprise_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BrandedCallingEnterprise>
rescue Zernio::ApiError => e
  puts "Error when calling BrandedCallingApi->create_branded_calling_enterprise_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_branded_calling_enterprise_request** | [**CreateBrandedCallingEnterpriseRequest**](CreateBrandedCallingEnterpriseRequest.md) |  |  |
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes retries safe. Same key + same body replays the original response; same key + different body → 422; key still processing → 409. | [optional] |

### Return type

[**BrandedCallingEnterprise**](BrandedCallingEnterprise.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_branded_calling_identity

> <BrandedCallingIdentity> create_branded_calling_identity(create_branded_calling_identity_request, opts)

Create a caller identity

A caller identity is what the callee sees: display name, logo and call reasons, backed by a registered business and three references the carrier vetting team phones. It starts in Zernio review (`requested`). Once approved, the carrier emails the authorizer a 6-digit code; confirm it with the verify-email endpoint and the identity goes into carrier vetting on its own. Track it with `GET` or the `branded_calling.identity.status_updated` webhook.  Billing: $100 per identity per month, the first month charged when the identity is filed with the carrier and not refunded if the carrier rejects it, then monthly while the identity exists. Branded calls add $0.10 each, counted on every outbound call from a verified branded number to a US destination (whether or not the callee's carrier displayed the branding); the surcharge shows as `brandedCallUSD` on the call's billing and in `GET /v1/voice/calls/estimate` when you pass `from`.  Run `POST /v1/branded-calling/identities/preflight` with the same body first to catch what the review would bounce. Send an `Idempotency-Key` so a retry replays the original response instead of creating a second identity. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BrandedCallingApi.new
create_branded_calling_identity_request = Zernio::CreateBrandedCallingIdentityRequest.new({enterprise_id: 'enterprise_id_example', display_name: 'display_name_example', call_reasons: ['call_reasons_example'], authorizer: Zernio::CreateBrandedCallingIdentityRequestAuthorizer.new({name: 'name_example', email: 'email_example'}), references: Zernio::BrandedCallingReferences.new({business: [Zernio::BrandedCallingReference.new({full_name: 'full_name_example', phone_number: 'phone_number_example', email: 'email_example', timezone: 'timezone_example'})], financial: Zernio::BrandedCallingReference.new({full_name: 'full_name_example', phone_number: 'phone_number_example', email: 'email_example', timezone: 'timezone_example'})})}) # CreateBrandedCallingIdentityRequest | 
opts = {
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes retries safe. Same key + same body replays the original response; same key + different body → 422; key still processing → 409.
}

begin
  # Create a caller identity
  result = api_instance.create_branded_calling_identity(create_branded_calling_identity_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BrandedCallingApi->create_branded_calling_identity: #{e}"
end
```

#### Using the create_branded_calling_identity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BrandedCallingIdentity>, Integer, Hash)> create_branded_calling_identity_with_http_info(create_branded_calling_identity_request, opts)

```ruby
begin
  # Create a caller identity
  data, status_code, headers = api_instance.create_branded_calling_identity_with_http_info(create_branded_calling_identity_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BrandedCallingIdentity>
rescue Zernio::ApiError => e
  puts "Error when calling BrandedCallingApi->create_branded_calling_identity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_branded_calling_identity_request** | [**CreateBrandedCallingIdentityRequest**](CreateBrandedCallingIdentityRequest.md) |  |  |
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes retries safe. Same key + same body replays the original response; same key + different body → 422; key still processing → 409. | [optional] |

### Return type

[**BrandedCallingIdentity**](BrandedCallingIdentity.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_branded_calling_enterprise

> <DeleteBrandedCallingEnterprise200Response> delete_branded_calling_enterprise(id)

Delete a registered business

Refused while the business still has caller identities (delete those first).

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BrandedCallingApi.new
id = 'id_example' # String | 

begin
  # Delete a registered business
  result = api_instance.delete_branded_calling_enterprise(id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BrandedCallingApi->delete_branded_calling_enterprise: #{e}"
end
```

#### Using the delete_branded_calling_enterprise_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteBrandedCallingEnterprise200Response>, Integer, Hash)> delete_branded_calling_enterprise_with_http_info(id)

```ruby
begin
  # Delete a registered business
  data, status_code, headers = api_instance.delete_branded_calling_enterprise_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteBrandedCallingEnterprise200Response>
rescue Zernio::ApiError => e
  puts "Error when calling BrandedCallingApi->delete_branded_calling_enterprise_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**DeleteBrandedCallingEnterprise200Response**](DeleteBrandedCallingEnterprise200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_branded_calling_identity

> <DeleteBrandedCallingEnterprise200Response> delete_branded_calling_identity(id)

Delete a caller identity

Detaches its numbers and removes the identity at the carrier, which ends the monthly fee. Refused while an infringement claim is open.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BrandedCallingApi.new
id = 'id_example' # String | 

begin
  # Delete a caller identity
  result = api_instance.delete_branded_calling_identity(id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BrandedCallingApi->delete_branded_calling_identity: #{e}"
end
```

#### Using the delete_branded_calling_identity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteBrandedCallingEnterprise200Response>, Integer, Hash)> delete_branded_calling_identity_with_http_info(id)

```ruby
begin
  # Delete a caller identity
  data, status_code, headers = api_instance.delete_branded_calling_identity_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteBrandedCallingEnterprise200Response>
rescue Zernio::ApiError => e
  puts "Error when calling BrandedCallingApi->delete_branded_calling_identity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**DeleteBrandedCallingEnterprise200Response**](DeleteBrandedCallingEnterprise200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## detach_branded_calling_numbers

> <DetachBrandedCallingNumbers200Response> detach_branded_calling_numbers(id, detach_branded_calling_numbers_request)

Detach numbers from an identity

Deregisters the numbers at the carrier and frees them for another identity. Up to 100 per call.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BrandedCallingApi.new
id = 'id_example' # String | 
detach_branded_calling_numbers_request = Zernio::DetachBrandedCallingNumbersRequest.new({phone_numbers: ['phone_numbers_example']}) # DetachBrandedCallingNumbersRequest | 

begin
  # Detach numbers from an identity
  result = api_instance.detach_branded_calling_numbers(id, detach_branded_calling_numbers_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BrandedCallingApi->detach_branded_calling_numbers: #{e}"
end
```

#### Using the detach_branded_calling_numbers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DetachBrandedCallingNumbers200Response>, Integer, Hash)> detach_branded_calling_numbers_with_http_info(id, detach_branded_calling_numbers_request)

```ruby
begin
  # Detach numbers from an identity
  data, status_code, headers = api_instance.detach_branded_calling_numbers_with_http_info(id, detach_branded_calling_numbers_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetachBrandedCallingNumbers200Response>
rescue Zernio::ApiError => e
  puts "Error when calling BrandedCallingApi->detach_branded_calling_numbers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **detach_branded_calling_numbers_request** | [**DetachBrandedCallingNumbersRequest**](DetachBrandedCallingNumbersRequest.md) |  |  |

### Return type

[**DetachBrandedCallingNumbers200Response**](DetachBrandedCallingNumbers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_branded_calling_enterprise

> <BrandedCallingEnterprise> get_branded_calling_enterprise(id)

Get a registered business

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BrandedCallingApi.new
id = 'id_example' # String | 

begin
  # Get a registered business
  result = api_instance.get_branded_calling_enterprise(id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BrandedCallingApi->get_branded_calling_enterprise: #{e}"
end
```

#### Using the get_branded_calling_enterprise_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BrandedCallingEnterprise>, Integer, Hash)> get_branded_calling_enterprise_with_http_info(id)

```ruby
begin
  # Get a registered business
  data, status_code, headers = api_instance.get_branded_calling_enterprise_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BrandedCallingEnterprise>
rescue Zernio::ApiError => e
  puts "Error when calling BrandedCallingApi->get_branded_calling_enterprise_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**BrandedCallingEnterprise**](BrandedCallingEnterprise.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_branded_calling_identity

> <BrandedCallingIdentity> get_branded_calling_identity(id)

Get a caller identity

Poll this for review and vetting progress, or subscribe to `branded_calling.identity.status_updated`.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BrandedCallingApi.new
id = 'id_example' # String | 

begin
  # Get a caller identity
  result = api_instance.get_branded_calling_identity(id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BrandedCallingApi->get_branded_calling_identity: #{e}"
end
```

#### Using the get_branded_calling_identity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BrandedCallingIdentity>, Integer, Hash)> get_branded_calling_identity_with_http_info(id)

```ruby
begin
  # Get a caller identity
  data, status_code, headers = api_instance.get_branded_calling_identity_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BrandedCallingIdentity>
rescue Zernio::ApiError => e
  puts "Error when calling BrandedCallingApi->get_branded_calling_identity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**BrandedCallingIdentity**](BrandedCallingIdentity.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_branded_calling_call_reasons

> <ListBrandedCallingCallReasons200Response> list_branded_calling_call_reasons

List pre-approved call reasons

The carrier catalogue of call reasons that pass vetting automatically. Any other wording is allowed on an identity but is vetted by hand.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BrandedCallingApi.new

begin
  # List pre-approved call reasons
  result = api_instance.list_branded_calling_call_reasons
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BrandedCallingApi->list_branded_calling_call_reasons: #{e}"
end
```

#### Using the list_branded_calling_call_reasons_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBrandedCallingCallReasons200Response>, Integer, Hash)> list_branded_calling_call_reasons_with_http_info

```ruby
begin
  # List pre-approved call reasons
  data, status_code, headers = api_instance.list_branded_calling_call_reasons_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBrandedCallingCallReasons200Response>
rescue Zernio::ApiError => e
  puts "Error when calling BrandedCallingApi->list_branded_calling_call_reasons_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListBrandedCallingCallReasons200Response**](ListBrandedCallingCallReasons200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_branded_calling_enterprises

> <ListBrandedCallingEnterprises200Response> list_branded_calling_enterprises

List registered businesses

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BrandedCallingApi.new

begin
  # List registered businesses
  result = api_instance.list_branded_calling_enterprises
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BrandedCallingApi->list_branded_calling_enterprises: #{e}"
end
```

#### Using the list_branded_calling_enterprises_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBrandedCallingEnterprises200Response>, Integer, Hash)> list_branded_calling_enterprises_with_http_info

```ruby
begin
  # List registered businesses
  data, status_code, headers = api_instance.list_branded_calling_enterprises_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBrandedCallingEnterprises200Response>
rescue Zernio::ApiError => e
  puts "Error when calling BrandedCallingApi->list_branded_calling_enterprises_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListBrandedCallingEnterprises200Response**](ListBrandedCallingEnterprises200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_branded_calling_identities

> <ListBrandedCallingIdentities200Response> list_branded_calling_identities

List caller identities

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BrandedCallingApi.new

begin
  # List caller identities
  result = api_instance.list_branded_calling_identities
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BrandedCallingApi->list_branded_calling_identities: #{e}"
end
```

#### Using the list_branded_calling_identities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBrandedCallingIdentities200Response>, Integer, Hash)> list_branded_calling_identities_with_http_info

```ruby
begin
  # List caller identities
  data, status_code, headers = api_instance.list_branded_calling_identities_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBrandedCallingIdentities200Response>
rescue Zernio::ApiError => e
  puts "Error when calling BrandedCallingApi->list_branded_calling_identities_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListBrandedCallingIdentities200Response**](ListBrandedCallingIdentities200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_branded_calling_identity_numbers

> <ListBrandedCallingIdentityNumbers200Response> list_branded_calling_identity_numbers(id)

List the numbers on a caller identity

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BrandedCallingApi.new
id = 'id_example' # String | 

begin
  # List the numbers on a caller identity
  result = api_instance.list_branded_calling_identity_numbers(id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BrandedCallingApi->list_branded_calling_identity_numbers: #{e}"
end
```

#### Using the list_branded_calling_identity_numbers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBrandedCallingIdentityNumbers200Response>, Integer, Hash)> list_branded_calling_identity_numbers_with_http_info(id)

```ruby
begin
  # List the numbers on a caller identity
  data, status_code, headers = api_instance.list_branded_calling_identity_numbers_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBrandedCallingIdentityNumbers200Response>
rescue Zernio::ApiError => e
  puts "Error when calling BrandedCallingApi->list_branded_calling_identity_numbers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**ListBrandedCallingIdentityNumbers200Response**](ListBrandedCallingIdentityNumbers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## preflight_branded_calling_identity

> <PreflightBrandedCallingIdentity200Response> preflight_branded_calling_identity(preflight_branded_calling_identity_request)

Dry-run a caller identity before creating it

Validates the exact body `POST /v1/branded-calling/identities` takes and runs the same deterministic lints the review runs on it without creating anything, with the same codes and fields the queued identity's findings carry. A `block` finding is what the review would bounce (two references sharing a phone, a reference inside the business, an invalid timezone); a `warn` finding slows vetting (a display name that does not read as the business, a call reason outside the carrier catalogue, a public-mailbox authorizer, a logo that does not answer). `ok` is true when there is no `block`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BrandedCallingApi.new
preflight_branded_calling_identity_request = Zernio::PreflightBrandedCallingIdentityRequest.new({enterprise_id: 'enterprise_id_example', display_name: 'display_name_example', call_reasons: ['call_reasons_example'], authorizer: Zernio::PreflightBrandedCallingIdentityRequestAuthorizer.new({name: 'name_example', email: 'email_example'}), references: Zernio::BrandedCallingReferences.new({business: [Zernio::BrandedCallingReference.new({full_name: 'full_name_example', phone_number: 'phone_number_example', email: 'email_example', timezone: 'timezone_example'})], financial: Zernio::BrandedCallingReference.new({full_name: 'full_name_example', phone_number: 'phone_number_example', email: 'email_example', timezone: 'timezone_example'})})}) # PreflightBrandedCallingIdentityRequest | 

begin
  # Dry-run a caller identity before creating it
  result = api_instance.preflight_branded_calling_identity(preflight_branded_calling_identity_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BrandedCallingApi->preflight_branded_calling_identity: #{e}"
end
```

#### Using the preflight_branded_calling_identity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PreflightBrandedCallingIdentity200Response>, Integer, Hash)> preflight_branded_calling_identity_with_http_info(preflight_branded_calling_identity_request)

```ruby
begin
  # Dry-run a caller identity before creating it
  data, status_code, headers = api_instance.preflight_branded_calling_identity_with_http_info(preflight_branded_calling_identity_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PreflightBrandedCallingIdentity200Response>
rescue Zernio::ApiError => e
  puts "Error when calling BrandedCallingApi->preflight_branded_calling_identity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **preflight_branded_calling_identity_request** | [**PreflightBrandedCallingIdentityRequest**](PreflightBrandedCallingIdentityRequest.md) |  |  |

### Return type

[**PreflightBrandedCallingIdentity200Response**](PreflightBrandedCallingIdentity200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## resend_branded_calling_authorizer_code

> <ResendBrandedCallingAuthorizerCode200Response> resend_branded_calling_authorizer_code(id)

Resend the authorizer's code

Emails the authorizer a fresh 6-digit code (the previous one stops working). Only while the identity is `pending_email_verification`.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BrandedCallingApi.new
id = 'id_example' # String | 

begin
  # Resend the authorizer's code
  result = api_instance.resend_branded_calling_authorizer_code(id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BrandedCallingApi->resend_branded_calling_authorizer_code: #{e}"
end
```

#### Using the resend_branded_calling_authorizer_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResendBrandedCallingAuthorizerCode200Response>, Integer, Hash)> resend_branded_calling_authorizer_code_with_http_info(id)

```ruby
begin
  # Resend the authorizer's code
  data, status_code, headers = api_instance.resend_branded_calling_authorizer_code_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResendBrandedCallingAuthorizerCode200Response>
rescue Zernio::ApiError => e
  puts "Error when calling BrandedCallingApi->resend_branded_calling_authorizer_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**ResendBrandedCallingAuthorizerCode200Response**](ResendBrandedCallingAuthorizerCode200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_branded_calling_identity

> <BrandedCallingIdentity> update_branded_calling_identity(id, update_branded_calling_identity_request)

Edit or resubmit a caller identity

Allowed while the identity is `requested`, `changes_requested` or `rejected`. Answering a change request (send `reviewAnswers` keyed by point id, and any edited fields) puts it back in review. On a carrier rejection the edits are applied at the carrier and the identity is resubmitted straight away. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BrandedCallingApi.new
id = 'id_example' # String | 
update_branded_calling_identity_request = Zernio::UpdateBrandedCallingIdentityRequest.new # UpdateBrandedCallingIdentityRequest | 

begin
  # Edit or resubmit a caller identity
  result = api_instance.update_branded_calling_identity(id, update_branded_calling_identity_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BrandedCallingApi->update_branded_calling_identity: #{e}"
end
```

#### Using the update_branded_calling_identity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BrandedCallingIdentity>, Integer, Hash)> update_branded_calling_identity_with_http_info(id, update_branded_calling_identity_request)

```ruby
begin
  # Edit or resubmit a caller identity
  data, status_code, headers = api_instance.update_branded_calling_identity_with_http_info(id, update_branded_calling_identity_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BrandedCallingIdentity>
rescue Zernio::ApiError => e
  puts "Error when calling BrandedCallingApi->update_branded_calling_identity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **update_branded_calling_identity_request** | [**UpdateBrandedCallingIdentityRequest**](UpdateBrandedCallingIdentityRequest.md) |  |  |

### Return type

[**BrandedCallingIdentity**](BrandedCallingIdentity.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

