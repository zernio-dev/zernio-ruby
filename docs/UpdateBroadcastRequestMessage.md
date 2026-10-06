# Zernio::UpdateBroadcastRequestMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** |  | [optional] |
| **attachments** | [**Array&lt;CreateBroadcastRequestMessageAttachmentsInner&gt;**](CreateBroadcastRequestMessageAttachmentsInner.md) | SMS only: sent as MMS media. | [optional] |
| **message_tag** | **String** | Instagram and Facebook only. See createBroadcast. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateBroadcastRequestMessage.new(
  text: null,
  attachments: null,
  message_tag: null
)
```

