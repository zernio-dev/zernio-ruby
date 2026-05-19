# Zernio::UpdateSequenceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **steps** | [**Array&lt;UpdateSequenceRequestStepsInner&gt;**](UpdateSequenceRequestStepsInner.md) | Replace the full step list. Only allowed while the sequence is draft or paused. | [optional] |
| **exit_on_reply** | **Boolean** |  | [optional] |
| **exit_on_unsubscribe** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateSequenceRequest.new(
  name: null,
  description: null,
  steps: null,
  exit_on_reply: null,
  exit_on_unsubscribe: null
)
```

