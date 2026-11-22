# Zernio::ValidateMedia200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **valid** | **Boolean** |  | [optional] |
| **url** | **String** |  | [optional] |
| **error** | **String** | Error message if valid is false | [optional] |
| **code** | **String** | Stable reason when valid is false. MEDIA_UNDECODABLE: the bytes are not a valid image, video or PDF. MEDIA_URL_UNREACHABLE: HTTP error, timeout, network failure, or a web page served instead of the file. MEDIA_URL_NOT_ALLOWED: not a public HTTP(S) URL. | [optional] |
| **content_type** | **String** | Content-Type header the server sent (may disagree with the detected format) | [optional] |
| **size** | **Integer** | File size in bytes | [optional] |
| **size_formatted** | **String** |  | [optional] |
| **type** | **String** | Detected from the file bytes | [optional] |
| **format** | **String** | Detected format (jpeg, png, webp, gif, heif, mp4, mov, webm, pdf, ...) | [optional] |
| **width** | **Integer** | Image width in pixels (images only) | [optional] |
| **height** | **Integer** | Image height in pixels (images only) | [optional] |
| **inspection** | **String** | How deeply the content was verified. decoded: every pixel decoded. header: file signature and header verified (videos, PDFs, HEIC/AVIF, images over 32 MB). | [optional] |
| **platform_limits** | [**Hash&lt;String, ValidateMedia200ResponsePlatformLimitsValue&gt;**](ValidateMedia200ResponsePlatformLimitsValue.md) | Per-platform size limit comparison (only present when size and type are known) | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ValidateMedia200Response.new(
  valid: null,
  url: null,
  error: null,
  code: null,
  content_type: image/jpeg,
  size: null,
  size_formatted: 245 KB,
  type: null,
  format: jpeg,
  width: null,
  height: null,
  inspection: null,
  platform_limits: {&quot;instagram&quot;:{&quot;limit&quot;:8388608,&quot;limitFormatted&quot;:&quot;8.0 MB&quot;,&quot;withinLimit&quot;:true},&quot;twitter&quot;:{&quot;limit&quot;:5242880,&quot;limitFormatted&quot;:&quot;5.0 MB&quot;,&quot;withinLimit&quot;:true},&quot;bluesky&quot;:{&quot;limit&quot;:1000000,&quot;limitFormatted&quot;:&quot;977 KB&quot;,&quot;withinLimit&quot;:true}}
)
```

