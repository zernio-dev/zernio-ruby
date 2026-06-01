# Zernio::WhatsAppPhoneNumbersApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_whats_app_number_info**](WhatsAppPhoneNumbersApi.md#get_whats_app_number_info) | **GET** /v1/whatsapp/number-info | Get number status |
| [**get_whats_app_number_kyc_form**](WhatsAppPhoneNumbersApi.md#get_whats_app_number_kyc_form) | **GET** /v1/whatsapp/phone-numbers/kyc | Get regulated-number KYC form spec |
| [**get_whats_app_phone_number**](WhatsAppPhoneNumbersApi.md#get_whats_app_phone_number) | **GET** /v1/whatsapp/phone-numbers/{phoneNumberId} | Get phone number |
| [**get_whats_app_phone_numbers**](WhatsAppPhoneNumbersApi.md#get_whats_app_phone_numbers) | **GET** /v1/whatsapp/phone-numbers | List phone numbers |
| [**list_whats_app_number_countries**](WhatsAppPhoneNumbersApi.md#list_whats_app_number_countries) | **GET** /v1/whatsapp/phone-numbers/countries | List offerable number countries |
| [**purchase_whats_app_phone_number**](WhatsAppPhoneNumbersApi.md#purchase_whats_app_phone_number) | **POST** /v1/whatsapp/phone-numbers/purchase | Purchase phone number |
| [**release_whats_app_phone_number**](WhatsAppPhoneNumbersApi.md#release_whats_app_phone_number) | **DELETE** /v1/whatsapp/phone-numbers/{phoneNumberId} | Release phone number |
| [**search_available_whats_app_numbers**](WhatsAppPhoneNumbersApi.md#search_available_whats_app_numbers) | **GET** /v1/whatsapp/phone-numbers/available | Search available numbers to purchase |
| [**submit_whats_app_number_kyc**](WhatsAppPhoneNumbersApi.md#submit_whats_app_number_kyc) | **POST** /v1/whatsapp/phone-numbers/kyc | Submit regulated-number KYC |


## get_whats_app_number_info

> <GetWhatsAppNumberInfo200Response> get_whats_app_number_info(account_id)

Get number status

Live snapshot of a connected number straight from Meta: the phone-number node (display number, display name + approval, quality rating, messaging-limit tier, throughput, official-business badge, connection status, health_status) and its owning WhatsApp Business Account (name, business verification, timezone, health_status). Fetched live because Meta updates quality/tier/name/health over time; the call also refreshes the cached values shown on the connection card. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppPhoneNumbersApi.new
account_id = 'account_id_example' # String | WhatsApp social account ID

begin
  # Get number status
  result = api_instance.get_whats_app_number_info(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->get_whats_app_number_info: #{e}"
end
```

#### Using the get_whats_app_number_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWhatsAppNumberInfo200Response>, Integer, Hash)> get_whats_app_number_info_with_http_info(account_id)

```ruby
begin
  # Get number status
  data, status_code, headers = api_instance.get_whats_app_number_info_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWhatsAppNumberInfo200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->get_whats_app_number_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account ID |  |

### Return type

[**GetWhatsAppNumberInfo200Response**](GetWhatsAppNumberInfo200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_whats_app_number_kyc_form

> <GetWhatsAppNumberKycForm200Response> get_whats_app_number_kyc_form(country, profile_id)

Get regulated-number KYC form spec

For a Tier 3/4 country, the fields the end customer must provide (Telnyx regulatory requirements) before a number can be ordered: text, date, address, or file (document) per requirement. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppPhoneNumbersApi.new
country = 'country_example' # String | 
profile_id = 'profile_id_example' # String | 

begin
  # Get regulated-number KYC form spec
  result = api_instance.get_whats_app_number_kyc_form(country, profile_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->get_whats_app_number_kyc_form: #{e}"
end
```

#### Using the get_whats_app_number_kyc_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWhatsAppNumberKycForm200Response>, Integer, Hash)> get_whats_app_number_kyc_form_with_http_info(country, profile_id)

```ruby
begin
  # Get regulated-number KYC form spec
  data, status_code, headers = api_instance.get_whats_app_number_kyc_form_with_http_info(country, profile_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWhatsAppNumberKycForm200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->get_whats_app_number_kyc_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** |  |  |
| **profile_id** | **String** |  |  |

### Return type

[**GetWhatsAppNumberKycForm200Response**](GetWhatsAppNumberKycForm200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_whats_app_phone_number

> <GetWhatsAppPhoneNumber200Response> get_whats_app_phone_number(phone_number_id)

Get phone number

Retrieve the current status of a purchased phone number. Poll this to track Meta pre-verification (US sync path) and, for regulated (Tier 3/4) numbers, the async lifecycle: pending_regulatory → active (or regulatory_declined). When a regulated number has an Onfido ID step, `onfidoVerificationUrl` appears here once the order is placed — forward it to the end user. (Or subscribe to the whatsapp.number.* webhooks instead of polling.) 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppPhoneNumbersApi.new
phone_number_id = 'phone_number_id_example' # String | Phone number record ID

begin
  # Get phone number
  result = api_instance.get_whats_app_phone_number(phone_number_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->get_whats_app_phone_number: #{e}"
end
```

#### Using the get_whats_app_phone_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWhatsAppPhoneNumber200Response>, Integer, Hash)> get_whats_app_phone_number_with_http_info(phone_number_id)

```ruby
begin
  # Get phone number
  data, status_code, headers = api_instance.get_whats_app_phone_number_with_http_info(phone_number_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWhatsAppPhoneNumber200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->get_whats_app_phone_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number_id** | **String** | Phone number record ID |  |

### Return type

[**GetWhatsAppPhoneNumber200Response**](GetWhatsAppPhoneNumber200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_whats_app_phone_numbers

> <GetWhatsAppPhoneNumbers200Response> get_whats_app_phone_numbers(opts)

List phone numbers

List all WhatsApp phone numbers purchased by the authenticated user. By default, released numbers are excluded. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppPhoneNumbersApi.new
opts = {
  status: 'provisioning', # String | Filter by status (by default excludes released numbers)
  profile_id: 'profile_id_example' # String | Filter by profile
}

begin
  # List phone numbers
  result = api_instance.get_whats_app_phone_numbers(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->get_whats_app_phone_numbers: #{e}"
end
```

#### Using the get_whats_app_phone_numbers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWhatsAppPhoneNumbers200Response>, Integer, Hash)> get_whats_app_phone_numbers_with_http_info(opts)

```ruby
begin
  # List phone numbers
  data, status_code, headers = api_instance.get_whats_app_phone_numbers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWhatsAppPhoneNumbers200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->get_whats_app_phone_numbers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Filter by status (by default excludes released numbers) | [optional] |
| **profile_id** | **String** | Filter by profile | [optional] |

### Return type

[**GetWhatsAppPhoneNumbers200Response**](GetWhatsAppPhoneNumbers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_whats_app_number_countries

> <ListWhatsAppNumberCountries200Response> list_whats_app_number_countries

List offerable number countries

The WhatsApp number countries available to purchase, each with its flat monthly price (cents), regulatory tier, whether it needs end-user KYC (Tier 3/4), and whether outbound calling is available (not BIC-blocked). Drives the country picker. Tier-4 countries appear only when enabled. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppPhoneNumbersApi.new

begin
  # List offerable number countries
  result = api_instance.list_whats_app_number_countries
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->list_whats_app_number_countries: #{e}"
end
```

#### Using the list_whats_app_number_countries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWhatsAppNumberCountries200Response>, Integer, Hash)> list_whats_app_number_countries_with_http_info

```ruby
begin
  # List offerable number countries
  data, status_code, headers = api_instance.list_whats_app_number_countries_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWhatsAppNumberCountries200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->list_whats_app_number_countries_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListWhatsAppNumberCountries200Response**](ListWhatsAppNumberCountries200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## purchase_whats_app_phone_number

> <PurchaseWhatsAppPhoneNumber200Response> purchase_whats_app_phone_number(purchase_whats_app_phone_number_request)

Purchase phone number

Initiate purchasing a WhatsApp phone number. Payment-first flow: the user does not pick a specific number. The system either creates a Stripe Checkout Session (first number) or increments the existing subscription quantity and provisions inline (subsequent numbers).  Requires a paid plan. The maximum number of phone numbers is determined by the user's plan. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppPhoneNumbersApi.new
purchase_whats_app_phone_number_request = Zernio::PurchaseWhatsAppPhoneNumberRequest.new({profile_id: 'profile_id_example'}) # PurchaseWhatsAppPhoneNumberRequest | 

begin
  # Purchase phone number
  result = api_instance.purchase_whats_app_phone_number(purchase_whats_app_phone_number_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->purchase_whats_app_phone_number: #{e}"
end
```

#### Using the purchase_whats_app_phone_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PurchaseWhatsAppPhoneNumber200Response>, Integer, Hash)> purchase_whats_app_phone_number_with_http_info(purchase_whats_app_phone_number_request)

```ruby
begin
  # Purchase phone number
  data, status_code, headers = api_instance.purchase_whats_app_phone_number_with_http_info(purchase_whats_app_phone_number_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PurchaseWhatsAppPhoneNumber200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->purchase_whats_app_phone_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **purchase_whats_app_phone_number_request** | [**PurchaseWhatsAppPhoneNumberRequest**](PurchaseWhatsAppPhoneNumberRequest.md) |  |  |

### Return type

[**PurchaseWhatsAppPhoneNumber200Response**](PurchaseWhatsAppPhoneNumber200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## release_whats_app_phone_number

> <ReleaseWhatsAppPhoneNumber200Response> release_whats_app_phone_number(phone_number_id)

Release phone number

Release a purchased phone number. This will: 1. Disconnect any linked WhatsApp social account 2. Decrement the Stripe subscription quantity (or cancel if last number) 3. Release the number from Telnyx 4. Mark the number as released 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppPhoneNumbersApi.new
phone_number_id = 'phone_number_id_example' # String | Phone number record ID

begin
  # Release phone number
  result = api_instance.release_whats_app_phone_number(phone_number_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->release_whats_app_phone_number: #{e}"
end
```

#### Using the release_whats_app_phone_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReleaseWhatsAppPhoneNumber200Response>, Integer, Hash)> release_whats_app_phone_number_with_http_info(phone_number_id)

```ruby
begin
  # Release phone number
  data, status_code, headers = api_instance.release_whats_app_phone_number_with_http_info(phone_number_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReleaseWhatsAppPhoneNumber200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->release_whats_app_phone_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number_id** | **String** | Phone number record ID |  |

### Return type

[**ReleaseWhatsAppPhoneNumber200Response**](ReleaseWhatsAppPhoneNumber200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_available_whats_app_numbers

> <SearchAvailableWhatsAppNumbers200Response> search_available_whats_app_numbers(opts)

Search available numbers to purchase

Search the provider's inventory for numbers available to purchase in a country (default US). Optional filters narrow the results. The country must be offerable (see GET /v1/whatsapp/phone-numbers/countries). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppPhoneNumbersApi.new
opts = {
  country: 'country_example', # String | 
  type: 'type_example', # String | Number type; defaults to the country's WhatsApp-safe type
  prefix: 'prefix_example', # String | Area code
  locality: 'locality_example', # String | City
  contains: 'contains_example', # String | Pattern to match within the number
  limit: 56 # Integer | 
}

begin
  # Search available numbers to purchase
  result = api_instance.search_available_whats_app_numbers(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->search_available_whats_app_numbers: #{e}"
end
```

#### Using the search_available_whats_app_numbers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchAvailableWhatsAppNumbers200Response>, Integer, Hash)> search_available_whats_app_numbers_with_http_info(opts)

```ruby
begin
  # Search available numbers to purchase
  data, status_code, headers = api_instance.search_available_whats_app_numbers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchAvailableWhatsAppNumbers200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->search_available_whats_app_numbers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** |  | [optional][default to &#39;US&#39;] |
| **type** | **String** | Number type; defaults to the country&#39;s WhatsApp-safe type | [optional] |
| **prefix** | **String** | Area code | [optional] |
| **locality** | **String** | City | [optional] |
| **contains** | **String** | Pattern to match within the number | [optional] |
| **limit** | **Integer** |  | [optional][default to 20] |

### Return type

[**SearchAvailableWhatsAppNumbers200Response**](SearchAvailableWhatsAppNumbers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## submit_whats_app_number_kyc

> <SubmitWhatsAppNumberKyc200Response> submit_whats_app_number_kyc(submit_whats_app_number_kyc_request)

Submit regulated-number KYC

Submit the end customer's KYC (textual values, uploaded documents, address) for a Tier 3/4 country. Documents are streamed straight to the number provider and are not stored by Zernio. Builds + submits a regulatory requirement group and claims a pending_regulatory slot; the number is ordered + activated once the provider approves (asynchronous). Idempotent per (owner, country). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppPhoneNumbersApi.new
submit_whats_app_number_kyc_request = Zernio::SubmitWhatsAppNumberKycRequest.new({profile_id: 'profile_id_example', country: 'country_example'}) # SubmitWhatsAppNumberKycRequest | 

begin
  # Submit regulated-number KYC
  result = api_instance.submit_whats_app_number_kyc(submit_whats_app_number_kyc_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->submit_whats_app_number_kyc: #{e}"
end
```

#### Using the submit_whats_app_number_kyc_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubmitWhatsAppNumberKyc200Response>, Integer, Hash)> submit_whats_app_number_kyc_with_http_info(submit_whats_app_number_kyc_request)

```ruby
begin
  # Submit regulated-number KYC
  data, status_code, headers = api_instance.submit_whats_app_number_kyc_with_http_info(submit_whats_app_number_kyc_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubmitWhatsAppNumberKyc200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->submit_whats_app_number_kyc_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **submit_whats_app_number_kyc_request** | [**SubmitWhatsAppNumberKycRequest**](SubmitWhatsAppNumberKycRequest.md) |  |  |

### Return type

[**SubmitWhatsAppNumberKyc200Response**](SubmitWhatsAppNumberKyc200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

