# Zernio::VerifyApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**check_verification**](VerifyApi.md#check_verification) | **POST** /v1/verify/verifications/{verificationId}/check | Check a verification code |
| [**create_verification**](VerifyApi.md#create_verification) | **POST** /v1/verify/verifications | Send a verification code |
| [**get_verification**](VerifyApi.md#get_verification) | **GET** /v1/verify/verifications/{verificationId} | Get a verification |


## check_verification

> <CheckVerification200Response> check_verification(verification_id, check_verification_request)

Check a verification code

Verify the code the user typed. Wrong, expired, and exhausted codes answer 200 with `valid: false` and the settled `status` — only an unknown id is a 404. A correct code consumes the verification (single-use, `status: approved`) and fires the `verification.approved` webhook; the 5th wrong attempt settles it as `max_attempts_reached` and fires `verification.failed`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::VerifyApi.new
verification_id = 'verification_id_example' # String | 
check_verification_request = Zernio::CheckVerificationRequest.new({code: 'code_example'}) # CheckVerificationRequest | 

begin
  # Check a verification code
  result = api_instance.check_verification(verification_id, check_verification_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling VerifyApi->check_verification: #{e}"
end
```

#### Using the check_verification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckVerification200Response>, Integer, Hash)> check_verification_with_http_info(verification_id, check_verification_request)

```ruby
begin
  # Check a verification code
  data, status_code, headers = api_instance.check_verification_with_http_info(verification_id, check_verification_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckVerification200Response>
rescue Zernio::ApiError => e
  puts "Error when calling VerifyApi->check_verification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **verification_id** | **String** |  |  |
| **check_verification_request** | [**CheckVerificationRequest**](CheckVerificationRequest.md) |  |  |

### Return type

[**CheckVerification200Response**](CheckVerification200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_verification

> <Verification> create_verification(create_verification_request)

Send a verification code

Generate a one-time code, deliver it to the recipient, and store only its hash. Check the user-typed code with POST /v1/verify/verifications/{verificationId}/check.  Re-POSTing for the same (channel, to) while a verification is active RESENDS a fresh code on the existing verification (200 with `resend: true`) instead of creating a new one; resends are limited to one per 60 seconds (429 with `retryAfterSeconds` inside the cooldown). The stored brandName/codeLength/ttlMinutes win on a resend.  Codes deliver by SMS from a phone number on your account (`from` optional when you own exactly one SMS-enabled number) and the message uses a fixed template. Each accepted send bills one verification fee plus the standard message rate. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::VerifyApi.new
create_verification_request = Zernio::CreateVerificationRequest.new({channel: 'sms', to: 'to_example'}) # CreateVerificationRequest | 

begin
  # Send a verification code
  result = api_instance.create_verification(create_verification_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling VerifyApi->create_verification: #{e}"
end
```

#### Using the create_verification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Verification>, Integer, Hash)> create_verification_with_http_info(create_verification_request)

```ruby
begin
  # Send a verification code
  data, status_code, headers = api_instance.create_verification_with_http_info(create_verification_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Verification>
rescue Zernio::ApiError => e
  puts "Error when calling VerifyApi->create_verification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_verification_request** | [**CreateVerificationRequest**](CreateVerificationRequest.md) |  |  |

### Return type

[**Verification**](Verification.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_verification

> <Verification> get_verification(verification_id)

Get a verification

Current state of a verification. `status` is effective (a pending code past its expiry reads as `expired`). Verification records are deleted 24 hours after creation, after which this returns 404. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::VerifyApi.new
verification_id = 'verification_id_example' # String | 

begin
  # Get a verification
  result = api_instance.get_verification(verification_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling VerifyApi->get_verification: #{e}"
end
```

#### Using the get_verification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Verification>, Integer, Hash)> get_verification_with_http_info(verification_id)

```ruby
begin
  # Get a verification
  data, status_code, headers = api_instance.get_verification_with_http_info(verification_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Verification>
rescue Zernio::ApiError => e
  puts "Error when calling VerifyApi->get_verification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **verification_id** | **String** |  |  |

### Return type

[**Verification**](Verification.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

