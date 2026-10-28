# Zernio::GetCreatorPortal200Response

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::GetCreatorPortal200Response.openapi_one_of
# =>
# [
#   :'CreatorPortalInvite',
#   :'CreatorPortalParticipant'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'zernio-sdk'

Zernio::GetCreatorPortal200Response.openapi_discriminator_name
# => :'kind'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'zernio-sdk'

Zernio::GetCreatorPortal200Response.openapi_discriminator_mapping
# =>
# {
#   :'invite' => :'CreatorPortalInvite',
#   :'participant' => :'CreatorPortalParticipant'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::GetCreatorPortal200Response.build(data)
# => #<CreatorPortalInvite:0x00007fdd4aab02a0>

Zernio::GetCreatorPortal200Response.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `CreatorPortalInvite`
- `CreatorPortalParticipant`
- `nil` (if no type matches)

