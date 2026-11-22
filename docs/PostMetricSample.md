# Zernio::PostMetricSample

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **synced_at** | **String** | When Zernio read the numbers from the platform. |  |
| **views** | **Float** |  |  |
| **likes** | **Float** |  |  |
| **comments** | **Float** |  |  |
| **shares** | **Float** | null on platforms that do not return the counter, unlike a real 0. |  |
| **saves** | **Float** | null on platforms that do not return the counter, unlike a real 0. |  |
| **watch_seconds** | **Float** | Average watch time; null when the platform gives no watch signal. |  |
| **completion_rate** | **Float** | null when the platform gives no watch signal. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PostMetricSample.new(
  synced_at: null,
  views: null,
  likes: null,
  comments: null,
  shares: null,
  saves: null,
  watch_seconds: null,
  completion_rate: null
)
```

