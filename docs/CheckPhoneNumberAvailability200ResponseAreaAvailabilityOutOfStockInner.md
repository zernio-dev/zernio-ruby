# Zernio::CheckPhoneNumberAvailability200ResponseAreaAvailabilityOutOfStockInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ndc** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **listed** | **Integer** |  | [optional] |
| **ndcs** | **Array&lt;String&gt;** | Every area code of the city, deepest first (Madrid: 915, 911, 910, ...). &#x60;ndc&#x60; is the one an order is placed against. | [optional] |
| **aliases** | **Array&lt;String&gt;** | Other names the area answers to, present only when it has some (Milano for Milan, Sevilla for Seville). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CheckPhoneNumberAvailability200ResponseAreaAvailabilityOutOfStockInner.new(
  ndc: null,
  name: null,
  listed: null,
  ndcs: null,
  aliases: null
)
```

