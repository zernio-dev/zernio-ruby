# Zernio::PostMetricSlot

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **day_of_week** | **Integer** | UTC weekday the posts were published, 1 (Monday) to 7. |  |
| **hour** | **Integer** | UTC hour the posts were published, 0 to 23. |  |
| **post_count** | **Integer** | Posts published in the slot that have been synced at least once. |  |
| **metrics** | **Hash&lt;String, Float&gt;** | Each metric asked, summed over each post&#39;s latest snapshot; engagementRate pools them. null when no platform of the slot reports it. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PostMetricSlot.new(
  day_of_week: null,
  hour: null,
  post_count: null,
  metrics: null
)
```

