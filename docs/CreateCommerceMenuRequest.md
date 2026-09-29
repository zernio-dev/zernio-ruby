# Zernio::CreateCommerceMenuRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **title** | **String** |  |  |
| **handle** | **String** |  |  |
| **items** | [**Array&lt;CommerceMenuItemInput&gt;**](CommerceMenuItemInput.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateCommerceMenuRequest.new(
  account_id: null,
  title: null,
  handle: null,
  items: null
)
```

