# Zernio::AnalyticsDeltaEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_id** | **String** | External post ID. The same identifier as &#x60;posts[]._id&#x60; in GET /v1/analytics. |  |
| **account_id** | **String** | Social account this post was published through |  |
| **profile_id** | **String** | Profile the account belongs to |  |
| **platform** | **String** |  |  |
| **platform_post_id** | **String** | Platform-side post ID (for example the YouTube video ID) |  |
| **published_at** | **Time** | When the post was published, ISO-8601 UTC |  |
| **synced_at** | **Time** | When the sync cycle that produced this snapshot STARTED, ISO-8601 UTC. This is NOT the order entries arrive in and it is not a resume point: a slow cycle writes its rows after a faster cycle that started later, so &#x60;syncedAt&#x60; can go backwards between consecutive entries. Use &#x60;nextCursor&#x60; to resume.  |  |
| **is_deleted** | **Boolean** | True when the post was detected as deleted on the platform at this sync |  |
| **metrics** | [**AnalyticsDeltaEntryMetrics**](AnalyticsDeltaEntryMetrics.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AnalyticsDeltaEntry.new(
  post_id: null,
  account_id: null,
  profile_id: null,
  platform: youtube,
  platform_post_id: null,
  published_at: null,
  synced_at: null,
  is_deleted: null,
  metrics: null
)
```

