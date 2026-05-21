# Zernio::GMBVerificationsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**complete_google_business_verification**](GMBVerificationsApi.md#complete_google_business_verification) | **POST** /v1/accounts/{accountId}/gmb-verifications/{verificationId}/complete | Complete a verification |
| [**fetch_google_business_verification_options**](GMBVerificationsApi.md#fetch_google_business_verification_options) | **POST** /v1/accounts/{accountId}/gmb-verifications/options | Fetch verification options |
| [**get_google_business_verifications**](GMBVerificationsApi.md#get_google_business_verifications) | **GET** /v1/accounts/{accountId}/gmb-verifications | Get verification state |
| [**start_google_business_verification**](GMBVerificationsApi.md#start_google_business_verification) | **POST** /v1/accounts/{accountId}/gmb-verifications | Start a verification |


## complete_google_business_verification

> <StartGoogleBusinessVerification200Response> complete_google_business_verification(account_id, verification_id, complete_google_business_verification_request, opts)

Complete a verification

Completes a PENDING verification by submitting the PIN/code Google sent the business (postcard code, SMS PIN, etc.). On success the verification moves to COMPLETED.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::GMBVerificationsApi.new
account_id = 'account_id_example' # String | The Zernio account ID (from /v1/accounts)
verification_id = 'verification_id_example' # String | The last segment of a verification `name` from GET /gmb-verifications.
complete_google_business_verification_request = Zernio::CompleteGoogleBusinessVerificationRequest.new({pin: 'pin_example'}) # CompleteGoogleBusinessVerificationRequest | 
opts = {
  location_id: 'location_id_example' # String | Override which location to target. If omitted, uses the account's selected location.
}

begin
  # Complete a verification
  result = api_instance.complete_google_business_verification(account_id, verification_id, complete_google_business_verification_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling GMBVerificationsApi->complete_google_business_verification: #{e}"
end
```

#### Using the complete_google_business_verification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StartGoogleBusinessVerification200Response>, Integer, Hash)> complete_google_business_verification_with_http_info(account_id, verification_id, complete_google_business_verification_request, opts)

```ruby
begin
  # Complete a verification
  data, status_code, headers = api_instance.complete_google_business_verification_with_http_info(account_id, verification_id, complete_google_business_verification_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StartGoogleBusinessVerification200Response>
rescue Zernio::ApiError => e
  puts "Error when calling GMBVerificationsApi->complete_google_business_verification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The Zernio account ID (from /v1/accounts) |  |
| **verification_id** | **String** | The last segment of a verification &#x60;name&#x60; from GET /gmb-verifications. |  |
| **complete_google_business_verification_request** | [**CompleteGoogleBusinessVerificationRequest**](CompleteGoogleBusinessVerificationRequest.md) |  |  |
| **location_id** | **String** | Override which location to target. If omitted, uses the account&#39;s selected location. | [optional] |

### Return type

[**StartGoogleBusinessVerification200Response**](StartGoogleBusinessVerification200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## fetch_google_business_verification_options

> <FetchGoogleBusinessVerificationOptions200Response> fetch_google_business_verification_options(account_id, fetch_google_business_verification_options_request, opts)

Fetch verification options

Reports the verification methods Google currently offers for the location. Non-mutating (nothing is sent to the business). `languageCode` is required; service-area (\"CUSTOMER_LOCATION_ONLY\") businesses also require `context.address`, otherwise Google returns 400.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::GMBVerificationsApi.new
account_id = 'account_id_example' # String | The Zernio account ID (from /v1/accounts)
fetch_google_business_verification_options_request = Zernio::FetchGoogleBusinessVerificationOptionsRequest.new({language_code: 'en-US'}) # FetchGoogleBusinessVerificationOptionsRequest | 
opts = {
  location_id: 'location_id_example' # String | Override which location to query. If omitted, uses the account's selected location.
}

begin
  # Fetch verification options
  result = api_instance.fetch_google_business_verification_options(account_id, fetch_google_business_verification_options_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling GMBVerificationsApi->fetch_google_business_verification_options: #{e}"
end
```

#### Using the fetch_google_business_verification_options_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FetchGoogleBusinessVerificationOptions200Response>, Integer, Hash)> fetch_google_business_verification_options_with_http_info(account_id, fetch_google_business_verification_options_request, opts)

```ruby
begin
  # Fetch verification options
  data, status_code, headers = api_instance.fetch_google_business_verification_options_with_http_info(account_id, fetch_google_business_verification_options_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FetchGoogleBusinessVerificationOptions200Response>
rescue Zernio::ApiError => e
  puts "Error when calling GMBVerificationsApi->fetch_google_business_verification_options_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The Zernio account ID (from /v1/accounts) |  |
| **fetch_google_business_verification_options_request** | [**FetchGoogleBusinessVerificationOptionsRequest**](FetchGoogleBusinessVerificationOptionsRequest.md) |  |  |
| **location_id** | **String** | Override which location to query. If omitted, uses the account&#39;s selected location. | [optional] |

### Return type

[**FetchGoogleBusinessVerificationOptions200Response**](FetchGoogleBusinessVerificationOptions200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_google_business_verifications

> <GetGoogleBusinessVerifications200Response> get_google_business_verifications(account_id, opts)

Get verification state

Returns the location's Voice of Merchant state plus its verification history. `voiceOfMerchantState.hasVoiceOfMerchant` tells you whether the listing is verified and published; when it is false, `verify` reports whether a verification is already pending. Each entry in `verifications` has a `state` of PENDING, COMPLETED, or FAILED.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::GMBVerificationsApi.new
account_id = 'account_id_example' # String | The Zernio account ID (from /v1/accounts)
opts = {
  location_id: 'location_id_example' # String | Override which location to query. If omitted, uses the account's selected location. Use GET /gmb-locations to list valid IDs.
}

begin
  # Get verification state
  result = api_instance.get_google_business_verifications(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling GMBVerificationsApi->get_google_business_verifications: #{e}"
end
```

#### Using the get_google_business_verifications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetGoogleBusinessVerifications200Response>, Integer, Hash)> get_google_business_verifications_with_http_info(account_id, opts)

```ruby
begin
  # Get verification state
  data, status_code, headers = api_instance.get_google_business_verifications_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetGoogleBusinessVerifications200Response>
rescue Zernio::ApiError => e
  puts "Error when calling GMBVerificationsApi->get_google_business_verifications_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The Zernio account ID (from /v1/accounts) |  |
| **location_id** | **String** | Override which location to query. If omitted, uses the account&#39;s selected location. Use GET /gmb-locations to list valid IDs. | [optional] |

### Return type

[**GetGoogleBusinessVerifications200Response**](GetGoogleBusinessVerifications200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## start_google_business_verification

> <StartGoogleBusinessVerification200Response> start_google_business_verification(account_id, start_google_business_verification_request, opts)

Start a verification

Starts a verification for the location. This is a mutating action: depending on `method`, Google mails a postcard, places a call, or sends an SMS/email to the business. Submit the resulting code with POST /gmb-verifications/{verificationId}/complete. Use POST /gmb-verifications/options first to discover which methods are eligible.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::GMBVerificationsApi.new
account_id = 'account_id_example' # String | The Zernio account ID (from /v1/accounts)
start_google_business_verification_request = Zernio::StartGoogleBusinessVerificationRequest.new({method: 'ADDRESS'}) # StartGoogleBusinessVerificationRequest | 
opts = {
  location_id: 'location_id_example' # String | Override which location to target. If omitted, uses the account's selected location.
}

begin
  # Start a verification
  result = api_instance.start_google_business_verification(account_id, start_google_business_verification_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling GMBVerificationsApi->start_google_business_verification: #{e}"
end
```

#### Using the start_google_business_verification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StartGoogleBusinessVerification200Response>, Integer, Hash)> start_google_business_verification_with_http_info(account_id, start_google_business_verification_request, opts)

```ruby
begin
  # Start a verification
  data, status_code, headers = api_instance.start_google_business_verification_with_http_info(account_id, start_google_business_verification_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StartGoogleBusinessVerification200Response>
rescue Zernio::ApiError => e
  puts "Error when calling GMBVerificationsApi->start_google_business_verification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The Zernio account ID (from /v1/accounts) |  |
| **start_google_business_verification_request** | [**StartGoogleBusinessVerificationRequest**](StartGoogleBusinessVerificationRequest.md) |  |  |
| **location_id** | **String** | Override which location to target. If omitted, uses the account&#39;s selected location. | [optional] |

### Return type

[**StartGoogleBusinessVerification200Response**](StartGoogleBusinessVerification200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

