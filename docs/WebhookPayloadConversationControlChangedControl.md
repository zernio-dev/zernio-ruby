# Zernio::WebhookPayloadConversationControlChangedControl

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **owner** | **String** | Who answers now. ai_agent: Meta Business Agent (WhatsApp); app: you; other: another app (a WhatsApp partner, or a Messenger / Instagram receiver such as Page Inbox). |  |
| **previous_owner** | **String** | Owner before this change, null when no handover had touched the thread. |  |
| **owner_app_id** | **String** | Meta app id of the new owner, when Meta names it (Facebook and Instagram handovers, WhatsApp partner apps). Page Inbox is 263902037430900. | [optional] |
| **metadata** | **String** | Free-form string the transferring app attached to the handover, forwarded verbatim. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadConversationControlChangedControl.new(
  owner: null,
  previous_owner: null,
  owner_app_id: null,
  metadata: null
)
```

