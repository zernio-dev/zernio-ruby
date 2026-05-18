# Zernio::ListInstagramStories200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Instagram media ID of the story. |  |
| **media_type** | **String** | IMAGE / VIDEO / CAROUSEL_ALBUM | [optional] |
| **media_product_type** | **String** | Always &#39;STORY&#39; for this endpoint. | [optional] |
| **media_url** | **String** | Direct media URL. Null if Meta flagged the story for copyright. URL expires when the story expires. | [optional] |
| **permalink** | **String** | Public Instagram permalink to the story (only viewable while live). | [optional] |
| **thumbnail_url** | **String** | Thumbnail URL for video stories. | [optional] |
| **timestamp** | **Time** | When the story was posted. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListInstagramStories200ResponseDataInner.new(
  id: null,
  media_type: null,
  media_product_type: null,
  media_url: null,
  permalink: null,
  thumbnail_url: null,
  timestamp: null
)
```

