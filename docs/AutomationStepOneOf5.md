# Zernio::AutomationStepOneOf5

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **type** | **String** |  |  |
| **by** | **String** | Up to +100% or down to -90%. |  |
| **max** | **Float** |  | [optional] |
| **min** | **Float** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationStepOneOf5.new(
  id: null,
  type: null,
  by: -10%,
  max: null,
  min: null
)
```

