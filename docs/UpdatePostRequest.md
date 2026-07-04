# Zernio::UpdatePostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** |  | [optional] |
| **content** | **String** |  | [optional] |
| **media_items** | [**Array&lt;MediaItem&gt;**](MediaItem.md) |  | [optional] |
| **platforms** | [**Array&lt;UpdatePostRequestPlatformsInner&gt;**](UpdatePostRequestPlatformsInner.md) | Target platforms and accounts for this post. Each item must include platform and accountId. | [optional] |
| **scheduled_for** | **Time** |  | [optional] |
| **publish_now** | **Boolean** |  | [optional][default to false] |
| **is_draft** | **Boolean** | When omitted, the post keeps its current draft status. Send &#x60;false&#x60; to promote a draft to scheduled (combined with &#x60;scheduledFor&#x60;, &#x60;publishNow&#x60;, or a queue). | [optional] |
| **timezone** | **String** |  | [optional] |
| **visibility** | **String** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **hashtags** | **Array&lt;String&gt;** |  | [optional] |
| **mentions** | **Array&lt;String&gt;** |  | [optional] |
| **crossposting_enabled** | **Boolean** |  | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **queued_from_profile** | **String** | Profile ID to schedule via queue. | [optional] |
| **queue_id** | **String** | Specific queue ID to use when scheduling via queue. | [optional] |
| **tiktok_settings** | [**TikTokPlatformData**](TikTokPlatformData.md) | Root-level TikTok settings applied to all TikTok platforms. Merged into each platform&#39;s platformSpecificData, with platform-specific settings taking precedence. | [optional] |
| **facebook_settings** | [**FacebookPlatformData**](FacebookPlatformData.md) | Root-level Facebook settings applied to all Facebook platforms. Merged into each platform&#39;s platformSpecificData, with platform-specific settings taking precedence. | [optional] |
| **recycling** | [**RecyclingConfig**](RecyclingConfig.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdatePostRequest.new(
  title: null,
  content: null,
  media_items: null,
  platforms: null,
  scheduled_for: null,
  publish_now: null,
  is_draft: null,
  timezone: null,
  visibility: null,
  tags: null,
  hashtags: null,
  mentions: null,
  crossposting_enabled: null,
  metadata: null,
  queued_from_profile: null,
  queue_id: null,
  tiktok_settings: null,
  facebook_settings: null,
  recycling: null
)
```

