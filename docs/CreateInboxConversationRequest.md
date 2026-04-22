# Zernio::CreateInboxConversationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The social account ID to send from |  |
| **participant_id** | **String** | Twitter numeric user ID of the recipient. Provide either this or participantUsername. | [optional] |
| **participant_username** | **String** | Twitter username (with or without @) of the recipient. Resolved to a user ID via lookup. Provide either this or participantId. | [optional] |
| **message** | **String** | Text content of the message. At least one of message or attachment is required. | [optional] |
| **skip_dm_check** | **Boolean** | Skip the receives_your_dm eligibility check before sending. Use if you have already verified the recipient accepts DMs. | [optional][default to false] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateInboxConversationRequest.new(
  account_id: null,
  participant_id: null,
  participant_username: null,
  message: null,
  skip_dm_check: null
)
```

