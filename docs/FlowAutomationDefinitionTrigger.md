# Zernio::FlowAutomationDefinitionTrigger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Read from the graph&#39;s trigger node; sent, it must agree with it. Absent while the graph has no trigger node. | [optional] |
| **account_id** | **String** | The account it runs on. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::FlowAutomationDefinitionTrigger.new(
  type: null,
  account_id: null
)
```

