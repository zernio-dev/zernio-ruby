# Late::AdCreative

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thumbnail_url** | **String** | Primary thumbnail/image URL | [optional] |
| **image_url** | **String** | Alternative image URL | [optional] |
| **video_id** | **String** | Meta video ID for VIDEO-type ads. Null for non-video ads. Callers that need an embeddable MP4 can call GET /{videoId}?fields&#x3D;source with the page access token. | [optional] |
| **video_url** | **String** | Public Facebook watch URL for VIDEO-type ads (https://www.facebook.com/watch/?v&#x3D;{videoId}). Null for non-video ads. | [optional] |
| **object_type** | **String** | Meta creative object_type (e.g. SHARE, VIDEO, PRIVACY_CHECK_FAIL, POST_DELETED). Use this to render state-aware previews — when Meta moderation strips image/video fields, only thumbnailUrl at 64x64 is available. | [optional] |
| **media_urls** | **Array&lt;String&gt;** | All media URLs for this ad (carousel images, multiple assets). Populated for Meta (carousel child_attachments), Google Ads (responsive display marketing_images), and LinkedIn (multi-image posts). | [optional] |
| **body** | **String** | Ad copy/text | [optional] |
| **google_headline** | **String** | Google Ads headline | [optional] |
| **google_description** | **String** | Google Ads description | [optional] |
| **link_url** | **String** | Destination URL | [optional] |
| **pinterest_image_url** | **String** |  | [optional] |
| **pinterest_title** | **String** |  | [optional] |
| **pinterest_description** | **String** |  | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::AdCreative.new(
  thumbnail_url: null,
  image_url: null,
  video_id: null,
  video_url: null,
  object_type: null,
  media_urls: null,
  body: null,
  google_headline: null,
  google_description: null,
  link_url: null,
  pinterest_image_url: null,
  pinterest_title: null,
  pinterest_description: null
)
```

