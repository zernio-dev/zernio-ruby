# Zernio::GetWixConnectUrl200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_url** | **String** | Wix installer URL to open in the user agent. |  |
| **state** | **String** | Authenticated, expiring state handled by the callback. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetWixConnectUrl200Response.new(
  auth_url: null,
  state: null
)
```

