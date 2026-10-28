# Zernio::WebhookPayloadAccountPermissionsChangedAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **profile_id** | **String** |  |  |
| **platform** | **String** |  |  |
| **username** | **String** |  |  |
| **display_name** | **String** |  | [optional] |
| **oauth_app_id** | **String** | The OAuth app the account connected through. |  |
| **missing_scope_areas** | **Array&lt;String&gt;** | Every area now missing. Enable the permission on your app (or have the user grant it), then reconnect the account. |  |
| **reason** | **String** | The platform error that revealed it. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadAccountPermissionsChangedAccount.new(
  account_id: null,
  profile_id: null,
  platform: null,
  username: null,
  display_name: null,
  oauth_app_id: null,
  missing_scope_areas: null,
  reason: null
)
```

