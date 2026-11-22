# Zernio::PostMetricRow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **String** | The day, with granularity&#x3D;day. | [optional] |
| **post_id** | **String** | The Zernio post, null for a post published outside Zernio. |  |
| **external_post_id** | **String** | The synced post, null while a published post waits for its first sync. |  |
| **account_id** | **String** |  |  |
| **profile_id** | **String** |  |  |
| **platform** | **String** |  |  |
| **platform_post_id** | **String** |  |  |
| **platform_post_url** | **String** |  |  |
| **published_at** | **String** |  |  |
| **last_synced_at** | **String** |  |  |
| **sync_status** | **String** |  |  |
| **sync_error** | [**PostMetricRowSyncError**](PostMetricRowSyncError.md) |  |  |
| **is_owner** | **Boolean** |  |  |
| **is_ad** | **Boolean** |  |  |
| **metrics** | **Hash&lt;String, Float&gt;** | Each metric asked; null when the platform does not report it or no snapshot exists yet. |  |
| **breakdowns** | [**Hash&lt;String, PostMetricRowBreakdownsValue&gt;**](PostMetricRowBreakdownsValue.md) |  | [optional] |
| **post** | [**PostMetricContent**](PostMetricContent.md) |  | [optional] |
| **authenticity** | [**PostMetricAuthenticity**](PostMetricAuthenticity.md) |  | [optional] |
| **samples** | [**Array&lt;PostMetricSample&gt;**](PostMetricSample.md) | With include&#x3D;samples: the readings of the publication, oldest first. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PostMetricRow.new(
  date: null,
  post_id: null,
  external_post_id: null,
  account_id: null,
  profile_id: null,
  platform: null,
  platform_post_id: null,
  platform_post_url: null,
  published_at: null,
  last_synced_at: null,
  sync_status: null,
  sync_error: null,
  is_owner: null,
  is_ad: null,
  metrics: null,
  breakdowns: null,
  post: null,
  authenticity: null,
  samples: null
)
```

