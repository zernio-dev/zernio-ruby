# Late::CreateSequenceRequestStepsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order** | **Integer** |  |  |
| **delay_minutes** | **Integer** |  |  |
| **message** | [**CreateSequenceRequestStepsInnerMessage**](CreateSequenceRequestStepsInnerMessage.md) |  | [optional] |
| **template** | [**GetWhatsAppBroadcasts200ResponseBroadcastsInnerTemplate**](GetWhatsAppBroadcasts200ResponseBroadcastsInnerTemplate.md) |  | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::CreateSequenceRequestStepsInner.new(
  order: null,
  delay_minutes: null,
  message: null,
  template: null
)
```

