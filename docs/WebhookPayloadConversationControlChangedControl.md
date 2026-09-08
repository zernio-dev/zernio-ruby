# Zernio::WebhookPayloadConversationControlChangedControl

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **owner** | **String** | Who answers now. ai_agent: Meta Business Agent; app: you; other: another partner app on the number. |  |
| **previous_owner** | **String** | Owner before this change, null when the thread had never been agent-handled. |  |
| **metadata** | **String** | Free-form string the transferring app attached to the handover, forwarded verbatim. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadConversationControlChangedControl.new(
  owner: null,
  previous_owner: null,
  metadata: null
)
```

