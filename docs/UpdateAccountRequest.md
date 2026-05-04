# Zernio::UpdateAccountRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **x_capabilities** | [**UpdateAccountRequestXCapabilities**](UpdateAccountRequestXCapabilities.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAccountRequest.new(
  username: null,
  display_name: null,
  x_capabilities: null
)
```

