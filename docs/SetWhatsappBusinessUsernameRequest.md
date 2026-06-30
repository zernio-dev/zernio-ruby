# Zernio::SetWhatsappBusinessUsernameRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account ID |  |
| **username** | **String** | Desired username. Letters, digits, period, and underscore only. Must contain at least one letter. No leading, trailing, or consecutive periods. No www prefix. No domain TLD suffix.  |  |
| **transfer_action** | **String** | Pass &#x60;force_transfer&#x60; to request a transfer if the username is held by another account | [optional][default to &#39;none&#39;] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SetWhatsappBusinessUsernameRequest.new(
  account_id: null,
  username: null,
  transfer_action: null
)
```

