# Zernio::ListWorkflows200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **workflows** | [**Array&lt;ListWorkflows200ResponseWorkflowsInner&gt;**](ListWorkflows200ResponseWorkflowsInner.md) |  | [optional] |
| **pagination** | [**ListContacts200ResponsePagination**](ListContacts200ResponsePagination.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListWorkflows200Response.new(
  success: null,
  workflows: null,
  pagination: null
)
```

