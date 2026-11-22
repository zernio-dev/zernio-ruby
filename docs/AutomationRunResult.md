# Zernio::AutomationRunResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **status** | **String** | &#x60;unknown&#x60; when the platform never answered, so the outcome is not known. |  |
| **reason** | **String** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationRunResult.new(
  type: null,
  status: null,
  reason: null
)
```

