# Zernio::SetConversationThreadControlRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Social account ID |  |
| **action** | **String** |  |  |
| **target** | **String** | With action pass: send control to Meta Business Agent instead of the escalation partner. | [optional] |
| **metadata** | **String** | Free-form note forwarded verbatim to the app receiving control (its messaging_handovers webhook). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SetConversationThreadControlRequest.new(
  account_id: null,
  action: null,
  target: null,
  metadata: null
)
```

