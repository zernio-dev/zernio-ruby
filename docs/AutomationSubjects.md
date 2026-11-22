# Zernio::AutomationSubjects

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **each** | **String** | The objects judged one by one. |  |
| **ad_accounts** | [**Array&lt;AutomationSubjectsAdAccountsInner&gt;**](AutomationSubjectsAdAccountsInner.md) | The ad account to check. One per ad rule, and an edit cannot move it to another. |  |
| **campaign_ids** | **Array&lt;String&gt;** | Only these platform campaigns or their ad sets and ads. Leave out to check the whole ad account. | [optional] |
| **filters** | [**Array&lt;AutomationAdFilter&gt;**](AutomationAdFilter.md) | All must hold. | [optional] |
| **groups** | [**Array&lt;AutomationSubjectsGroupsInner&gt;**](AutomationSubjectsGroupsInner.md) | Judges campaigns together (campaign rules only): each group&#39;s numbers are summed and its rates computed on the totals, and a matching group acts on each of its campaigns.  A group with no filters holds every campaign the rule checks. &#x60;reach&#x60;, &#x60;frequency&#x60;, the Google impression shares and hourly windows cannot be used with groups.  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationSubjects.new(
  each: null,
  ad_accounts: null,
  campaign_ids: null,
  filters: null,
  groups: null
)
```

