# Zernio::XArticleEntity

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::XArticleEntity.openapi_one_of
# =>
# [
#   :'XArticleEntityOneOf',
#   :'XArticleEntityOneOf1',
#   :'XArticleEntityOneOf2',
#   :'XArticleEntityOneOf3',
#   :'XArticleEntityOneOf4',
#   :'XArticleEntityOneOf5'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::XArticleEntity.build(data)
# => #<XArticleEntityOneOf:0x00007fdd4aab02a0>

Zernio::XArticleEntity.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `XArticleEntityOneOf`
- `XArticleEntityOneOf1`
- `XArticleEntityOneOf2`
- `XArticleEntityOneOf3`
- `XArticleEntityOneOf4`
- `XArticleEntityOneOf5`
- `nil` (if no type matches)

