# Zernio::AutomationStepOneOf1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **type** | **String** |  |  |
| **include_manually_paused** | **Boolean** | Also objects a person paused. Without it only what this automation paused is turned back on. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationStepOneOf1.new(
  id: null,
  type: null,
  include_manually_paused: null
)
```

