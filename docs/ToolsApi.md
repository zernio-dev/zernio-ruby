# Zernio::ToolsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**download_tik_tok_video**](ToolsApi.md#download_tik_tok_video) | **GET** /v1/tools/tiktok/download | Download a TikTok video |


## download_tik_tok_video

> <DownloadTikTokVideo200Response> download_tik_tok_video(url, opts)

Download a TikTok video

Get a download URL or list available formats for a TikTok video. Requires Tools API access and uses the Tools API rate limit. Provider gateway failures and provider-side access blocks return 503; an unavailable video returns 404.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ToolsApi.new
url = 'https://www.tiktok.com/@example/video/7412345678901234567' # String | TikTok video URL or numeric video ID.
opts = {
  action: 'download', # String | Return a download URL or the available formats.
  format_id: 'format_id_example' # String | Format ID from the formats response. Omit to select the first available format.
}

begin
  # Download a TikTok video
  result = api_instance.download_tik_tok_video(url, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ToolsApi->download_tik_tok_video: #{e}"
end
```

#### Using the download_tik_tok_video_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DownloadTikTokVideo200Response>, Integer, Hash)> download_tik_tok_video_with_http_info(url, opts)

```ruby
begin
  # Download a TikTok video
  data, status_code, headers = api_instance.download_tik_tok_video_with_http_info(url, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DownloadTikTokVideo200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ToolsApi->download_tik_tok_video_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | TikTok video URL or numeric video ID. |  |
| **action** | **String** | Return a download URL or the available formats. | [optional][default to &#39;download&#39;] |
| **format_id** | **String** | Format ID from the formats response. Omit to select the first available format. | [optional] |

### Return type

[**DownloadTikTokVideo200Response**](DownloadTikTokVideo200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

