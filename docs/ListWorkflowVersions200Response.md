# Zernio::ListWorkflowVersions200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **versions** | [**Array&lt;ListWorkflowVersions200ResponseVersionsInner&gt;**](ListWorkflowVersions200ResponseVersionsInner.md) | Versions in reverse chronological order (newest first). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListWorkflowVersions200Response.new(
  success: null,
  versions: null
)
```

