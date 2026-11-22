# Zernio::CreateCommerceOrderEdit200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **validate_only** | **Boolean** |  | [optional] |
| **order** | [**CommerceOrder**](CommerceOrder.md) |  | [optional] |
| **edit** | [**CommerceOrderEditPreview**](CommerceOrderEditPreview.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateCommerceOrderEdit200Response.new(
  validate_only: null,
  order: null,
  edit: null
)
```

