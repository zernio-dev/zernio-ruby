# Zernio::RcsSuggestion

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::RcsSuggestion.openapi_one_of
# =>
# [
#   :'RcsSuggestionOneOf',
#   :'RcsSuggestionOneOf1',
#   :'RcsSuggestionOneOf2',
#   :'RcsSuggestionOneOf3',
#   :'RcsSuggestionOneOf4',
#   :'RcsSuggestionOneOf5'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::RcsSuggestion.build(data)
# => #<RcsSuggestionOneOf:0x00007fdd4aab02a0>

Zernio::RcsSuggestion.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `RcsSuggestionOneOf`
- `RcsSuggestionOneOf1`
- `RcsSuggestionOneOf2`
- `RcsSuggestionOneOf3`
- `RcsSuggestionOneOf4`
- `RcsSuggestionOneOf5`
- `nil` (if no type matches)

