# Zernio::EmailCapabilitiesSendAs

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list** | **String** | &#x60;provider&#x60;: &#x60;GET /v1/email/send-as&#x60; lists every address the provider accepts. &#x60;partial&#x60;: shared mailboxes are not listed; declare them with &#x60;POST /v1/email/send-as&#x60;. | [optional] |
| **shared_mailboxes** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EmailCapabilitiesSendAs.new(
  list: null,
  shared_mailboxes: null
)
```

