# Zernio::CtwaAdRequestBodyWelcomeMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | Greeting shown when the chat opens. Replaces Meta&#39;s default (\&quot;Hi! Can we help you?\&quot;). |  |
| **prefill_text** | **String** | Message put into the user&#39;s text input, ready to send. Replaces Meta&#39;s default (\&quot;Hi! I want more info.\&quot;). Lets one ad steer the opening message toward what it promotes (e.g. a specific product). |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CtwaAdRequestBodyWelcomeMessage.new(
  text: null,
  prefill_text: null
)
```

