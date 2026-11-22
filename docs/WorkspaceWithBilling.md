# Zernio::WorkspaceWithBilling

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **personal** | **Boolean** | True for the caller&#39;s own Personal workspace, which is never shared, renamed or deleted. | [optional] |
| **role** | **String** | The caller&#39;s role in this workspace. | [optional] |
| **created_at** | **Time** |  | [optional] |
| **deletion_scheduled_at** | **Time** | When a scheduled deletion runs; null when none is scheduled. | [optional] |
| **billing** | [**WorkspaceWithBillingAllOfBilling**](WorkspaceWithBillingAllOfBilling.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WorkspaceWithBilling.new(
  id: null,
  name: null,
  personal: null,
  role: null,
  created_at: null,
  deletion_scheduled_at: null,
  billing: null
)
```

