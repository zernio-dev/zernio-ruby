# Zernio::InlineObject2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** | Human-readable error message suitable for end-user display. |  |
| **code** | **String** | Machine-readable error code. Stable across versions. |  |
| **reason** | **String** | Discriminator for which gate fired. |  |
| **documentation_url** | **String** | Link to the relevant documentation page. | [optional] |
| **dashboard_url** | **String** | Deep-link to send the end-user to. For &#x60;free_tier_exceeded&#x60; and &#x60;twitter_passthrough&#x60; this is the Zernio billing tab. For &#x60;enterprise_required&#x60; this is the Zernio enterprise contact page.  | [optional] |
| **details** | [**InlineObject2Details**](InlineObject2Details.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InlineObject2.new(
  error: X (Twitter) requires a payment method due to API pass-through costs. Add a payment method to connect an X account.,
  code: null,
  reason: null,
  documentation_url: https://docs.zernio.com/billing/payment-method-required,
  dashboard_url: https://zernio.com/dashboard?tab&#x3D;billing,
  details: null
)
```

