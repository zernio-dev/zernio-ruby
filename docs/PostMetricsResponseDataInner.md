# Zernio::PostMetricsResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **String** | The day, with granularity&#x3D;day. | [optional] |
| **post_id** | **String** |  |  |
| **external_post_id** | **String** |  |  |
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
| **metrics** | **Hash&lt;String, Float&gt;** | Each metric asked, as the platform reported it in this change; null when the post&#39;s platform does not report it. |  |
| **breakdowns** | [**Hash&lt;String, PostMetricRowBreakdownsValue&gt;**](PostMetricRowBreakdownsValue.md) |  | [optional] |
| **post** | [**PostMetricContent**](PostMetricContent.md) |  | [optional] |
| **authenticity** | [**PostMetricAuthenticity**](PostMetricAuthenticity.md) |  | [optional] |
| **samples** | [**Array&lt;PostMetricSample&gt;**](PostMetricSample.md) | With include&#x3D;samples: the readings of the publication, oldest first. | [optional] |
| **platforms** | **Array&lt;String&gt;** |  |  |
| **account_ids** | **Array&lt;String&gt;** |  |  |
| **publications** | **Integer** |  |  |
| **day_of_week** | **Integer** | UTC weekday the posts were published, 1 (Monday) to 7. |  |
| **hour** | **Integer** | UTC hour the posts were published, 0 to 23. |  |
| **post_count** | **Integer** | Posts of the format published in the range. |  |
| **post_age** | **String** | Time since publishing: 0-6h, 6-12h, 12-24h, 1-2d, 2-7d, 7-30d or 30d+. |  |
| **format** | **String** | gif counts as image, document as text. |  |
| **synced_at** | **String** | When the account&#39;s sync cycle that read these numbers started. Not an order: resume with the cursor only. |  |
| **deleted** | **Boolean** | True when the post was removed from the platform. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PostMetricsResponseDataInner.new(
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
  samples: null,
  platforms: null,
  account_ids: null,
  publications: null,
  day_of_week: null,
  hour: null,
  post_count: null,
  post_age: null,
  format: null,
  synced_at: null,
  deleted: null
)
```

