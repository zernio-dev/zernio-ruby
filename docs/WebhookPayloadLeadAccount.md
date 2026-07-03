# Zernio::WebhookPayloadLeadAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Social account ID (the facebook account owning the Page) |  |
| **account_id** | **String** | Social account ID (same as id); canonical field for account filtering. | [optional] |
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

