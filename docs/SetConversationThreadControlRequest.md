# Zernio::SetConversationThreadControlRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Social account ID |  |
| **action** | **String** | &#x60;request&#x60; is Facebook and Instagram only. |  |
| **target** | **String** | WhatsApp only. With action pass: send control to Meta Business Agent instead of the escalation partner. | [optional] |
| **target_app_id** | **String** | Facebook and Instagram only, required with action pass: the Meta app id receiving the thread. | [optional] |
| **metadata** | **String** | Free-form note forwarded verbatim to the app receiving control (its messaging_handovers webhook). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SetConversationThreadControlRequest.new(
  account_id: null,
  action: null,
  target: null,
  target_app_id: null,
  metadata: null
)
```

