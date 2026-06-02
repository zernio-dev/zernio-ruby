# Zernio::ListWorkflowVersions200ResponseVersionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **Integer** | Monotonically increasing version number | [optional] |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **created_by** | **String** | User id that authored this version | [optional] |
| **created_by_email** | **String** | Denormalized email so the history UI can render without a join | [optional] |
| **restored_from_version** | **Integer** | When non-null | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListWorkflowVersions200ResponseVersionsInner.new(
  version: null,
  name: null,
  description: null,
  created_by: null,
  created_by_email: null,
  restored_from_version: null,
  created_at: null
)
```

