# Zernio::OwnedPhoneNumberProfileId

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::OwnedPhoneNumberProfileId.openapi_one_of
# =>
# [
#   :'OwnedPhoneNumberProfileIdOneOf',
#   :'String'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::OwnedPhoneNumberProfileId.build(data)
# => #<OwnedPhoneNumberProfileIdOneOf:0x00007fdd4aab02a0>

Zernio::OwnedPhoneNumberProfileId.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `OwnedPhoneNumberProfileIdOneOf`
- `String`
- `nil` (if no type matches)

