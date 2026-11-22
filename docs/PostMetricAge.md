# Zernio::PostMetricAge

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_age** | **String** | Time since publishing: 0-6h, 6-12h, 12-24h, 1-2d, 2-7d, 7-30d or 30d+. |  |
| **post_count** | **Integer** | Posts with engagement that had a snapshot at that age. |  |
| **metrics** | **Hash&lt;String, Float&gt;** | engagementShareOfFinal: the average share of each post&#39;s final engagement it had reached at that age, in percent. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PostMetricAge.new(
  post_age: null,
  post_count: null,
  metrics: null
)
```

