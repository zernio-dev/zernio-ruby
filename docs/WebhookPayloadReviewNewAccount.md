# Zernio::WebhookPayloadReviewNewAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **account_id** | **String** | Social account ID (same as id); canonical field for account filtering. | [optional] |
| **platform** | **String** |  |  |
| **username** | **String** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadReviewNewAccount.new(
  id: null,
  account_id: null,
  platform: null,
  username: null
)
```

