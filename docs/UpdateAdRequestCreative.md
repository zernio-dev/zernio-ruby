# Zernio::UpdateAdRequestCreative

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **headline** | **String** | Meta and LinkedIn (TikTok has no headline slot) | [optional] |
| **body** | **String** |  | [optional] |
| **description** | **String** | Link description slot (Meta &#x60;link_data.description&#x60; / &#x60;video_data.link_description&#x60;, LinkedIn creative description). | [optional] |
| **call_to_action** | **String** |  | [optional] |
| **link_url** | **String** |  | [optional] |
| **image_url** | **String** |  | [optional] |
| **video_url** | **String** |  | [optional] |
| **video_id** | **String** | Meta only. Reuse an already-uploaded ad video (from POST /v1/ads/videos or GET /v1/ads/videos) instead of re-uploading via videoUrl. | [optional] |
| **existing_creative_id** | **String** | Meta only. Repoint the ad at an existing library creative (from GET /v1/ads/creatives); all other creative fields are ignored. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdRequestCreative.new(
  headline: null,
  body: null,
  description: null,
  call_to_action: null,
  link_url: null,
  image_url: null,
  video_url: null,
  video_id: null,
  existing_creative_id: null
)
```

