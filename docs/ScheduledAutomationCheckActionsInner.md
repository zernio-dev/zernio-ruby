# Zernio::ScheduledAutomationCheckActionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **status** | **String** | &#x60;unknown&#x60; when the platform never answered, so the outcome is not known. |  |
| **reason** | **String** |  |  |
| **post_id** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ScheduledAutomationCheckActionsInner.new(
  type: null,
  status: null,
  reason: null,
  post_id: null
)
```

