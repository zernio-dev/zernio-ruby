# Zernio::RestoreWorkflowVersion200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **workflow** | [**RestoreWorkflowVersion200ResponseWorkflow**](RestoreWorkflowVersion200ResponseWorkflow.md) |  | [optional] |
| **restored_from_version** | **Integer** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RestoreWorkflowVersion200Response.new(
  success: null,
  workflow: null,
  restored_from_version: null
)
```

