# Zernio::BusinessAgentEventStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  |  |
| **event_type** | **String** |  |  |
| **error_message** | **String** |  | [optional] |
| **skipped_reason** | **String** |  | [optional] |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BusinessAgentEventStatus.new(
  status: null,
  event_type: null,
  error_message: null,
  skipped_reason: null,
  created_at: null,
  updated_at: null
)
```

