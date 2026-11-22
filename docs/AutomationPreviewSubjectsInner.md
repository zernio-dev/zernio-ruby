# Zernio::AutomationPreviewSubjectsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subject** | [**AutomationPreviewSubjectsInnerSubject**](AutomationPreviewSubjectsInnerSubject.md) |  |  |
| **group** | **String** | The group it was judged in, when the rule has &#x60;subjects.groups&#x60;. | [optional] |
| **matched** | **Boolean** |  |  |
| **conditions** | [**Array&lt;AutomationConditionResult&gt;**](AutomationConditionResult.md) |  |  |
| **would_run** | [**Array&lt;AutomationPreviewSubjectsInnerWouldRunInner&gt;**](AutomationPreviewSubjectsInnerWouldRunInner.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationPreviewSubjectsInner.new(
  subject: null,
  group: null,
  matched: null,
  conditions: null,
  would_run: null
)
```

