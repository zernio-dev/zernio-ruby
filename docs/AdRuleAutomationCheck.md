# Zernio::AdRuleAutomationCheck

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **automation_id** | **String** |  |  |
| **checked_at** | **Time** |  |  |
| **outcome** | **String** |  |  |
| **evaluated** | **Integer** | Objects judged. |  |
| **subjects** | [**Array&lt;AdRuleAutomationCheckSubjectsInner&gt;**](AdRuleAutomationCheckSubjectsInner.md) |  |  |
| **actions** | [**Array&lt;AdRuleAutomationCheckActionsInner&gt;**](AdRuleAutomationCheckActionsInner.md) |  |  |
| **notification** | [**AdRuleAutomationCheckNotification**](AdRuleAutomationCheckNotification.md) |  |  |
| **error** | **String** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdRuleAutomationCheck.new(
  id: null,
  automation_id: null,
  checked_at: null,
  outcome: null,
  evaluated: null,
  subjects: null,
  actions: null,
  notification: null,
  error: null
)
```

