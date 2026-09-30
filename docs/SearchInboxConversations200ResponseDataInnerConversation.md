# Zernio::SearchInboxConversations200ResponseDataInnerConversation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Conversation ID, usable with the conversation messages endpoints | [optional] |
| **platform** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **participant_name** | **String** |  | [optional] |
| **participant_username** | **String** |  | [optional] |
| **participant_picture** | **String** |  | [optional] |
| **business_scoped_user_id** | **String** | WhatsApp only. Meta business-scoped user ID (BSUID), the stable identity anchor; present when Meta has sent it for this participant. | [optional] |
| **whatsapp_username** | **String** | WhatsApp only. The participant&#39;s WhatsApp username (e.g. &#x60;jane.shop&#x60;, no leading @). Not a stable identifier, because users can change it: useful for display, not recommended as an identity anchor. Captured from inbound messages, so older threads fill in on their next inbound. | [optional] |
| **status** | **String** |  | [optional] |
| **last_message** | **String** | The conversation&#39;s most recent message preview | [optional] |
| **last_message_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SearchInboxConversations200ResponseDataInnerConversation.new(
  id: null,
  platform: null,
  account_id: null,
  participant_name: null,
  participant_username: null,
  participant_picture: null,
  business_scoped_user_id: null,
  whatsapp_username: null,
  status: null,
  last_message: null,
  last_message_at: null
)
```

