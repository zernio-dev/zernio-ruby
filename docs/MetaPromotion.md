# Zernio::MetaPromotion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Promotion type accepted by Meta. PERCENTAGE_OFF values cannot exceed 100. |  |
| **value** | **Float** | Nonnegative promotion value passed to Meta unchanged. AMOUNT_OFF units are not confirmed, including major versus minor currency units. For PERCENTAGE_OFF this is the percentage discount, at most 100. |  |
| **code** | **String** | Optional promotion code. | [optional] |
| **start_date** | **Time** | Optional ISO 8601 start timestamp with a timezone offset or Z. | [optional] |
| **end_date** | **Time** | Optional ISO 8601 end timestamp with a timezone offset or Z. Must be after startDate when both are set. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::MetaPromotion.new(
  type: null,
  value: null,
  code: null,
  start_date: null,
  end_date: null
)
```

