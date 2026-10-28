# Zernio::CreatorPortalEconomics

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::CreatorPortalEconomics.openapi_one_of
# =>
# [
#   :'CPM',
#   :'PerPost',
#   :'Pool'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::CreatorPortalEconomics.build(data)
# => #<CPM:0x00007fdd4aab02a0>

Zernio::CreatorPortalEconomics.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `CPM`
- `PerPost`
- `Pool`
- `nil` (if no type matches)

