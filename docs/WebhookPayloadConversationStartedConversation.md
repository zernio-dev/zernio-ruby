# Zernio::WebhookPayloadConversationStartedConversation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Internal conversation ID |  |
| **platform** | **String** |  |  |
| **platform_conversation_id** | **String** |  |  |
| **participant_id** | **String** | Contact&#39;s platform identifier (IGSID, PSID, wa_id, etc.) | [optional] |
| **participant_name** | **String** |  |  |
| **participant_username** | **String** | Contact&#39;s handle when the platform exposes one | [optional] |
| **participant_picture** | **String** |  | [optional] |
| **status** | **String** |  |  |
| **contact_id** | **String** | Zernio CRM Contact ID for the participant, when one exists. Resolved by joining &#x60;participantId&#x60; to the ContactChannel collection (same join used by message.*, reaction.received, and call.* webhooks). Best-effort: omitted when no channel matches or &#x60;participantId&#x60; is absent. Lets integrators seed the CRM straight from &#x60;conversation.started&#x60; without waiting for the first &#x60;message.*&#x60; event.  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadConversationStartedConversation.new(
  id: null,
  platform: null,
  platform_conversation_id: null,
  participant_id: null,
  participant_name: null,
  participant_username: null,
  participant_picture: null,
  status: null,
  contact_id: null
)
```

