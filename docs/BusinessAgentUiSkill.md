# Zernio::BusinessAgentUiSkill

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** |  | [optional] |
| **component_type** | **String** |  |  |
| **status** | **String** |  |  |
| **instruction** | **String** | When to send the component and everything needed to fill its fields. |  |
| **flow_id** | **Integer** | Required for component_type flow, rejected otherwise. | [optional] |
| **id** | **String** |  |  |
| **created_at** | **Integer** | Unix seconds. | [optional] |
| **updated_at** | **Integer** | Unix seconds. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BusinessAgentUiSkill.new(
  title: null,
  component_type: null,
  status: null,
  instruction: null,
  flow_id: null,
  id: null,
  created_at: null,
  updated_at: null
)
```

