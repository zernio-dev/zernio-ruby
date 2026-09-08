# Zernio::BusinessAgentUiSkillInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** |  | [optional] |
| **component_type** | **String** |  |  |
| **status** | **String** |  |  |
| **instruction** | **String** | When to send the component and everything needed to fill its fields. |  |
| **flow_id** | **Integer** | Required for component_type flow, rejected otherwise. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BusinessAgentUiSkillInput.new(
  title: null,
  component_type: null,
  status: null,
  instruction: null,
  flow_id: null
)
```

