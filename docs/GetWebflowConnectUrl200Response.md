# Zernio::GetWebflowConnectUrl200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_url** | **String** | Webflow consent URL to open in the user agent. |  |
| **state** | **String** | Authenticated, expiring state handled by the callback. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetWebflowConnectUrl200Response.new(
  auth_url: null,
  state: null
)
```

