# Zernio::CreateCommerceRedirectRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **path** | **String** | The old path, starting with /. |  |
| **target** | **String** | Where to send visitors: a path or a full URL. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateCommerceRedirectRequest.new(
  account_id: null,
  path: null,
  target: null
)
```

