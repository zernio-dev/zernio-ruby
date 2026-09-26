# Zernio::WebhookPayloadLeadAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Account ID (the facebook account owning the Page) |  |
| **account_id** | **String** | Account ID (same as id); canonical field for account filtering. | [optional] |
| **platform** | **String** |  |  |
| **profile_id** | **String** | Profile ID of the account that received the lead. Null when the lead has no profile on record. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadLeadAccount.new(
  id: null,
  account_id: null,
  platform: null,
  profile_id: null
)
```

