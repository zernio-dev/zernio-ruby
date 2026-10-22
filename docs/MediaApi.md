# Zernio::MediaApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_media_presigned_url**](MediaApi.md#get_media_presigned_url) | **POST** /v1/media/presign | Get upload URL |
| [**prepare_media**](MediaApi.md#prepare_media) | **POST** /v1/media/prepare | Prepare media for a platform |


## get_media_presigned_url

> <GetMediaPresignedUrl200Response> get_media_presigned_url(get_media_presigned_url_request)

Get upload URL

Get a presigned URL to upload files directly to cloud storage (up to 5GB). Returns an uploadUrl and publicUrl. PUT your file to the uploadUrl, then use the publicUrl in your posts.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::MediaApi.new
get_media_presigned_url_request = Zernio::GetMediaPresignedUrlRequest.new({filename: 'my-video.mp4', content_type: Zernio::MediaContentType::IMAGE_JPEG}) # GetMediaPresignedUrlRequest | 

begin
  # Get upload URL
  result = api_instance.get_media_presigned_url(get_media_presigned_url_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling MediaApi->get_media_presigned_url: #{e}"
end
```

#### Using the get_media_presigned_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMediaPresignedUrl200Response>, Integer, Hash)> get_media_presigned_url_with_http_info(get_media_presigned_url_request)

```ruby
begin
  # Get upload URL
  data, status_code, headers = api_instance.get_media_presigned_url_with_http_info(get_media_presigned_url_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMediaPresignedUrl200Response>
rescue Zernio::ApiError => e
  puts "Error when calling MediaApi->get_media_presigned_url_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_media_presigned_url_request** | [**GetMediaPresignedUrlRequest**](GetMediaPresignedUrlRequest.md) |  |  |

### Return type

[**GetMediaPresignedUrl200Response**](GetMediaPresignedUrl200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## prepare_media

> <PrepareMedia200Response> prepare_media(prepare_media_request)

Prepare media for a platform

Turn any image or video into a version the target platform accepts, using the same per-platform processing Zernio runs before publishing. Each team can prepare up to 60 files per hour; past that the endpoint answers 429 with `retryAfterSeconds`.  What each target does to a video: `instagram`, `facebook_reel` re-encode to H.264 Main 4.1, 30 fps, 1080 wide (HDR sources only get the size step, so they are not flattened to SDR). `instagram_story` re-encodes a video over 100MB to fit 60 seconds and 100MB. `facebook_story` reframes anything wider than 9:16 onto a 1080x1920 canvas with a blurred background (Facebook otherwise publishes such stories with 0 seconds of video and no error). `threads` re-encodes to the conservative H.264 Baseline profile Threads processes reliably. `bluesky` re-encodes to 1080 wide and at most 180 seconds, then compresses under 50MB if the result is still larger. `telegram` compresses to 50MB and moves the index to the start of the file. The other targets compress only when the file is over the platform limit.  Images are converted to a format the platform ingests (Instagram takes only JPEG, LinkedIn and Google Business reject WebP and AVIF) and compressed under its size limit; `telegram` also fits the width plus height limit and `googlebusiness` enlarges images under its minimum size.  When the file already complies, `changed` is false and `url` is the input URL (after redirects). Otherwise `url` points to the prepared file in Zernio storage, kept under the same retention as uploaded media. The request is synchronous: a long video can take a few minutes. Videos over 200MB are refused with 413, and a video URL whose host sends no Content-Length is refused with 400. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::MediaApi.new
prepare_media_request = Zernio::PrepareMediaRequest.new({url: 'https://example.com/clip.mov', target: 'instagram'}) # PrepareMediaRequest | 

begin
  # Prepare media for a platform
  result = api_instance.prepare_media(prepare_media_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling MediaApi->prepare_media: #{e}"
end
```

#### Using the prepare_media_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PrepareMedia200Response>, Integer, Hash)> prepare_media_with_http_info(prepare_media_request)

```ruby
begin
  # Prepare media for a platform
  data, status_code, headers = api_instance.prepare_media_with_http_info(prepare_media_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PrepareMedia200Response>
rescue Zernio::ApiError => e
  puts "Error when calling MediaApi->prepare_media_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prepare_media_request** | [**PrepareMediaRequest**](PrepareMediaRequest.md) |  |  |

### Return type

[**PrepareMedia200Response**](PrepareMedia200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

