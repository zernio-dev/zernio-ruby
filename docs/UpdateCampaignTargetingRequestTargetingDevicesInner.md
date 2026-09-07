# Zernio::UpdateCampaignTargetingRequestTargetingDevicesInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::UpdateCampaignTargetingRequestTargetingDevicesInner.openapi_one_of
# =>
# [
#   :'String',
#   :'UpdateCampaignTargetingRequestTargetingDevicesInnerOneOf'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::UpdateCampaignTargetingRequestTargetingDevicesInner.build(data)
# => #<String:0x00007fdd4aab02a0>

Zernio::UpdateCampaignTargetingRequestTargetingDevicesInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `String`
- `UpdateCampaignTargetingRequestTargetingDevicesInnerOneOf`
- `nil` (if no type matches)

