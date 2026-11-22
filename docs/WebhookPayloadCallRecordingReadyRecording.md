# Zernio::WebhookPayloadCallRecordingReadyRecording

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | Temporary link to the recording file. |  |
| **expires_at** | **Time** | When the link stops working, about 3 days after the call. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadCallRecordingReadyRecording.new(
  url: null,
  expires_at: null
)
```

