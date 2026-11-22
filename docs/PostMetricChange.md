# Zernio::PostMetricChange

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **profile_id** | **String** |  |  |
| **platform** | **String** |  |  |
| **platform_post_id** | **String** |  |  |
| **published_at** | **String** |  |  |
| **synced_at** | **String** | When the account&#39;s sync cycle that read these numbers started. Not an order: resume with the cursor only. |  |
| **deleted** | **Boolean** | True when the post was removed from the platform. |  |
| **metrics** | **Hash&lt;String, Float&gt;** | Each metric asked, as the platform reported it in this change; null when the post&#39;s platform does not report it. |  |
| **breakdowns** | [**Hash&lt;String, PostMetricRowBreakdownsValue&gt;**](PostMetricRowBreakdownsValue.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PostMetricChange.new(
  account_id: null,
  profile_id: null,
  platform: null,
  platform_post_id: null,
  published_at: null,
  synced_at: null,
  deleted: null,
  metrics: null,
  breakdowns: null
)
```

