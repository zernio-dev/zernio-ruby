# Zernio::InboxApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_whats_app_media**](InboxApi.md#get_whats_app_media) | **GET** /v1/whatsapp/media/{mediaId} | Download WhatsApp media |


## get_whats_app_media

> File get_whats_app_media(media_id, account_id)

Download WhatsApp media

Streams the binary for a WhatsApp attachment. This is the endpoint the `url` on a WhatsApp `attachments[]` entry points at, in both the `message.received` webhook and the List messages response.  **This is an authenticated endpoint, not a public link.** Send `Authorization: Bearer <your API key>` exactly as you would for any other call. Passing the URL straight to a browser, an LLM vision API, or a no-code \"download file\" step without the header returns `401`. This is the most common integration mistake on this endpoint, and it differs from Instagram, Facebook and Telegram, whose `attachments[].url` is a direct CDN link that needs no header.  **Fetch on receipt, not lazily.** WhatsApp media lives in Meta's media store, not ours, and it is removed after a limited retention window (currently 7 days, and Meta has been dropping some inbound media sooner). Once Meta drops it the media is unrecoverable and this endpoint answers `400` permanently, so retrying will never succeed. Download and store the bytes when the webhook arrives. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::InboxApi.new
media_id = 'media_id_example' # String | The media id from `attachments[].payload.id`.
account_id = 'account_id_example' # String | The WhatsApp account that received the media.

begin
  # Download WhatsApp media
  result = api_instance.get_whats_app_media(media_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling InboxApi->get_whats_app_media: #{e}"
end
```

#### Using the get_whats_app_media_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> get_whats_app_media_with_http_info(media_id, account_id)

```ruby
begin
  # Download WhatsApp media
  data, status_code, headers = api_instance.get_whats_app_media_with_http_info(media_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue Zernio::ApiError => e
  puts "Error when calling InboxApi->get_whats_app_media_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **media_id** | **String** | The media id from &#x60;attachments[].payload.id&#x60;. |  |
| **account_id** | **String** | The WhatsApp account that received the media. |  |

### Return type

**File**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream, application/json

