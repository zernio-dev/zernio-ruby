# Zernio::WebhookPayloadAdStatusChangedAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Internal Zernio account ID (same as used in /v1/accounts/{accountId}). |  |
| **profile_id** | **String** | Internal Zernio profile ID this account belongs to. |  |
| **platform** | **String** | Ad platform identifier. Currently always &#x60;metaads&#x60;. |  |
| **username** | **String** | Display username of the connected ad-platform account. |  |
| **display_name** | **String** | Human-readable display name of the account, when available. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadAdStatusChangedAccount.new(
  account_id: null,
  profile_id: null,
  platform: metaads,
  username: null,
  display_name: null
)
```

