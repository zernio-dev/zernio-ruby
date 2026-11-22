# Zernio::CreateWorkspace201Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | [**WorkspaceWithBilling**](WorkspaceWithBilling.md) |  | [optional] |
| **api_key** | [**ApiKey**](ApiKey.md) |  | [optional] |
| **api_key_error** | [**CreateWorkspace201ResponseApiKeyError**](CreateWorkspace201ResponseApiKeyError.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateWorkspace201Response.new(
  workspace: null,
  api_key: null,
  api_key_error: null
)
```

