# Zernio::AutomationTestDecision

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **would_run** | **Boolean** |  |  |
| **reason** | **String** | Why it would not run: keyword_miss, keyword_excluded, other_post, trigger_miss, not_first_message, account_not_listened, filter_miss, no_match, subject_not_matched, post_not_matched, no_accounts, no_subscribed_channel, unsubscribed, already_enrolled, runs_paused, paused or draft. | [optional] |
| **matched** | [**Array&lt;AutomationTestDecisionMatchedInner&gt;**](AutomationTestDecisionMatchedInner.md) | What the sample met, such as a keyword, a filter condition, the trigger, a post or an ad. |  |
| **planned_steps** | [**Array&lt;AutomationTestDecisionPlannedStepsInner&gt;**](AutomationTestDecisionPlannedStepsInner.md) | The steps it would take, in order. A flow lists its first steps up to the first branch. |  |
| **next_run_at** | **Time** | A scheduled automation&#39;s next check. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationTestDecision.new(
  would_run: null,
  reason: null,
  matched: null,
  planned_steps: null,
  next_run_at: null
)
```

