# Zernio::AdRuleRun

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **ran_at** | **Time** |  |  |
| **outcome** | **String** | &#x60;triggered&#x60;: the rule acted on at least one object (&#x60;error&#x60; is set if the webhook could not be sent afterwards). &#x60;cooldown&#x60;: objects matched but all were in cooldown. &#x60;no_match&#x60;: nothing matched. &#x60;failed&#x60;: the metrics could not be read, every action failed, or the webhook of a notify-only rule could not be sent (see &#x60;error&#x60;). |  |
| **objects_evaluated** | **Integer** |  |  |
| **acted_object_ids** | **Array&lt;String&gt;** |  |  |
| **evaluation** | [**AdRuleRunEvaluation**](AdRuleRunEvaluation.md) |  |  |
| **error** | **String** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdRuleRun.new(
  id: null,
  ran_at: null,
  outcome: null,
  objects_evaluated: null,
  acted_object_ids: null,
  evaluation: null,
  error: null
)
```

