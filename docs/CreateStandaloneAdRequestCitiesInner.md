# Zernio::CreateStandaloneAdRequestCitiesInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::CreateStandaloneAdRequestCitiesInner.openapi_one_of
# =>
# [
#   :'CreateStandaloneAdRequestCitiesInnerOneOf',
#   :'String'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::CreateStandaloneAdRequestCitiesInner.build(data)
# => #<CreateStandaloneAdRequestCitiesInnerOneOf:0x00007fdd4aab02a0>

Zernio::CreateStandaloneAdRequestCitiesInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `CreateStandaloneAdRequestCitiesInnerOneOf`
- `String`
- `nil` (if no type matches)

