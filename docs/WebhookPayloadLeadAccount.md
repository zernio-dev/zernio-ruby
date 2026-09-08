# Zernio::WebhookPayloadLeadAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Account ID (the facebook account owning the Page) |  |
| **account_id** | **String** | Account ID (same as id); canonical field for account filtering. | [optional] |
| **platform** | **String** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadLeadAccount.new(
  id: null,
  account_id: null,
  platform: null
)
```

