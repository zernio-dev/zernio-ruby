# Zernio::UpdateCommerceMenuRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **title** | **String** |  |  |
| **handle** | **String** |  | [optional] |
| **items** | [**Array&lt;CommerceMenuItemInput&gt;**](CommerceMenuItemInput.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateCommerceMenuRequest.new(
  account_id: null,
  title: null,
  handle: null,
  items: null
)
```

