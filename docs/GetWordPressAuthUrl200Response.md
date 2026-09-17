# Zernio::GetWordPressAuthUrl200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_url** | **String** | WordPress.com URL to open in the user agent. |  |
| **state** | **String** | Authenticated, expiring OAuth state handled by the callback. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetWordPressAuthUrl200Response.new(
  auth_url: null,
  state: null
)
```

