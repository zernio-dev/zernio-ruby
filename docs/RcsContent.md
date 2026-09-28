# Zernio::RcsContent

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::RcsContent.openapi_one_of
# =>
# [
#   :'RcsContentOneOf',
#   :'RcsContentOneOf1',
#   :'RcsContentOneOf2',
#   :'RcsContentOneOf3'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::RcsContent.build(data)
# => #<RcsContentOneOf:0x00007fdd4aab02a0>

Zernio::RcsContent.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `RcsContentOneOf`
- `RcsContentOneOf1`
- `RcsContentOneOf2`
- `RcsContentOneOf3`
- `nil` (if no type matches)

