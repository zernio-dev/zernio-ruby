# Zernio::PostSample

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **synced_at** | **Time** | When Zernio fetched this reading from the platform |  |
| **views** | **Integer** |  |  |
| **likes** | **Integer** |  |  |
| **comments** | **Integer** |  |  |
| **shares** | **Integer** | Null on platforms that do not return shares |  |
| **saves** | **Integer** | Null on platforms that do not return saves |  |
| **watch_seconds** | **Float** | Average watch time in seconds. Null when the platform gives none. |  |
| **completion_rate** | **Float** | Share of viewers who watched to the end, 0 to 1. Null when the platform gives none. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PostSample.new(
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

