# Zernio::EnableVoiceOnNumberRequestIvrOptionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **digit** | **String** |  |  |
| **forward_to** | **String** | tel:+E164, sip:..., or wss://... destination for this digit. |  |
| **label** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EnableVoiceOnNumberRequestIvrOptionsInner.new(
  digit: null,
  forward_to: null,
  label: null
)
```

