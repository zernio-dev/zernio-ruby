# Zernio::DuplicateAdSetRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **campaign_id** | **String** | Destination platform campaign id (defaults to the source&#39;s campaign) | [optional] |
| **deep_copy** | **Boolean** | Copy child ads + creatives | [optional][default to true] |
| **status_option** | **String** |  | [optional][default to &#39;PAUSED&#39;] |
| **start_time** | **Time** | Reschedule the copy&#39;s start (ISO 8601). A value without an offset (&#x60;YYYY-MM-DD&#x60;, &#x60;YYYY-MM-DD HH:MM:SS&#x60; or &#x60;YYYY-MM-DDTHH:MM:SS&#x60;) is read in the ad account timezone. | [optional] |
| **end_time** | **Time** | Reschedule the copy&#39;s end, read like &#x60;startTime&#x60;; a date-only end runs to 23:59:59 local. | [optional] |
| **rename_strategy** | **String** | Meta&#39;s native &#x60;rename_strategy&#x60; values. &#x60;DEEP_RENAME&#x60; renames the copied ad set and its copied ads with &#x60;renamePrefix&#x60; / &#x60;renameSuffix&#x60;. &#x60;ONLY_TOP_LEVEL_RENAME&#x60; renames only the copied ad set; its ads keep their source names. &#x60;NO_RENAME&#x60; keeps every source name. With no rename option at all, Meta appends its own &#x60; - Copy&#x60; suffix. Ignored on TikTok, where &#x60;renamePrefix&#x60; / &#x60;renameSuffix&#x60; still apply. | [optional] |
| **rename_prefix** | **String** | Text prepended to each renamed object&#39;s name. | [optional] |
| **rename_suffix** | **String** | Text appended to each renamed object&#39;s name. | [optional] |
| **sync_after** | **Boolean** |  | [optional][default to true] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::DuplicateAdSetRequest.new(
  platform: null,
  campaign_id: null,
  deep_copy: null,
  status_option: null,
  start_time: null,
  end_time: null,
  rename_strategy: null,
  rename_prefix: null,
  rename_suffix: null,
  sync_after: null
)
```

