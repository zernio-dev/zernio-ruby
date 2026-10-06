# Zernio::WhatsAppConversationalAutomation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enable_welcome_message** | **Boolean** | When true, Meta sends a &#x60;request_welcome&#x60; event the first time a person opens a chat with the number. | [optional] |
| **prompts** | **Array&lt;String&gt;** | Ice breakers shown to a person opening a chat. Tapping one sends its text as a normal message. | [optional] |
| **commands** | [**Array&lt;WhatsAppConversationalAutomationCommandsInner&gt;**](WhatsAppConversationalAutomationCommandsInner.md) | Slash commands shown when a person types &#x60;/&#x60;. Names are unique, letters, digits and underscores, without the slash. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WhatsAppConversationalAutomation.new(
  enable_welcome_message: null,
  prompts: null,
  commands: null
)
```

