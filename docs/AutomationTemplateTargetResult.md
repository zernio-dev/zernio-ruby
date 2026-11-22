# Zernio::AutomationTemplateTargetResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **target** | **Integer** | The index of the entry in &#x60;targets&#x60;. |  |
| **status** | **String** |  |  |
| **installation** | [**AutomationTemplateInstallation**](AutomationTemplateInstallation.md) |  | [optional] |
| **error** | [**AutomationTemplateTargetResultError**](AutomationTemplateTargetResultError.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationTemplateTargetResult.new(
  target: null,
  status: null,
  installation: null,
  error: null
)
```

