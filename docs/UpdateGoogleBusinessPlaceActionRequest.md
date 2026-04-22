# Zernio::UpdateGoogleBusinessPlaceActionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Resource name of the place action link (e.g. locations/123/placeActionLinks/456) |  |
| **uri** | **String** | New action URL | [optional] |
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

