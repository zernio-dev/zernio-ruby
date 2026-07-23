# Zernio::MessagingAdsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_call_ad**](MessagingAdsApi.md#create_call_ad) | **POST** /v1/ads/call | Create Click-to-Call ad |
| [**create_ctwa_ad**](MessagingAdsApi.md#create_ctwa_ad) | **POST** /v1/ads/ctwa | Create Click-to-WhatsApp ad (deprecated) |
| [**create_messaging_ad**](MessagingAdsApi.md#create_messaging_ad) | **POST** /v1/ads/messaging | Create click-to-message ad (WhatsApp / Messenger / Instagram Direct) |


## create_call_ad

> create_call_ad(create_call_ad_request)

Create Click-to-Call ad

Same shape and flow as POST /v1/ads/ctwa, but the CTA is CALL_NOW dialing `phoneNumber` via a tel: link. The ad set is destination_type PHONE_CALL optimizing QUALITY_CALL and the campaign objective defaults to OUTCOME_LEADS. Supports the same single-creative and multi-creative shapes as CTWA.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::MessagingAdsApi.new
create_call_ad_request = Zernio::CreateCallAdRequest.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example', name: 'name_example', budget_amount: 3.56, budget_type: 'daily', phone_number: 'phone_number_example', link_url: 'link_url_example'}) # CreateCallAdRequest | 

begin
  # Create Click-to-Call ad
  api_instance.create_call_ad(create_call_ad_request)
rescue Zernio::ApiError => e
  puts "Error when calling MessagingAdsApi->create_call_ad: #{e}"
end
```

#### Using the create_call_ad_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_call_ad_with_http_info(create_call_ad_request)

```ruby
begin
  # Create Click-to-Call ad
  data, status_code, headers = api_instance.create_call_ad_with_http_info(create_call_ad_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling MessagingAdsApi->create_call_ad_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_call_ad_request** | [**CreateCallAdRequest**](CreateCallAdRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ctwa_ad

> <CreateCtwaAd201Response> create_ctwa_ad(ctwa_ad_request_body)

Create Click-to-WhatsApp ad (deprecated)

Deprecated: use POST /v1/ads/messaging with `destination: whatsapp`. This endpoint stays available for back-compat; no removal planned.  Creates one or more Click-to-WhatsApp (CTWA) ads on Meta under a single campaign and ad set. When tapped, each ad opens a WhatsApp conversation with the business attached to the supplied Facebook Page. The full hierarchy (campaign, ad set, creative(s), ad(s)) is created and activated in one call. The CTA is locked to WHATSAPP_MESSAGE and the destination is hard-coded to api.whatsapp.com/send; Meta resolves the actual WhatsApp number from the Page-to-WA pairing configured in Page settings or Business Manager.  Supports two mutually-exclusive shapes:  - **Single-creative**: supply top-level `headline`, `body`, and one of `imageUrl` / `video`. Creates 1 campaign + 1 ad set + 1 ad.  - **Multi-creative**: supply a `creatives[]` array with N entries (each carrying its own headline, body, and image/video). Creates 1 campaign + 1 ad set + N ads sharing budget and targeting so Meta A/Bs the creatives inside a single auction instead of fragmenting budget across N parallel campaigns. Recommended when launching multiple creative variants for the same campaign.  Prerequisites enforced by Meta (surfaced as platform_error on failure): the Facebook Page must be paired with a verified WhatsApp Business number, the WhatsApp Business Account must be business-verified, and the Meta access token must carry ads_management.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::MessagingAdsApi.new
ctwa_ad_request_body = Zernio::CtwaAdRequestBody.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example', name: 'name_example', budget_amount: 3.56, budget_type: 'daily'}) # CtwaAdRequestBody | 

begin
  # Create Click-to-WhatsApp ad (deprecated)
  result = api_instance.create_ctwa_ad(ctwa_ad_request_body)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling MessagingAdsApi->create_ctwa_ad: #{e}"
end
```

#### Using the create_ctwa_ad_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCtwaAd201Response>, Integer, Hash)> create_ctwa_ad_with_http_info(ctwa_ad_request_body)

```ruby
begin
  # Create Click-to-WhatsApp ad (deprecated)
  data, status_code, headers = api_instance.create_ctwa_ad_with_http_info(ctwa_ad_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCtwaAd201Response>
rescue Zernio::ApiError => e
  puts "Error when calling MessagingAdsApi->create_ctwa_ad_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ctwa_ad_request_body** | [**CtwaAdRequestBody**](CtwaAdRequestBody.md) |  |  |

### Return type

[**CreateCtwaAd201Response**](CreateCtwaAd201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_messaging_ad

> create_messaging_ad(create_messaging_ad_request)

Create click-to-message ad (WhatsApp / Messenger / Instagram Direct)

Creates a click-to-message ad; `destination` selects where the tapped ad opens a conversation: WhatsApp, the Page's Messenger inbox or the linked Instagram account's Direct inbox. The ad set is created with the matching destination_type and CONVERSATIONS optimization; the campaign objective defaults to OUTCOME_ENGAGEMENT. Supports single-creative and multi-creative shapes. Supersedes POST /v1/ads/ctwa (deprecated, equivalent to `destination: whatsapp`).

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::MessagingAdsApi.new
create_messaging_ad_request = Zernio::CreateMessagingAdRequest.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example', name: 'name_example', budget_amount: 3.56, budget_type: 'daily', destination: 'whatsapp'}) # CreateMessagingAdRequest | 

begin
  # Create click-to-message ad (WhatsApp / Messenger / Instagram Direct)
  api_instance.create_messaging_ad(create_messaging_ad_request)
rescue Zernio::ApiError => e
  puts "Error when calling MessagingAdsApi->create_messaging_ad: #{e}"
end
```

#### Using the create_messaging_ad_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_messaging_ad_with_http_info(create_messaging_ad_request)

```ruby
begin
  # Create click-to-message ad (WhatsApp / Messenger / Instagram Direct)
  data, status_code, headers = api_instance.create_messaging_ad_with_http_info(create_messaging_ad_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling MessagingAdsApi->create_messaging_ad_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_messaging_ad_request** | [**CreateMessagingAdRequest**](CreateMessagingAdRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

