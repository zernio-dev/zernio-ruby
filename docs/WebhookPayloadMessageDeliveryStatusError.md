# Zernio::WebhookPayloadMessageDeliveryStatusError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** |  | [optional] |
| **title** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |
| **explanation** | **String** | Plain-language translation of &#x60;code&#x60; (e.g. for 131026, that the recipient has likely opted out of marketing messages while utility templates are unaffected). Null for unmapped codes; fall back to title/message.  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadMessageDeliveryStatusError.new(
  code: null,
  title: null,
  message: null,
  explanation: null
)
```

