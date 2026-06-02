# Zernio::ListWorkflowExecutionEvents200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **execution** | [**ListWorkflowExecutionEvents200ResponseExecution**](ListWorkflowExecutionEvents200ResponseExecution.md) |  | [optional] |
| **events** | [**Array&lt;WorkflowExecutionEvent&gt;**](WorkflowExecutionEvent.md) | Events in chronological order (oldest first). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListWorkflowExecutionEvents200Response.new(
  success: null,
  execution: null,
  events: null
)
```

