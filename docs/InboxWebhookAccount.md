# Zernio::InboxWebhookAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Social account ID |  |
| **account_id** | **String** | Social account ID (same value as id). Canonical field so consumers can filter every webhook event on one field (e.g. route staging vs production by account). id is kept for backward compatibility. | [optional] |
| **profile_id** | **String** | Zernio profile (workspace) ID this account belongs to. Use it to route or filter inbox webhooks by workspace. This is the profile ID only, not its name (resolve the name via the API with this ID). Optional; omitted on the shared WhatsApp sandbox account and when the account has no resolvable profile. | [optional] |
| **platform** | **String** |  |  |
| **username** | **String** |  |  |
| **display_name** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InboxWebhookAccount.new(
  id: null,
  account_id: null,
  profile_id: null,
  platform: null,
  username: null,
  display_name: null
)
```

