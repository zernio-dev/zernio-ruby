# Zernio::AutomationSequenceStep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **after** | **String** | Whole minutes as a duration, such as &#x60;0m&#x60;, &#x60;90m&#x60; or &#x60;1d&#x60;. |  |
| **message** | [**AutomationSequenceStepMessage**](AutomationSequenceStepMessage.md) |  | [optional] |
| **template** | [**AutomationSequenceStepTemplate**](AutomationSequenceStepTemplate.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationSequenceStep.new(
  type: null,
  after: 1d,
  message: null,
  template: null
)
```

