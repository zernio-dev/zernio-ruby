# Zernio::CreateInboxConversationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The social account ID to send from |  |
| **participant_id** | **String** | Recipient identifier. For X this is the numeric user ID; for WhatsApp, the recipient phone number in international format (digits, country code included). Provide either this or participantUsername. | [optional] |
| **participant_username** | **String** | Recipient handle/username — an X or Bluesky handle (with or without @) or a Reddit username (with or without u/). Resolved via lookup. Provide either this or participantId. | [optional] |
| **message** | **String** | Text content of the message. At least one of message, attachment, or (for WhatsApp) templateName is required. | [optional] |
| **skip_dm_check** | **Boolean** | X/Twitter only. Skip the receives_your_dm eligibility check before sending. Use if you have already verified the recipient accepts DMs. | [optional][default to false] |
| **template_name** | **String** | WhatsApp only. Name of the approved template to start the conversation with (required for WhatsApp). | [optional] |
| **template_language** | **String** | WhatsApp only. Template language code (e.g. en_US). | [optional] |
| **template_params** | **Array&lt;String&gt;** | WhatsApp only. Body variable values, in order, substituted into the template body ({{1}}, {{2}}, ...). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateInboxConversationRequest.new(
  account_id: null,
  participant_id: null,
  participant_username: null,
  message: null,
  skip_dm_check: null,
  template_name: null,
  template_language: null,
  template_params: null
)
```

