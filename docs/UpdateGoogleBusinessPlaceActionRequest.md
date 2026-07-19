# Zernio::UpdateGoogleBusinessPlaceActionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Resource name of the place action link (e.g. locations/123/placeActionLinks/456) |  |
| **uri** | **String** | New action URL. At least one of uri or placeActionType is required (enforced server-side; not modeled as anyOf because required-only anyOf branches break SDK generators). | [optional] |
| **place_action_type** | **String** | New action type | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateGoogleBusinessPlaceActionRequest.new(
  name: null,
  uri: null,
  place_action_type: null
)
```

