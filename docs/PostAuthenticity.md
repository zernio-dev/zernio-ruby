# Zernio::PostAuthenticity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_id** | **String** | The external post the score belongs to |  |
| **score** | **Integer** | Higher means the view pattern looks more organic |  |
| **confidence** | **Float** | How much data the score rests on |  |
| **reasons** | [**Array&lt;PostAuthenticityReasonsInner&gt;**](PostAuthenticityReasonsInner.md) | Each factor that lowered the score, with its weight in points |  |
| **version** | **String** | Scoring model version |  |
| **computed_at** | **Time** |  |  |
| **sample_count** | **Integer** | Number of samples the score was computed from |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PostAuthenticity.new(
  post_id: null,
  score: null,
  confidence: null,
  reasons: null,
  version: null,
  computed_at: null,
  sample_count: null
)
```

