# Zernio::WebhookPayloadAccountDisconnectedAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The account&#39;s unique identifier (same as used in /v1/accounts/{accountId}) |  |
| **profile_id** | **String** | The profile&#39;s unique identifier this account belongs to |  |
| **platform** | **String** |  |  |
| **username** | **String** |  |  |
| **display_name** | **String** |  | [optional] |
| **disconnection_type** | **String** | Whether the disconnection was intentional (user action) or unintentional (token expired/revoked) |  |
| **reason** | **String** | Human-readable reason for the disconnection |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadAccountDisconnectedAccount.new(
  account_id: null,
  profile_id: null,
  platform: null,
  username: null,
  display_name: null,
  disconnection_type: null,
  reason: null
)
```

