# Zernio::CreatePostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** |  | [optional] |
| **content** | **String** | Post caption/text. Optional when media is attached, all platforms have customContent, every platform entry is an X Article (platformSpecificData.article), or every platform entry is a LinkedIn text-free reshare (platformSpecificData.reshareUrl with no text). Required for other text-only posts. | [optional] |
| **media_items** | [**Array&lt;MediaItem&gt;**](MediaItem.md) |  | [optional] |
| **platforms** | [**Array&lt;CreatePostRequestPlatformsInner&gt;**](CreatePostRequestPlatformsInner.md) | Target platforms and accounts for this post. Required for non-draft posts (returns 400 if empty). Drafts can omit platforms. | [optional] |
| **scheduled_for** | **Time** |  | [optional] |
| **publish_now** | **Boolean** |  | [optional][default to false] |
| **is_draft** | **Boolean** | When true, saves the post as a draft. When none of scheduledFor, publishNow, or queuedFromProfile are provided, the post defaults to draft automatically. | [optional][default to false] |
| **timezone** | **String** |  | [optional][default to &#39;UTC&#39;] |
| **tags** | **Array&lt;String&gt;** | Tags/keywords. YouTube constraints: each tag max 100 chars, combined max 500 chars, duplicates auto-removed. | [optional] |
| **hashtags** | **Array&lt;String&gt;** |  | [optional] |
| **mentions** | **Array&lt;String&gt;** | Stored for reference only. This field does NOT automatically create @mentions when publishing. For LinkedIn @mentions, use the /v1/accounts/{accountId}/linkedin-mentions endpoint to resolve profile URLs to URNs, then embed the returned mentionFormat directly in the post content field. | [optional] |
| **crossposting_enabled** | **Boolean** |  | [optional][default to true] |
| **metadata** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **tiktok_settings** | [**TikTokPlatformData**](TikTokPlatformData.md) | Root-level TikTok settings applied to the TikTok platforms sent in the same request. Merged into each platform&#39;s platformSpecificData, with platform-specific settings taking precedence. | [optional] |
| **facebook_settings** | [**FacebookSettings**](FacebookSettings.md) | Root-level Facebook settings applied to the Facebook platforms sent in the same request. Merged into each platform&#39;s platformSpecificData.facebookSettings, with platform-specific settings taking precedence. | [optional] |
| **recycling** | [**RecyclingConfig**](RecyclingConfig.md) |  | [optional] |
| **queued_from_profile** | **String** | Profile ID to schedule via queue. When provided without scheduledFor, the post is auto-assigned to the next available slot. Do not call /v1/queue/next-slot and use that time in scheduledFor, as that bypasses queue locking. | [optional] |
| **queue_id** | **String** | Specific queue ID to use when scheduling via queue. Only used when queuedFromProfile is also provided. If omitted, uses the profile&#39;s default queue.  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatePostRequest.new(
  title: null,
  content: null,
  media_items: null,
  platforms: null,
  scheduled_for: null,
  publish_now: null,
  is_draft: null,
  timezone: null,
  tags: null,
  hashtags: null,
  mentions: null,
  crossposting_enabled: null,
  metadata: null,
  tiktok_settings: null,
  facebook_settings: null,
  recycling: null,
  queued_from_profile: null,
  queue_id: null
)
```

