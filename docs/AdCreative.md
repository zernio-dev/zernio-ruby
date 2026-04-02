# Late::AdCreative

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thumbnail_url** | **String** | Primary thumbnail/image URL | [optional] |
| **image_url** | **String** | Alternative image URL | [optional] |
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

