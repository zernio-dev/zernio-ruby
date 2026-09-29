# Zernio::CheckPhoneNumberAvailability200ResponseAreaAvailabilityInStockInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ndc** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **count** | **Integer** | Numbers we can sell there: the carrier count minus the numbers we hold back (WhatsApp refused them or another order holds them). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CheckPhoneNumberAvailability200ResponseAreaAvailabilityInStockInner.new(
  ndc: null,
  name: null,
  count: null
)
```

