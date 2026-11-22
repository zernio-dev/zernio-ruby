# Zernio::AutomationPreview

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **evaluated_at** | **Time** |  |  |
| **today** | **Date** | Today in the ad account timezone. |  |
| **timezone** | **String** |  |  |
| **timezone_assumed** | **Boolean** | True when the ad account timezone is unknown and UTC was used. |  |
| **currency** | **String** |  |  |
| **hourly_through** | **Time** | Where the hourly windows (&#x60;last_complete_hour&#x60;, &#x60;last_3h&#x60;, &#x60;today_so_far&#x60;) ended: the end of the latest hour a sync has settled. Null when the rule has none or they could not be read. | [optional] |
| **evaluated** | **Integer** |  |  |
| **matched** | **Integer** |  |  |
| **truncated** | **Boolean** | True when more subjects were judged than &#x60;limit&#x60; lists. |  |
| **subjects** | [**Array&lt;AutomationPreviewSubjectsInner&gt;**](AutomationPreviewSubjectsInner.md) | Matches first, up to &#x60;limit&#x60;. |  |
| **groups** | [**Array&lt;AutomationPreviewGroupsInner&gt;**](AutomationPreviewGroupsInner.md) | Each group&#39;s totals against the conditions, when the rule has &#x60;subjects.groups&#x60;. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationPreview.new(
  evaluated_at: null,
  today: null,
  timezone: null,
  timezone_assumed: null,
  currency: null,
  hourly_through: null,
  evaluated: null,
  matched: null,
  truncated: null,
  subjects: null,
  groups: null
)
```

