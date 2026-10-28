# Zernio::TreasuryTransferReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **name** | **String** | What the transfer paid for, when Zernio knows it: the campaign name for a creator campaign payout; null otherwise | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TreasuryTransferReference.new(
  type: null,
  id: null,
  name: null
)
```

