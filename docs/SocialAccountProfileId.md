# Zernio::SocialAccountProfileId

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::SocialAccountProfileId.openapi_one_of
# =>
# [
#   :'Profile',
#   :'String'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::SocialAccountProfileId.build(data)
# => #<Profile:0x00007fdd4aab02a0>

Zernio::SocialAccountProfileId.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Profile`
- `String`
- `nil` (if no type matches)

