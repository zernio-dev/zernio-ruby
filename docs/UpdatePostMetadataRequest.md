# Late::UpdatePostMetadataRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** | The platform to update metadata on |  |
| **video_id** | **String** | YouTube video ID (required for direct mode, ignored for post-based mode) | [optional] |
| **account_id** | **String** | Zernio social account ID (required for direct mode, ignored for post-based mode) | [optional] |
| **title** | **String** | New video title (max 100 characters for YouTube) | [optional] |
| **description** | **String** | New video description | [optional] |
| **tags** | **Array&lt;String&gt;** | Array of keyword tags (max 500 characters combined for YouTube) | [optional] |
| **category_id** | **String** | YouTube video category ID | [optional] |
| **privacy_status** | **String** | Video privacy setting | [optional] |
| **thumbnail_url** | **String** | Public URL of a custom thumbnail image (JPEG, PNG, or GIF, max 2 MB, recommended 1280x720). Works on any video you own, including existing videos not published through Zernio. The channel must be verified (phone verification) to set custom thumbnails. | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::UpdatePostMetadataRequest.new(
  platform: null,
  video_id: null,
  account_id: null,
  title: null,
  description: null,
  tags: null,
  category_id: null,
  privacy_status: null,
  thumbnail_url: null
)
```

