# Zernio::ConnectWordPressWithApplicationPasswordRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | Your Zernio profile ID (get from /v1/profiles). |  |
| **site_url** | **String** | HTTPS base URL of the WordPress installation, including a subdirectory path when applicable. |  |
| **username** | **String** | WordPress login name. A colon is not allowed. |  |
| **application_password** | **String** | Application password created for the WordPress user. Spaces in WordPress display formatting are accepted. |  |
| **reconnect_account_id** | **String** | The WordPress site connection being reconnected. In a workspace with no billing set up, the connect is allowed only when it returns to that same site. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectWordPressWithApplicationPasswordRequest.new(
  profile_id: null,
  site_url: null,
  username: null,
  application_password: null,
  reconnect_account_id: null
)
```

