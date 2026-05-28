# Zernio::InboxWebhookConversation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **platform_conversation_id** | **String** |  |  |
| **participant_id** | **String** |  | [optional] |
| **participant_name** | **String** |  | [optional] |
| **participant_username** | **String** |  | [optional] |
| **participant_picture** | **String** |  | [optional] |
| **status** | **String** |  |  |
| **contact_id** | **String** | Zernio CRM Contact ID for the participant, when one exists. Resolved by joining &#x60;participantId&#x60; to the ContactChannel collection. Best-effort: omitted when no channel matches or &#x60;participantId&#x60; is absent. Lets integrators join any inbox webhook back to the CRM Contact without needing to look at the sender — which matters for outgoing and delivery-status events whose sender is the business.  | [optional] |

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

