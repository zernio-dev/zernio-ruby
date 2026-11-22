# Zernio::GetStripeConnectUrl200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_url** | **String** | Stripe URL to open in the user agent. |  |
| **state** | **String** | Authenticated, expiring OAuth state handled by the callback. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetStripeConnectUrl200Response.new(
  auth_url: null,
  state: null
)
```

