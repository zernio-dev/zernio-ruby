# Zernio::WebhookPayloadConversationStartedConversation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Internal conversation ID |  |
| **platform** | **String** |  |  |
| **platform_conversation_id** | **String** |  |  |
| **participant_id** | **String** | Contact&#39;s platform identifier (IGSID | [optional] |
| **participant_name** | **String** |  |  |
| **participant_username** | **String** | Contact&#39;s handle when the platform exposes one | [optional] |
| **participant_picture** | **String** |  | [optional] |
| **status** | **String** |  |  |

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
  status: null
)
```

