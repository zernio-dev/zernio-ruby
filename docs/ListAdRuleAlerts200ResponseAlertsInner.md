# Zernio::ListAdRuleAlerts200ResponseAlertsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **object_id** | **String** | Platform campaign, ad set or ad ID, or the id of the keyword or search term. |  |
| **state** | **String** |  |  |
| **severity** | **String** |  |  |
| **consecutive_matches** | **Integer** |  |  |
| **opened_at** | **Time** |  |  |
| **last_matched_at** | **Time** |  |  |
| **last_evaluated_at** | **Time** | When a run last evaluated the object of this alert. Older than the latest run means that run did not evaluate it. |  |
| **resolved_at** | **Time** |  |  |
| **resolved_reason** | **String** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListAdRuleAlerts200ResponseAlertsInner.new(
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

