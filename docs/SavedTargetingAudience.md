# Zernio::SavedTargetingAudience

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **account_id** | **String** | Social account ID on the target ad platform. |  |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **spec** | [**TargetingSpec**](TargetingSpec.md) | The targeting spec to store. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SavedTargetingAudience.new(
  type: null,
  account_id: null,
  name: null,
  description: null,
  spec: null
)
```

