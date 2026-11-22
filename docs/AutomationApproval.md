# Zernio::AutomationApproval

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **automation_id** | **String** |  |  |
| **check_id** | **String** | The check that found the matches and sent the request. |  |
| **status** | **String** | &#x60;cancelled&#x60; when the automation stopped asking for approval before anyone decided. |  |
| **to** | **Array&lt;String&gt;** | The emails the request was sent to. |  |
| **expires_at** | **Time** | After this the request can no longer be decided and its changes are skipped. |  |
| **created_at** | **Time** |  |  |
| **decided_by** | [**AutomationApprovalDecidedBy**](AutomationApprovalDecidedBy.md) |  |  |
| **decided_at** | **Time** |  |  |
| **can_decide** | **Boolean** | True when the request is pending and you are one of the approvers the automation names now. |  |
| **changes** | [**Array&lt;AutomationApprovalChange&gt;**](AutomationApprovalChange.md) | The changes the request holds. Notifications are not listed. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationApproval.new(
  id: null,
  automation_id: null,
  check_id: null,
  status: null,
  to: null,
  expires_at: null,
  created_at: null,
  decided_by: null,
  decided_at: null,
  can_decide: null,
  changes: null
)
```

