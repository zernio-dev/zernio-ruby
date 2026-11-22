# Zernio::CommerceRefundRequestShipping

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::CommerceRefundRequestShipping.openapi_one_of
# =>
# [
#   :'CommerceRefundRequestShippingOneOf',
#   :'CommerceRefundRequestShippingOneOf1'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::CommerceRefundRequestShipping.build(data)
# => #<CommerceRefundRequestShippingOneOf:0x00007fdd4aab02a0>

Zernio::CommerceRefundRequestShipping.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `CommerceRefundRequestShippingOneOf`
- `CommerceRefundRequestShippingOneOf1`
- `nil` (if no type matches)

