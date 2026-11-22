# Zernio::AutomationAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **step** | **String** | The id of the step that made it, for example &#x60;budget&#x60;. |  |
| **type** | **String** |  |  |
| **status** | **String** |  |  |
| **reason** | **String** | Why it was skipped or failed, such as &#x60;already_paused&#x60;, &#x60;daily_limit_reached&#x60; or &#x60;awaiting_approval&#x60;. |  |
| **previous** | [**AutomationChangedValue**](AutomationChangedValue.md) |  |  |
| **target** | [**AutomationChangedValue**](AutomationChangedValue.md) |  |  |
| **id** | **String** |  |  |
| **automation_id** | **String** |  |  |
| **automation_name** | **String** |  |  |
| **check_id** | **String** |  |  |
| **subject** | [**AutomationActionAllOfSubject**](AutomationActionAllOfSubject.md) |  |  |
| **platform** | **String** |  |  |
| **ad_account** | [**AutomationActionAllOfAdAccount**](AutomationActionAllOfAdAccount.md) |  |  |
| **currency** | **String** |  |  |
| **created_at** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationAction.new(
  step: null,
  type: null,
  status: null,
  reason: null,
  previous: null,
  target: null,
  id: null,
  automation_id: null,
  automation_name: null,
  check_id: null,
  subject: null,
  platform: null,
  ad_account: null,
  currency: null,
  created_at: null
)
```

