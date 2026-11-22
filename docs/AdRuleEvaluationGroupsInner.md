# Zernio::AdRuleEvaluationGroupsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **matched** | **Boolean** |  |  |
| **conditions** | **Array&lt;Object&gt;** | Like an object&#39;s conditions, read on the group&#39;s totals. |  |
| **campaign_ids** | **Array&lt;String&gt;** | Every campaign counted in the group, paused ones included. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdRuleEvaluationGroupsInner.new(
  name: null,
  matched: null,
  conditions: null,
  campaign_ids: null
)
```

