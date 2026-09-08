# Zernio::BusinessAgentSettingsHandoff

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Whether the agent releases the thread after sending its handoff message. | [optional] |
| **message** | **String** |  | [optional] |
| **message_selection** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BusinessAgentSettingsHandoff.new(
  enabled: null,
  message: null,
  message_selection: null
)
```

