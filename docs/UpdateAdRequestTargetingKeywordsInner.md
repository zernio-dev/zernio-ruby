# Zernio::UpdateAdRequestTargetingKeywordsInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::UpdateAdRequestTargetingKeywordsInner.openapi_one_of
# =>
# [
#   :'String',
#   :'UpdateAdRequestTargetingKeywordsInnerOneOf'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::UpdateAdRequestTargetingKeywordsInner.build(data)
# => #<String:0x00007fdd4aab02a0>

Zernio::UpdateAdRequestTargetingKeywordsInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `String`
- `UpdateAdRequestTargetingKeywordsInnerOneOf`
- `nil` (if no type matches)

