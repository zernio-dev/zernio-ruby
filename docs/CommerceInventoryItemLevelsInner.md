# Zernio::CommerceInventoryItemLevelsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location_id** | **String** |  | [optional] |
| **available** | **Integer** |  | [optional] |
| **on_hand** | **Integer** |  | [optional] |
| **committed** | **Integer** | Reserved for unfulfilled orders. | [optional] |
| **incoming** | **Integer** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommerceInventoryItemLevelsInner.new(
  location_id: null,
  available: null,
  on_hand: null,
  committed: null,
  incoming: null
)
```

