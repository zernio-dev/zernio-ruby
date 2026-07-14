# Zernio::SMSApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**appeal_sms_registration**](SMSApi.md#appeal_sms_registration) | **POST** /v1/sms/registrations/{id}/appeal | Appeal a rejected campaign |
| [**disable_sms_on_number**](SMSApi.md#disable_sms_on_number) | **DELETE** /v1/phone-numbers/{id}/sms | Disable SMS on a number |
| [**enable_sms_on_number**](SMSApi.md#enable_sms_on_number) | **POST** /v1/phone-numbers/{id}/sms | Enable SMS on a number |
| [**get_sms_registration**](SMSApi.md#get_sms_registration) | **GET** /v1/sms/registrations/{id} | Get a carrier registration |
| [**list_sms_opt_outs**](SMSApi.md#list_sms_opt_outs) | **GET** /v1/sms/opt-outs | List SMS opt-outs |
| [**list_sms_registrations**](SMSApi.md#list_sms_registrations) | **GET** /v1/sms/registrations | List carrier registrations |
| [**lookup_sms_number**](SMSApi.md#lookup_sms_number) | **GET** /v1/sms/lookup | Look up carrier + line type |
| [**resend_sms_registration_otp**](SMSApi.md#resend_sms_registration_otp) | **POST** /v1/sms/registrations/{id}/resend-otp | Re-send the sole-prop OTP |
| [**reuse_sms_registration_for_number**](SMSApi.md#reuse_sms_registration_for_number) | **POST** /v1/phone-numbers/{id}/sms/reuse-registration | Add number to SMS registration |
| [**send_sms**](SMSApi.md#send_sms) | **POST** /v1/sms/messages | Send an SMS/MMS |
| [**share_sms_registration**](SMSApi.md#share_sms_registration) | **POST** /v1/sms/registrations/share | Create a registration share link |
| [**start_sms_registration**](SMSApi.md#start_sms_registration) | **POST** /v1/sms/registrations | Start a carrier registration |
| [**verify_sms_registration_otp**](SMSApi.md#verify_sms_registration_otp) | **POST** /v1/sms/registrations/{id}/verify-otp | Submit the sole-prop OTP |


## appeal_sms_registration

> <AppealSmsRegistration200Response> appeal_sms_registration(id, appeal_sms_registration_request)

Appeal a rejected campaign

Appeals a rejected 10DLC campaign with the carrier registry. Only a registration that reached campaign creation can be appealed; a brand-level rejection should be fixed and re-verified instead. On success the registration returns to `pending`.  Content rejections (e.g. an opt-in flow without a verifiable form link, or unrealistic samples) should be FIXED in the same call: pass the corrected `messageFlow` / `sample1` / `sample2` and the campaign is updated before the appeal is filed, so the reviewer sees the new content. The current content is on `GET /v1/sms/registrations/{id}` (`campaignContent`). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::SMSApi.new
id = 'id_example' # String | 
appeal_sms_registration_request = Zernio::AppealSmsRegistrationRequest.new({appeal_reason: 'appeal_reason_example'}) # AppealSmsRegistrationRequest | 

begin
  # Appeal a rejected campaign
  result = api_instance.appeal_sms_registration(id, appeal_sms_registration_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling SMSApi->appeal_sms_registration: #{e}"
end
```

#### Using the appeal_sms_registration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AppealSmsRegistration200Response>, Integer, Hash)> appeal_sms_registration_with_http_info(id, appeal_sms_registration_request)

```ruby
begin
  # Appeal a rejected campaign
  data, status_code, headers = api_instance.appeal_sms_registration_with_http_info(id, appeal_sms_registration_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AppealSmsRegistration200Response>
rescue Zernio::ApiError => e
  puts "Error when calling SMSApi->appeal_sms_registration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **appeal_sms_registration_request** | [**AppealSmsRegistrationRequest**](AppealSmsRegistrationRequest.md) |  |  |

### Return type

[**AppealSmsRegistration200Response**](AppealSmsRegistration200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## disable_sms_on_number

> <DisableSmsOnNumber200Response> disable_sms_on_number(id)

Disable SMS on a number

Turns off SMS for the number (deactivates its SMS account). The carrier registration is untouched, so re-enabling later just reactivates it, with no re-registration. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::SMSApi.new
id = 'id_example' # String | 

begin
  # Disable SMS on a number
  result = api_instance.disable_sms_on_number(id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling SMSApi->disable_sms_on_number: #{e}"
end
```

#### Using the disable_sms_on_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisableSmsOnNumber200Response>, Integer, Hash)> disable_sms_on_number_with_http_info(id)

```ruby
begin
  # Disable SMS on a number
  data, status_code, headers = api_instance.disable_sms_on_number_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisableSmsOnNumber200Response>
rescue Zernio::ApiError => e
  puts "Error when calling SMSApi->disable_sms_on_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**DisableSmsOnNumber200Response**](DisableSmsOnNumber200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## enable_sms_on_number

> <EnableSmsOnNumber200Response> enable_sms_on_number(id)

Enable SMS on a number

Turns on SMS for one of your numbers. The number's real carrier capability is checked first: some number types can't do SMS at all (`smsCapable: false`), and a number still provisioning at the carrier returns `notReady: true` (try again once provisioning finishes).  US numbers additionally need a carrier registration before messages deliver; the response tells you which path applies: - `alreadyRegistered: true`: a prior registration still covers this   number; SMS was simply reactivated. - `reusable` set: you have an approved registration this number can   join in one click via   `POST /v1/phone-numbers/{id}/sms/reuse-registration`   (no new brand/campaign, no extra carrier fee). - `needsRegistration: true` and no `reusable`: start one via   `POST /v1/sms/registrations`.  Idempotent: re-running re-attempts any carrier-side setup that failed. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::SMSApi.new
id = 'id_example' # String | Phone number record ID (from GET /v1/phone-numbers).

begin
  # Enable SMS on a number
  result = api_instance.enable_sms_on_number(id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling SMSApi->enable_sms_on_number: #{e}"
end
```

#### Using the enable_sms_on_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnableSmsOnNumber200Response>, Integer, Hash)> enable_sms_on_number_with_http_info(id)

```ruby
begin
  # Enable SMS on a number
  data, status_code, headers = api_instance.enable_sms_on_number_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnableSmsOnNumber200Response>
rescue Zernio::ApiError => e
  puts "Error when calling SMSApi->enable_sms_on_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Phone number record ID (from GET /v1/phone-numbers). |  |

### Return type

[**EnableSmsOnNumber200Response**](EnableSmsOnNumber200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sms_registration

> <GetSmsRegistration200Response> get_sms_registration(id)

Get a carrier registration

Poll this for approval progress after starting a registration.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::SMSApi.new
id = 'id_example' # String | 

begin
  # Get a carrier registration
  result = api_instance.get_sms_registration(id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling SMSApi->get_sms_registration: #{e}"
end
```

#### Using the get_sms_registration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSmsRegistration200Response>, Integer, Hash)> get_sms_registration_with_http_info(id)

```ruby
begin
  # Get a carrier registration
  data, status_code, headers = api_instance.get_sms_registration_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSmsRegistration200Response>
rescue Zernio::ApiError => e
  puts "Error when calling SMSApi->get_sms_registration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**GetSmsRegistration200Response**](GetSmsRegistration200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_sms_opt_outs

> <ListSmsOptOuts200Response> list_sms_opt_outs(opts)

List SMS opt-outs

The recipients who opted out of SMS (replied STOP) across your numbers, most recent first. Compliance surface: you must be able to see and export your opt-out list. Read-only: a recipient is re-subscribed only by replying START. Pass `format=csv` to download a CSV instead of JSON. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::SMSApi.new
opts = {
  format: 'json', # String | 
  limit: 56 # Integer | 
}

begin
  # List SMS opt-outs
  result = api_instance.list_sms_opt_outs(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling SMSApi->list_sms_opt_outs: #{e}"
end
```

#### Using the list_sms_opt_outs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSmsOptOuts200Response>, Integer, Hash)> list_sms_opt_outs_with_http_info(opts)

```ruby
begin
  # List SMS opt-outs
  data, status_code, headers = api_instance.list_sms_opt_outs_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSmsOptOuts200Response>
rescue Zernio::ApiError => e
  puts "Error when calling SMSApi->list_sms_opt_outs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **format** | **String** |  | [optional][default to &#39;json&#39;] |
| **limit** | **Integer** |  | [optional][default to 500] |

### Return type

[**ListSmsOptOuts200Response**](ListSmsOptOuts200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, text/csv


## list_sms_registrations

> <ListSmsRegistrations200Response> list_sms_registrations

List carrier registrations

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::SMSApi.new

begin
  # List carrier registrations
  result = api_instance.list_sms_registrations
  p result
rescue Zernio::ApiError => e
  puts "Error when calling SMSApi->list_sms_registrations: #{e}"
end
```

#### Using the list_sms_registrations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSmsRegistrations200Response>, Integer, Hash)> list_sms_registrations_with_http_info

```ruby
begin
  # List carrier registrations
  data, status_code, headers = api_instance.list_sms_registrations_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSmsRegistrations200Response>
rescue Zernio::ApiError => e
  puts "Error when calling SMSApi->list_sms_registrations_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListSmsRegistrations200Response**](ListSmsRegistrations200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## lookup_sms_number

> <LookupSmsNumber200Response> lookup_sms_number(number)

Look up carrier + line type

Carrier name and line type (mobile / landline / voip / toll-free) for a number, plus `smsReachable` (landlines can't receive SMS). Use it to validate recipients before sending. Each lookup is billed by the carrier-data provider, so call it explicitly (e.g. pre-validating an opt-in list), not on every send. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::SMSApi.new
number = 'number_example' # String | Number to look up (E.164; formatting is normalized).

begin
  # Look up carrier + line type
  result = api_instance.lookup_sms_number(number)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling SMSApi->lookup_sms_number: #{e}"
end
```

#### Using the lookup_sms_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LookupSmsNumber200Response>, Integer, Hash)> lookup_sms_number_with_http_info(number)

```ruby
begin
  # Look up carrier + line type
  data, status_code, headers = api_instance.lookup_sms_number_with_http_info(number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LookupSmsNumber200Response>
rescue Zernio::ApiError => e
  puts "Error when calling SMSApi->lookup_sms_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number** | **String** | Number to look up (E.164; formatting is normalized). |  |

### Return type

[**LookupSmsNumber200Response**](LookupSmsNumber200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## resend_sms_registration_otp

> <ResendSmsRegistrationOtp200Response> resend_sms_registration_otp(id)

Re-send the sole-prop OTP

Re-sends the sole-proprietor verification PIN to the brand's mobile number — use it when the original code expired or never arrived. Only valid while the registration is pending and awaiting its OTP; rate limited to one send per minute. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::SMSApi.new
id = 'id_example' # String | 

begin
  # Re-send the sole-prop OTP
  result = api_instance.resend_sms_registration_otp(id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling SMSApi->resend_sms_registration_otp: #{e}"
end
```

#### Using the resend_sms_registration_otp_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResendSmsRegistrationOtp200Response>, Integer, Hash)> resend_sms_registration_otp_with_http_info(id)

```ruby
begin
  # Re-send the sole-prop OTP
  data, status_code, headers = api_instance.resend_sms_registration_otp_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResendSmsRegistrationOtp200Response>
rescue Zernio::ApiError => e
  puts "Error when calling SMSApi->resend_sms_registration_otp_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**ResendSmsRegistrationOtp200Response**](ResendSmsRegistrationOtp200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reuse_sms_registration_for_number

> <ReuseSmsRegistrationForNumber200Response> reuse_sms_registration_for_number(id)

Add number to SMS registration

Attaches this number to your existing approved 10DLC campaign instead of running a fresh registration: the number inherits the campaign's approval (no new brand or campaign, no extra carrier fee). Enable SMS on the number first (`POST /v1/phone-numbers/{id}/sms`; its response tells you whether a reusable registration exists). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::SMSApi.new
id = 'id_example' # String | 

begin
  # Add number to SMS registration
  result = api_instance.reuse_sms_registration_for_number(id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling SMSApi->reuse_sms_registration_for_number: #{e}"
end
```

#### Using the reuse_sms_registration_for_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReuseSmsRegistrationForNumber200Response>, Integer, Hash)> reuse_sms_registration_for_number_with_http_info(id)

```ruby
begin
  # Add number to SMS registration
  data, status_code, headers = api_instance.reuse_sms_registration_for_number_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReuseSmsRegistrationForNumber200Response>
rescue Zernio::ApiError => e
  puts "Error when calling SMSApi->reuse_sms_registration_for_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**ReuseSmsRegistrationForNumber200Response**](ReuseSmsRegistrationForNumber200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## send_sms

> <SendSms200Response> send_sms(send_sms_request, opts)

Send an SMS/MMS

Sends an SMS (or MMS when `mediaUrls` is set) from one of your SMS-enabled numbers. At least one of `text` / `mediaUrls` is required. Both numbers are normalized to E.164, so `from` matches regardless of formatting and replies thread into the same inbox conversation.  US numbers must have an approved carrier registration (`/v1/sms/registrations`) before messages deliver.  **Idempotency:** send an `Idempotency-Key` header to make retries safe: same key + same body replays the original response instead of sending a second message; same key + different body returns 422; a key still in flight returns 409. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::SMSApi.new
send_sms_request = Zernio::SendSmsRequest.new({from: 'from_example', to: 'to_example'}) # SendSmsRequest | 
opts = {
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes send retries safe. Same key + same body replays the original response; same key + different body → 422; key still processing → 409.
}

begin
  # Send an SMS/MMS
  result = api_instance.send_sms(send_sms_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling SMSApi->send_sms: #{e}"
end
```

#### Using the send_sms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendSms200Response>, Integer, Hash)> send_sms_with_http_info(send_sms_request, opts)

```ruby
begin
  # Send an SMS/MMS
  data, status_code, headers = api_instance.send_sms_with_http_info(send_sms_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendSms200Response>
rescue Zernio::ApiError => e
  puts "Error when calling SMSApi->send_sms_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **send_sms_request** | [**SendSmsRequest**](SendSmsRequest.md) |  |  |
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes send retries safe. Same key + same body replays the original response; same key + different body → 422; key still processing → 409. | [optional] |

### Return type

[**SendSms200Response**](SendSms200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## share_sms_registration

> <ShareSmsRegistration200Response> share_sms_registration(share_sms_registration_request)

Create a registration share link

Creates a single-use, expiring link (valid 7 days) that lets someone else (whoever has the legal business details) fill in the carrier registration form for one of your numbers, without a Zernio login. The registration is created under your account once the form is submitted. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::SMSApi.new
share_sms_registration_request = Zernio::ShareSmsRegistrationRequest.new({number_id: 'number_id_example'}) # ShareSmsRegistrationRequest | 

begin
  # Create a registration share link
  result = api_instance.share_sms_registration(share_sms_registration_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling SMSApi->share_sms_registration: #{e}"
end
```

#### Using the share_sms_registration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ShareSmsRegistration200Response>, Integer, Hash)> share_sms_registration_with_http_info(share_sms_registration_request)

```ruby
begin
  # Create a registration share link
  data, status_code, headers = api_instance.share_sms_registration_with_http_info(share_sms_registration_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ShareSmsRegistration200Response>
rescue Zernio::ApiError => e
  puts "Error when calling SMSApi->share_sms_registration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **share_sms_registration_request** | [**ShareSmsRegistrationRequest**](ShareSmsRegistrationRequest.md) |  |  |

### Return type

[**ShareSmsRegistration200Response**](ShareSmsRegistration200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## start_sms_registration

> <StartSmsRegistration200Response> start_sms_registration(start_sms_registration_request)

Start a carrier registration

Starts the US carrier registration that a number needs before SMS delivers: 10DLC (standard company or sole-proprietor) or toll-free verification. 10DLC needs `brand` + `campaign`; toll-free needs `tollFree`. Approval is asynchronous; poll `GET /v1/sms/registrations/{id}` (sole-prop registrations first need the OTP step: a code is texted to the brand's mobile number, submit it via `/verify-otp`).  Already have an approved registration? Add another number to it with `POST /v1/phone-numbers/{id}/sms/reuse-registration` instead of registering (and paying the carrier brand fee) again.  Rather have your client fill in the legal business details? Create a share link with `POST /v1/sms/registrations/share`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::SMSApi.new
start_sms_registration_request = Zernio::StartSmsRegistrationRequest.new({registration_type: 'standard_10dlc', phone_numbers: ['phone_numbers_example']}) # StartSmsRegistrationRequest | 

begin
  # Start a carrier registration
  result = api_instance.start_sms_registration(start_sms_registration_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling SMSApi->start_sms_registration: #{e}"
end
```

#### Using the start_sms_registration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StartSmsRegistration200Response>, Integer, Hash)> start_sms_registration_with_http_info(start_sms_registration_request)

```ruby
begin
  # Start a carrier registration
  data, status_code, headers = api_instance.start_sms_registration_with_http_info(start_sms_registration_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StartSmsRegistration200Response>
rescue Zernio::ApiError => e
  puts "Error when calling SMSApi->start_sms_registration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_sms_registration_request** | [**StartSmsRegistrationRequest**](StartSmsRegistrationRequest.md) |  |  |

### Return type

[**StartSmsRegistration200Response**](StartSmsRegistration200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## verify_sms_registration_otp

> <VerifySmsRegistrationOtp200Response> verify_sms_registration_otp(id, verify_sms_registration_otp_request)

Submit the sole-prop OTP

Completes sole-proprietor 10DLC brand verification by submitting the one-time PIN texted to the brand's mobile number. On success the registration continues to campaign creation automatically. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::SMSApi.new
id = 'id_example' # String | 
verify_sms_registration_otp_request = Zernio::VerifySmsRegistrationOtpRequest.new({otp_pin: 'otp_pin_example'}) # VerifySmsRegistrationOtpRequest | 

begin
  # Submit the sole-prop OTP
  result = api_instance.verify_sms_registration_otp(id, verify_sms_registration_otp_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling SMSApi->verify_sms_registration_otp: #{e}"
end
```

#### Using the verify_sms_registration_otp_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VerifySmsRegistrationOtp200Response>, Integer, Hash)> verify_sms_registration_otp_with_http_info(id, verify_sms_registration_otp_request)

```ruby
begin
  # Submit the sole-prop OTP
  data, status_code, headers = api_instance.verify_sms_registration_otp_with_http_info(id, verify_sms_registration_otp_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VerifySmsRegistrationOtp200Response>
rescue Zernio::ApiError => e
  puts "Error when calling SMSApi->verify_sms_registration_otp_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **verify_sms_registration_otp_request** | [**VerifySmsRegistrationOtpRequest**](VerifySmsRegistrationOtpRequest.md) |  |  |

### Return type

[**VerifySmsRegistrationOtp200Response**](VerifySmsRegistrationOtp200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

