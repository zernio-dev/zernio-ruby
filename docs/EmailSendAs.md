# Zernio::EmailSendAs

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** |  | [optional] |
| **name** | **String** | Display name used when &#x60;fromName&#x60; is not given. | [optional] |
| **type** | **String** | &#x60;primary&#x60; is the mailbox&#39;s own address, &#x60;alias&#x60; a provider alias, &#x60;shared&#x60; a declared address (shared mailbox, delegate or alias). | [optional] |
| **verification_status** | **String** | &#x60;pending&#x60;: Gmail has not verified the alias, so sends from it are refused. &#x60;unverified&#x60;: declared and not sent from yet; it becomes &#x60;accepted&#x60; after its first send. | [optional] |
| **is_default** | **Boolean** | The address the provider picks by default. | [optional] |
| **source** | **String** |  | [optional] |
| **reply_to** | **String** | Gmail alias reply-to address, if set. | [optional] |
| **signature** | [**EmailSendAsSignature**](EmailSendAsSignature.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EmailSendAs.new(
  email: null,
  name: null,
  type: null,
  verification_status: null,
  is_default: null,
  source: null,
  reply_to: null,
  signature: null
)
```

