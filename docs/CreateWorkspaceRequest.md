# Zernio::CreateWorkspaceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The workspace name. \&quot;Personal\&quot; is reserved (400 reserved_workspace_name). |  |
| **api_key** | [**CreateWorkspaceRequestApiKey**](CreateWorkspaceRequestApiKey.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateWorkspaceRequest.new(
  name: null,
  api_key: null
)
```

