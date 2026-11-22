# Zernio::GetSalesforceConnectUrl200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_url** | **String** | Salesforce URL to open in the user agent. |  |
| **state** | **String** | Authenticated, expiring OAuth state handled by the callback. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetSalesforceConnectUrl200Response.new(
  auth_url: null,
  state: null
)
```

