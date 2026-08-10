# Zernio::CreateStandaloneAdRequestPlatformSpecificData

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::CreateStandaloneAdRequestPlatformSpecificData.openapi_one_of
# =>
# [
#   :'LinkedInAdsPlatformData',
#   :'MetaAdsPlatformData'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::CreateStandaloneAdRequestPlatformSpecificData.build(data)
# => #<LinkedInAdsPlatformData:0x00007fdd4aab02a0>

Zernio::CreateStandaloneAdRequestPlatformSpecificData.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `LinkedInAdsPlatformData`
- `MetaAdsPlatformData`
- `nil` (if no type matches)

