# Zernio::AutomationPreviewGroupsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **matched** | **Boolean** |  | [optional] |
| **conditions** | [**Array&lt;AutomationConditionResult&gt;**](AutomationConditionResult.md) |  | [optional] |
| **campaign_ids** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationPreviewGroupsInner.new(
  name: null,
  matched: null,
  conditions: null,
  campaign_ids: null
)
```

