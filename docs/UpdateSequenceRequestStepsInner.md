# Zernio::UpdateSequenceRequestStepsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order** | **Integer** |  |  |
| **delay_minutes** | **Integer** |  |  |
| **message** | [**GetBroadcast200ResponseBroadcastMessage**](GetBroadcast200ResponseBroadcastMessage.md) |  | [optional] |
| **template** | [**UpdateSequenceRequestStepsInnerTemplate**](UpdateSequenceRequestStepsInnerTemplate.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateSequenceRequestStepsInner.new(
  order: null,
  delay_minutes: null,
  message: null,
  template: null
)
```

