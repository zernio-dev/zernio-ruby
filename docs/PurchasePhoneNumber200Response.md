# Zernio::PurchasePhoneNumber200Response

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::PurchasePhoneNumber200Response.openapi_one_of
# =>
# [
#   :'PurchasePhoneNumber200ResponseOneOf',
#   :'PurchasePhoneNumber200ResponseOneOf1',
#   :'PurchasePhoneNumber200ResponseOneOf2'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::PurchasePhoneNumber200Response.build(data)
# => #<PurchasePhoneNumber200ResponseOneOf:0x00007fdd4aab02a0>

Zernio::PurchasePhoneNumber200Response.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `PurchasePhoneNumber200ResponseOneOf`
- `PurchasePhoneNumber200ResponseOneOf1`
- `PurchasePhoneNumber200ResponseOneOf2`
- `nil` (if no type matches)

