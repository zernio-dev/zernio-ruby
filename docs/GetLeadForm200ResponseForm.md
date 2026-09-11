# Zernio::GetLeadForm200ResponseForm

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::GetLeadForm200ResponseForm.openapi_one_of
# =>
# [
#   :'MetaLeadForm',
#   :'Object'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::GetLeadForm200ResponseForm.build(data)
# => #<MetaLeadForm:0x00007fdd4aab02a0>

Zernio::GetLeadForm200ResponseForm.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `MetaLeadForm`
- `Object`
- `nil` (if no type matches)

