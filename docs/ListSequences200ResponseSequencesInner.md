# Late::ListSequences200ResponseSequencesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **account_name** | **String** | Display name of the sending account | [optional] |
| **message_preview** | **String** | First step template name or message text snippet | [optional] |
| **status** | **String** |  | [optional] |
| **steps_count** | **Integer** |  | [optional] |
| **exit_on_reply** | **Boolean** |  | [optional] |
| **exit_on_unsubscribe** | **Boolean** |  | [optional] |
| **total_enrolled** | **Integer** |  | [optional] |
| **total_completed** | **Integer** |  | [optional] |
| **total_exited** | **Integer** |  | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::ListSequences200ResponseSequencesInner.new(
  id: null,
  name: null,
  description: null,
  platform: null,
  account_id: null,
  account_name: null,
  message_preview: null,
  status: null,
  steps_count: null,
  exit_on_reply: null,
  exit_on_unsubscribe: null,
  total_enrolled: null,
  total_completed: null,
  total_exited: null,
  created_at: null
)
```

