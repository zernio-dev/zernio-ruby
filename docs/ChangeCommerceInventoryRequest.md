# Zernio::ChangeCommerceInventoryRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **mode** | **String** |  | [optional][default to &#39;set&#39;] |
| **changes** | [**Array&lt;ChangeCommerceInventoryRequestChangesInner&gt;**](ChangeCommerceInventoryRequestChangesInner.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ChangeCommerceInventoryRequest.new(
  account_id: null,
  mode: null,
  changes: null
)
```

