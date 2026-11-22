# Zernio::ListAdAccountRuleAlerts200ResponseAlertsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_id** | **String** | The rule the alert belongs to. |  |
| **id** | **String** |  |  |
| **object_id** | **String** | Platform campaign, ad set or ad ID, or the id of the keyword or search term. |  |
| **state** | **String** |  |  |
| **severity** | **String** |  |  |
| **consecutive_matches** | **Integer** |  |  |
| **opened_at** | **Time** |  |  |
| **last_matched_at** | **Time** |  |  |
| **last_evaluated_at** | **Time** | When a run last evaluated the object of this alert. Older than the latest run of its rule means that run did not evaluate it. |  |
| **resolved_at** | **Time** | Always null here: only open alerts are listed. |  |
| **resolved_reason** | **String** | Always null here: only open alerts are listed. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListAdAccountRuleAlerts200ResponseAlertsInner.new(
  rule_id: null,
  id: null,
  object_id: null,
  state: null,
  severity: null,
  consecutive_matches: null,
  opened_at: null,
  last_matched_at: null,
  last_evaluated_at: null,
  resolved_at: null,
  resolved_reason: null
)
```

