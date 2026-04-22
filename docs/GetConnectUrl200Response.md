# Zernio::GetConnectUrl200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_url** | **String** | URL to redirect your user to for OAuth authorization | [optional] |
| **state** | **String** | State parameter for security (handled automatically) | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetConnectUrl200Response.new(
  auth_url: null,
  state: null
)
```

