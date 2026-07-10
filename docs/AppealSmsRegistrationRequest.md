# Zernio::AppealSmsRegistrationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **appeal_reason** | **String** | Goes verbatim to the carrier reviewer — address the decline reason directly. |  |
| **message_flow** | **String** | Corrected opt-in flow; include a link to the opt-in page/form. | [optional] |
| **sample1** | **String** |  | [optional] |
| **sample2** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AppealSmsRegistrationRequest.new(
  appeal_reason: null,
  message_flow: null,
  sample1: null,
  sample2: null
)
```

