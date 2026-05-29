# Zernio::ListWorkflows200ResponseWorkflowsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **account_name** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **node_count** | **Integer** |  | [optional] |
| **total_started** | **Integer** |  | [optional] |
| **total_completed** | **Integer** |  | [optional] |
| **total_exited** | **Integer** |  | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListWorkflows200ResponseWorkflowsInner.new(
  id: null,
  name: null,
  description: null,
  platform: null,
  account_id: null,
  account_name: null,
  status: null,
  node_count: null,
  total_started: null,
  total_completed: null,
  total_exited: null,
  created_at: null
)
```

