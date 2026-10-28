# Zernio::WebhookPayloadPostAuthenticityChangedAuthenticity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **score** | **Integer** | 0 to 100, higher is more authentic |  |
| **previous_score** | **Integer** |  |  |
| **confidence** | **Float** | 0 to 1, how much data the score rests on |  |
| **reasons** | [**Array&lt;WebhookPayloadPostAuthenticityChangedAuthenticityReasonsInner&gt;**](WebhookPayloadPostAuthenticityChangedAuthenticityReasonsInner.md) |  |  |
| **version** | **String** | Scoring model version |  |
| **computed_at** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadPostAuthenticityChangedAuthenticity.new(
  score: null,
  previous_score: null,
  confidence: null,
  reasons: null,
  version: null,
  computed_at: null
)
```

