# Zernio::AutomationApprovalChange

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_id** | **String** |  |  |
| **subject** | [**AutomationApprovalChangeSubject**](AutomationApprovalChangeSubject.md) |  |  |
| **type** | **String** |  |  |
| **previous** | [**AutomationApprovalChangePrevious**](AutomationApprovalChangePrevious.md) |  |  |
| **target** | [**AutomationApprovalChangeTarget**](AutomationApprovalChangeTarget.md) |  |  |
| **conditions** | **Array&lt;Object&gt;** | Each condition as it was judged when the request was sent, with its actual value. |  |
| **status** | **String** | &#x60;pending&#x60; until the request is decided. |  |
| **reason** | **String** | Why the change was made, skipped or failed, when known. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationApprovalChange.new(
  action_id: null,
  subject: null,
  type: null,
  previous: null,
  target: null,
  conditions: null,
  status: null,
  reason: null
)
```

