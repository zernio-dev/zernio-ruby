# Zernio::UpdateAdAudienceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **spec** | [**TargetingSpec**](TargetingSpec.md) | Full replacement for the stored targeting spec. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdAudienceRequest.new(
  name: null,
  description: null,
  spec: null
)
```

