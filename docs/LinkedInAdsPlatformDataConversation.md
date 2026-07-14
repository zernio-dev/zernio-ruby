# Zernio::LinkedInAdsPlatformDataConversation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subject** | **String** | InMail subject shown in the inbox. |  |
| **sender** | **String** | Person or organization URN. Defaults to the authoring Company Page. The sender must be approved for the ad account first (Campaign Manager &gt; Manage message ad senders) or LinkedIn rejects the create with SINMAIL_SENDER_NOT_APPROVED.  | [optional] |
| **body** | **String** | Optional intro body (HTML allowed). | [optional] |
| **footer** | **String** | Terms shown at the bottom of the message. | [optional] |
| **headline** | **String** | Conversation headline. Defaults to the first message&#39;s first line. | [optional] |
| **first_message_id** | **String** |  |  |
| **messages** | [**Array&lt;LinkedInAdsPlatformDataConversationMessagesInner&gt;**](LinkedInAdsPlatformDataConversationMessagesInner.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::LinkedInAdsPlatformDataConversation.new(
  subject: null,
  sender: null,
  body: null,
  footer: null,
  headline: null,
  first_message_id: null,
  messages: null
)
```

