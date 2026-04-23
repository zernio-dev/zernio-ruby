# Zernio::GetAdComments200ResponseMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **ad_id** | **String** | Internal Zernio ad ID. |  |
| **platform_ad_id** | **String** | Meta ad ID. |  |
| **effective_story_id** | **String** | Underlying post ID the comments belong to. effective_object_story_id for Facebook, effective_instagram_media_id for Instagram. |  |
| **account_id** | **String** | Social account ID (ads SocialAccount). |  |
| **last_updated** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdComments200ResponseMeta.new(
  platform: null,
  ad_id: null,
  platform_ad_id: null,
  effective_story_id: null,
  account_id: null,
  last_updated: null
)
```

