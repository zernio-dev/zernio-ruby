# Zernio::InboxWebhookConversation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Zernio&#39;s internal conversation id (also the message&#39;s conversationId). Accepted by every /v1/inbox/conversations/{conversationId} endpoint. |  |
| **platform_conversation_id** | **String** | The platform&#39;s conversation id. This is the &#x60;id&#x60; GET /v1/inbox/conversations returns for the same conversation (on Instagram and Messenger it is the participant&#39;s IGSID / PSID), so key your records on it to match webhooks with list rows. Also accepted by the conversation endpoints. |  |
| **participant_id** | **String** |  | [optional] |
| **participant_name** | **String** |  | [optional] |
| **participant_username** | **String** |  | [optional] |
| **participant_picture** | **String** |  | [optional] |
| **status** | **String** |  |  |
| **contact_id** | **String** | Zernio CRM Contact ID for the participant, when one exists. Resolved by joining &#x60;participantId&#x60; to the ContactChannel collection. Best-effort: omitted when no channel matches or &#x60;participantId&#x60; is absent. Lets integrators join any inbox webhook back to the CRM Contact without needing to look at the sender, which matters for outgoing and delivery-status events whose sender is the business.  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InboxWebhookConversation.new(
  id: null,
  platform_conversation_id: null,
  participant_id: null,
  participant_name: null,
  participant_username: null,
  participant_picture: null,
  status: null,
  contact_id: null
)
```

