# Zernio::GetAdComments200ResponseMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **ad_id** | **String** | Internal Zernio ad ID. |  |
| **platform_ad_id** | **String** | Meta ad ID. |  |
| **effective_story_id** | **String** | Underlying post ID the comments belong to. effective_object_story_id for Facebook, effective_instagram_media_id for Instagram. |  |
| **instagram_user_id** | **String** | Instagram-only. The Instagram-scoped business ID that owns the boosted media (creative.instagram_user_id). | [optional] |
| **instagram_permalink** | **String** | Instagram-only. Public permalink of the boosted IG post (creative.instagram_permalink_url). | [optional] |
| **instagram_account_id** | **String** | Instagram-only. The connected Instagram SocialAccount these comments were read through — use it for reply/hide actions via /v1/inbox/comments. | [optional] |
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
  instagram_user_id: null,
  instagram_permalink: null,
  instagram_account_id: null,
  account_id: null,
  last_updated: null
)
```

