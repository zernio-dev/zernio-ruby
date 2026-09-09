# Zernio::GetAdComments200ResponseMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** | Platform of the comments. |  |
| **placement** | **String** | The placement these comments are for, useful when you didn&#39;t pass ?placement&#x3D; and want to know which one you got. | [optional] |
| **ad_id** | **String** | Internal Zernio ad ID. |  |
| **platform_ad_id** | **String** | Platform ad ID. | [optional] |
| **effective_story_id** | **String** | Underlying post ID the comments belong to. effective_object_story_id for the Facebook side, effective_instagram_media_id for the Instagram side. | [optional] |
| **tiktok_item_id** | **String** | TikTok-only video item ID. Null when the ad and comments do not expose it. | [optional] |
| **since** | **Date** | TikTok-only resolved start date. | [optional] |
| **_until** | **Date** | TikTok-only resolved end date. | [optional] |
| **facebook_account_id** | **String** | Facebook-only. The connected Facebook Page SocialAccount these comments were read through. Pass it as &#x60;accountId&#x60; (with &#x60;effectiveStoryId&#x60; as the postId) to /v1/inbox/comments to reply/hide/delete. Null when no connected Page was used (then moderation isn&#39;t possible). | [optional] |
| **instagram_user_id** | **String** | Instagram-only. The Instagram-scoped business ID that owns the boosted media (creative.instagram_user_id). | [optional] |
| **instagram_permalink** | **String** | Instagram-only. Public permalink of the boosted IG post (creative.instagram_permalink_url). | [optional] |
| **instagram_account_id** | **String** | Instagram-only. The connected Instagram SocialAccount these comments were read through. Pass it as &#x60;accountId&#x60; (with &#x60;effectiveStoryId&#x60; as the postId) to /v1/inbox/comments to reply/hide/delete. | [optional] |
| **account_id** | **String** | Account ID (ads SocialAccount). |  |
| **last_updated** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdComments200ResponseMeta.new(
  platform: null,
  placement: null,
  ad_id: null,
  platform_ad_id: null,
  effective_story_id: null,
  tiktok_item_id: null,
  since: null,
  _until: null,
  facebook_account_id: null,
  instagram_user_id: null,
  instagram_permalink: null,
  instagram_account_id: null,
  account_id: null,
  last_updated: null
)
```

