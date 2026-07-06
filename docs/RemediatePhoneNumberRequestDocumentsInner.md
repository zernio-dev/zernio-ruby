# Zernio::RemediatePhoneNumberRequestDocumentsInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::RemediatePhoneNumberRequestDocumentsInner.openapi_one_of
# =>
# [
#   :'RemediatePhoneNumberRequestDocumentsInnerOneOf',
#   :'SubmitPhoneNumberKycRequestDocumentsInnerOneOf'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::RemediatePhoneNumberRequestDocumentsInner.build(data)
# => #<RemediatePhoneNumberRequestDocumentsInnerOneOf:0x00007fdd4aab02a0>

Zernio::RemediatePhoneNumberRequestDocumentsInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `RemediatePhoneNumberRequestDocumentsInnerOneOf`
- `SubmitPhoneNumberKycRequestDocumentsInnerOneOf`
- `nil` (if no type matches)

