# Zernio::AutomationRecord

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **kind** | **String** |  |  |
| **status** | **String** | Only a sequence or a flow can be a draft. |  |
| **version** | **String** | Send it back as &#x60;If-Match&#x60; when editing, so an edit made after someone else saved is refused. |  |
| **last_check_at** | **Time** | Null until an ad rule first checks. Always null for every other kind; the checks of event and scheduled automations list when they ran. |  |
| **next_check_at** | **Time** | Null while paused. Always null for every kind but ad rules. |  |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |
| **template** | [**AutomationRecordTemplate**](AutomationRecordTemplate.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationRecord.new(
  id: null,
  kind: null,
  status: null,
  version: null,
  last_check_at: null,
  next_check_at: null,
  created_at: null,
  updated_at: null,
  template: null
)
```

