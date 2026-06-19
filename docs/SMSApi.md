# Zernio::SMSApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**send_sms**](SMSApi.md#send_sms) | **POST** /v1/sms/messages | Send an SMS or MMS |


## send_sms

> <SendSms200Response> send_sms(send_sms_request)

Send an SMS or MMS

Send a text (SMS) or media (MMS) message from one of your SMS-enabled numbers.  Provide `text`, `mediaUrls`, or both. Supply an `Idempotency-Key` header to make retries safe (a repeated key replays the original result instead of sending again). US numbers must have an approved carrier registration before they can deliver. 

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
send_sms_request = Zernio::SendSmsRequest.new({from: '+14155550192', to: '+14155550123'}) # SendSmsRequest | 

begin
  # Send an SMS or MMS
  result = api_instance.send_sms(send_sms_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling SMSApi->send_sms: #{e}"
end
```

#### Using the send_sms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendSms200Response>, Integer, Hash)> send_sms_with_http_info(send_sms_request)

```ruby
begin
  # Send an SMS or MMS
  data, status_code, headers = api_instance.send_sms_with_http_info(send_sms_request)
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

### Return type

[**SendSms200Response**](SendSms200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

