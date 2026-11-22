# Zernio::AutomationNotifyStep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | In an ad rule the id is always &#x60;notify&#x60;. | [optional] |
| **type** | **String** |  |  |
| **to** | [**Array&lt;AutomationNotifyStepToInner&gt;**](AutomationNotifyStepToInner.md) | Up to 5 in an ad rule. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationNotifyStep.new(
  id: null,
  type: null,
  to: null
)
```

