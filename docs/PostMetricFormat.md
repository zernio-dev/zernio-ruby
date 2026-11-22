# Zernio::PostMetricFormat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **format** | **String** | gif counts as image, document as text. |  |
| **post_count** | **Integer** | Posts of the format published in the range. |  |
| **metrics** | **Hash&lt;String, Float&gt;** | Each metric asked, summed over the newest posts of the range up to meta.metricsSample.limit; engagementRate pools them. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PostMetricFormat.new(
  format: null,
  post_count: null,
  metrics: null
)
```

