# Zernio::XApiOperation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **operation** | **String** | Internal operation key. Matches keys in &#x60;xApiCallsByOperation&#x60;. | [optional] |
| **event_type** | **String** | Metronome &#x60;event_type&#x60; emitted when this operation runs. | [optional] |
| **display_name** | **String** | Human-readable label shown on Metronome invoices. | [optional] |
| **price_per_call_usd** | **Float** |  | [optional] |
| **price_per_call_cents** | **Float** | Per-call price in cents. Fractional values are intentional. | [optional] |
| **tier** | **String** | Which aggregate price tier this operation falls into. | [optional] |
| **triggered_by** | [**Array&lt;XApiOperationTriggeredByInner&gt;**](XApiOperationTriggeredByInner.md) | Zernio platform methods that emit this operation, with their metering rule. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::XApiOperation.new(
  operation: posts_read,
  event_type: x_posts_read,
  display_name: X API: Posts Read,
  price_per_call_usd: 0.005,
  price_per_call_cents: 0.5,
  tier: null,
  triggered_by: null
)
```

