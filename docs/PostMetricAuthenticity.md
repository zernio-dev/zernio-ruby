# Zernio::PostMetricAuthenticity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **score** | **Integer** | 0 to 100; higher looks more organic. |  |
| **confidence** | **Float** | How much data the score rests on, 0 to 1. |  |
| **reasons** | [**Array&lt;PostMetricAuthenticityReasonsInner&gt;**](PostMetricAuthenticityReasonsInner.md) | Each factor that lowered the score. |  |
| **version** | **String** |  |  |
| **computed_at** | **String** |  |  |
| **sample_count** | **Integer** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PostMetricAuthenticity.new(
  score: null,
  confidence: null,
  reasons: null,
  version: null,
  computed_at: null,
  sample_count: null
)
```

