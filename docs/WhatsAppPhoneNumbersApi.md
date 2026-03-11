# Late::WhatsAppPhoneNumbersApi

All URIs are relative to *https://getlate.dev/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_preverified_whats_app_numbers**](WhatsAppPhoneNumbersApi.md#get_preverified_whats_app_numbers) | **GET** /v1/whatsapp/phone-numbers/preverified | Get pre-verified numbers |
| [**get_whats_app_phone_number**](WhatsAppPhoneNumbersApi.md#get_whats_app_phone_number) | **GET** /v1/whatsapp/phone-numbers/{phoneNumberId} | Get phone number |
| [**get_whats_app_phone_numbers**](WhatsAppPhoneNumbersApi.md#get_whats_app_phone_numbers) | **GET** /v1/whatsapp/phone-numbers | List phone numbers |
| [**purchase_whats_app_phone_number**](WhatsAppPhoneNumbersApi.md#purchase_whats_app_phone_number) | **POST** /v1/whatsapp/phone-numbers/purchase | Purchase phone number |
| [**release_whats_app_phone_number**](WhatsAppPhoneNumbersApi.md#release_whats_app_phone_number) | **DELETE** /v1/whatsapp/phone-numbers/{phoneNumberId} | Release phone number |
| [**request_whats_app_verification_code**](WhatsAppPhoneNumbersApi.md#request_whats_app_verification_code) | **POST** /v1/whatsapp/phone-numbers/{phoneNumberId}/request-code | Request OTP |
| [**search_available_whats_app_numbers**](WhatsAppPhoneNumbersApi.md#search_available_whats_app_numbers) | **GET** /v1/whatsapp/phone-numbers/available | Search available numbers |
| [**verify_whats_app_phone_number**](WhatsAppPhoneNumbersApi.md#verify_whats_app_phone_number) | **POST** /v1/whatsapp/phone-numbers/{phoneNumberId}/verify | Verify OTP |


## get_preverified_whats_app_numbers

> <GetPreverifiedWhatsAppNumbers200Response> get_preverified_whats_app_numbers(profile_id)

Get pre-verified numbers

Returns the user's pre-verified phone number IDs that are ready for OTP-free Embedded Signup. Only returns numbers with verified Meta status and non-expired verification. 

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::WhatsAppPhoneNumbersApi.new
profile_id = 'profile_id_example' # String | Profile ID to filter by

begin
  # Get pre-verified numbers
  result = api_instance.get_preverified_whats_app_numbers(profile_id)
  p result
rescue Late::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->get_preverified_whats_app_numbers: #{e}"
end
```

#### Using the get_preverified_whats_app_numbers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPreverifiedWhatsAppNumbers200Response>, Integer, Hash)> get_preverified_whats_app_numbers_with_http_info(profile_id)

```ruby
begin
  # Get pre-verified numbers
  data, status_code, headers = api_instance.get_preverified_whats_app_numbers_with_http_info(profile_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPreverifiedWhatsAppNumbers200Response>
rescue Late::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->get_preverified_whats_app_numbers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | Profile ID to filter by |  |

### Return type

[**GetPreverifiedWhatsAppNumbers200Response**](GetPreverifiedWhatsAppNumbers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_whats_app_phone_number

> <GetWhatsAppPhoneNumber200Response> get_whats_app_phone_number(phone_number_id)

Get phone number

Retrieve the current status of a purchased phone number. Used to poll for Meta pre-verification completion after purchase. 

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::WhatsAppPhoneNumbersApi.new
phone_number_id = 'phone_number_id_example' # String | Phone number record ID

begin
  # Get phone number
  result = api_instance.get_whats_app_phone_number(phone_number_id)
  p result
rescue Late::ApiError => e
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
rescue Late::ApiError => e
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
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::WhatsAppPhoneNumbersApi.new
opts = {
  status: 'provisioning', # String | Filter by status (by default excludes released numbers)
  profile_id: 'profile_id_example' # String | Filter by profile
}

begin
  # List phone numbers
  result = api_instance.get_whats_app_phone_numbers(opts)
  p result
rescue Late::ApiError => e
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
rescue Late::ApiError => e
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


## purchase_whats_app_phone_number

> <PurchaseWhatsAppPhoneNumber200Response> purchase_whats_app_phone_number(purchase_whats_app_phone_number_request)

Purchase phone number

Initiate purchasing a WhatsApp phone number. Payment-first flow: the user does not pick a specific number. The system either creates a Stripe Checkout Session (first number) or increments the existing subscription quantity and provisions inline (subsequent numbers).  Requires a paid plan. The maximum number of phone numbers is determined by the user's plan. 

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::WhatsAppPhoneNumbersApi.new
purchase_whats_app_phone_number_request = Late::PurchaseWhatsAppPhoneNumberRequest.new({profile_id: 'profile_id_example'}) # PurchaseWhatsAppPhoneNumberRequest | 

begin
  # Purchase phone number
  result = api_instance.purchase_whats_app_phone_number(purchase_whats_app_phone_number_request)
  p result
rescue Late::ApiError => e
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
rescue Late::ApiError => e
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
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::WhatsAppPhoneNumbersApi.new
phone_number_id = 'phone_number_id_example' # String | Phone number record ID

begin
  # Release phone number
  result = api_instance.release_whats_app_phone_number(phone_number_id)
  p result
rescue Late::ApiError => e
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
rescue Late::ApiError => e
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


## request_whats_app_verification_code

> <RequestWhatsAppVerificationCode200Response> request_whats_app_verification_code(phone_number_id, opts)

Request OTP

Request a new OTP verification code from Meta for a pre-verified phone number. Useful when the initial SMS did not arrive or when re-verifying before the 90-day expiry. 

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::WhatsAppPhoneNumbersApi.new
phone_number_id = 'phone_number_id_example' # String | Phone number record ID
opts = {
  request_whats_app_verification_code_request: Late::RequestWhatsAppVerificationCodeRequest.new # RequestWhatsAppVerificationCodeRequest | 
}

begin
  # Request OTP
  result = api_instance.request_whats_app_verification_code(phone_number_id, opts)
  p result
rescue Late::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->request_whats_app_verification_code: #{e}"
end
```

#### Using the request_whats_app_verification_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RequestWhatsAppVerificationCode200Response>, Integer, Hash)> request_whats_app_verification_code_with_http_info(phone_number_id, opts)

```ruby
begin
  # Request OTP
  data, status_code, headers = api_instance.request_whats_app_verification_code_with_http_info(phone_number_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RequestWhatsAppVerificationCode200Response>
rescue Late::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->request_whats_app_verification_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number_id** | **String** | Phone number record ID |  |
| **request_whats_app_verification_code_request** | [**RequestWhatsAppVerificationCodeRequest**](RequestWhatsAppVerificationCodeRequest.md) |  | [optional] |

### Return type

[**RequestWhatsAppVerificationCode200Response**](RequestWhatsAppVerificationCode200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## search_available_whats_app_numbers

> <SearchAvailableWhatsAppNumbers200Response> search_available_whats_app_numbers(opts)

Search available numbers

Search for available US phone numbers that can be purchased for WhatsApp Business. Requires a paid plan. Numbers are sourced from Telnyx. 

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::WhatsAppPhoneNumbersApi.new
opts = {
  prefix: 'prefix_example', # String | Area code to search (e.g., \"212\" for New York)
  locality: 'locality_example', # String | City name (e.g., \"New York\")
  contains: 'contains_example', # String | Pattern to match within the phone number
  limit: 56 # Integer | Maximum results (default 20, max 100)
}

begin
  # Search available numbers
  result = api_instance.search_available_whats_app_numbers(opts)
  p result
rescue Late::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->search_available_whats_app_numbers: #{e}"
end
```

#### Using the search_available_whats_app_numbers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchAvailableWhatsAppNumbers200Response>, Integer, Hash)> search_available_whats_app_numbers_with_http_info(opts)

```ruby
begin
  # Search available numbers
  data, status_code, headers = api_instance.search_available_whats_app_numbers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchAvailableWhatsAppNumbers200Response>
rescue Late::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->search_available_whats_app_numbers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prefix** | **String** | Area code to search (e.g., \&quot;212\&quot; for New York) | [optional] |
| **locality** | **String** | City name (e.g., \&quot;New York\&quot;) | [optional] |
| **contains** | **String** | Pattern to match within the phone number | [optional] |
| **limit** | **Integer** | Maximum results (default 20, max 100) | [optional][default to 20] |

### Return type

[**SearchAvailableWhatsAppNumbers200Response**](SearchAvailableWhatsAppNumbers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## verify_whats_app_phone_number

> <VerifyWhatsAppPhoneNumber200Response> verify_whats_app_phone_number(phone_number_id, verify_whats_app_phone_number_request)

Verify OTP

Manually verify a phone number by entering the OTP code received via SMS or voice call. This is a fallback for when the auto-verification webhook does not capture the code. Verification is valid for 90 days. 

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::WhatsAppPhoneNumbersApi.new
phone_number_id = 'phone_number_id_example' # String | Phone number record ID
verify_whats_app_phone_number_request = Late::VerifyWhatsAppPhoneNumberRequest.new({code: 'code_example'}) # VerifyWhatsAppPhoneNumberRequest | 

begin
  # Verify OTP
  result = api_instance.verify_whats_app_phone_number(phone_number_id, verify_whats_app_phone_number_request)
  p result
rescue Late::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->verify_whats_app_phone_number: #{e}"
end
```

#### Using the verify_whats_app_phone_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VerifyWhatsAppPhoneNumber200Response>, Integer, Hash)> verify_whats_app_phone_number_with_http_info(phone_number_id, verify_whats_app_phone_number_request)

```ruby
begin
  # Verify OTP
  data, status_code, headers = api_instance.verify_whats_app_phone_number_with_http_info(phone_number_id, verify_whats_app_phone_number_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VerifyWhatsAppPhoneNumber200Response>
rescue Late::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->verify_whats_app_phone_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number_id** | **String** | Phone number record ID |  |
| **verify_whats_app_phone_number_request** | [**VerifyWhatsAppPhoneNumberRequest**](VerifyWhatsAppPhoneNumberRequest.md) |  |  |

### Return type

[**VerifyWhatsAppPhoneNumber200Response**](VerifyWhatsAppPhoneNumber200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

