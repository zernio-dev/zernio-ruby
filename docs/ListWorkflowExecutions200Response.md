# Zernio::ListWorkflowExecutions200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **executions** | [**Array&lt;ListWorkflowExecutions200ResponseExecutionsInner&gt;**](ListWorkflowExecutions200ResponseExecutionsInner.md) |  | [optional] |
| **pagination** | [**ListContacts200ResponsePagination**](ListContacts200ResponsePagination.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListWorkflowExecutions200Response.new(
  success: null,
  executions: null,
  pagination: null
)
```

