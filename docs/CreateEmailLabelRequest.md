# Zernio::CreateEmailLabelRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **name** | **String** |  |  |
| **color** | [**CreateEmailLabelRequestColor**](CreateEmailLabelRequestColor.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateEmailLabelRequest.new(
  account_id: null,
  name: Hermia/Handled,
  color: null
)
```

