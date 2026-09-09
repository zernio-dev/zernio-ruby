# Zernio::CtwaAdRequestBodyCreativesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **existing_post_id** | **String** | Messaging and CTWA only. Platform post or reel ID, resolved like boost platformPostId. Facebook IDs become object_story_id; Instagram IDs become source_instagram_media_id using the connected Instagram identity. Mutually exclusive with objectStoryId and fresh creative fields. | [optional] |
| **object_story_id** | **String** | Messaging and CTWA only. Raw Facebook pageId_postId reference, used as object_story_id even with an Instagram account. Mutually exclusive with existingPostId and fresh creative fields. | [optional] |
| **creative_features** | **Hash&lt;String, String&gt;** | Replaces the top-level creativeFeatures map for this item. Omit to inherit; an empty object clears inherited enrollment choices. | [optional] |
| **headline** | **String** |  | [optional] |
| **body** | **String** | Primary text shown above the image / video. | [optional] |
| **image_url** | **String** | Image asset. Mutually exclusive with this entry&#39;s &#x60;video&#x60;. Required if neither &#x60;video&#x60; nor an existing post reference is supplied.  | [optional] |
| **video** | [**CtwaAdRequestBodyCreativesInnerVideo**](CtwaAdRequestBodyCreativesInnerVideo.md) |  | [optional] |
| **welcome_message** | [**CtwaAdRequestBodyCreativesInnerWelcomeMessage**](CtwaAdRequestBodyCreativesInnerWelcomeMessage.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CtwaAdRequestBodyCreativesInner.new(
  existing_post_id: null,
  object_story_id: null,
  creative_features: {auto_promotion_tag&#x3D;OPT_IN},
  headline: null,
  body: null,
  image_url: null,
  video: null,
  welcome_message: null
)
```

