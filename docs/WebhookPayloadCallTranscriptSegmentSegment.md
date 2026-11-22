# Zernio::WebhookPayloadCallTranscriptSegmentSegment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | The final text of this segment. |  |
| **confidence** | **Float** | Speech recognition confidence from 0 to 1, when the provider reports it. |  |
| **at** | **Time** | When the segment was transcribed. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadCallTranscriptSegmentSegment.new(
  text: null,
  confidence: null,
  at: null
)
```

