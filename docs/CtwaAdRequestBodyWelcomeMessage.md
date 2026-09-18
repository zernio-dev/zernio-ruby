# Zernio::CtwaAdRequestBodyWelcomeMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | Greeting shown when the chat opens. Replaces Meta&#39;s default (\&quot;Hi! Can we help you?\&quot;). |  |
| **prefill_text** | **String** | Message put into the user&#39;s text input, ready to send. Replaces Meta&#39;s default (\&quot;Hi! I want more info.\&quot;). Lets one ad steer the opening message toward what it promotes (e.g. a specific product). Exactly one of prefillText or quickReplies. | [optional] |
| **quick_replies** | [**Array&lt;CtwaAdRequestBodyWelcomeMessageQuickRepliesInner&gt;**](CtwaAdRequestBodyWelcomeMessageQuickRepliesInner.md) | Tappable chips under the greeting instead of a prefilled message. Exactly one of prefillText or quickReplies. Put your own campaign or ad key in each payload: the tap arrives on the messages webhook with that payload even where Meta delivers no ad referral (Pages owned by an EU business under the Europe/Japan Messenger restrictions).  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CtwaAdRequestBodyWelcomeMessage.new(
  text: null,
  prefill_text: null,
  quick_replies: null
)
```

