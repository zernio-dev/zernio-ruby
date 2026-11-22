# Zernio::WebhookPayloadAutomationActionAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **subject_id** | **String** | The platform&#39;s id of the object changed: an ad, ad set or campaign for ad rules. |  |
| **type** | **String** | &#x60;pause&#x60;, &#x60;activate&#x60;, &#x60;adjust_budget&#x60; or &#x60;notify&#x60; for ad rules. New values may be added. |  |
| **status** | **String** |  |  |
| **reason** | **String** |  |  |
| **previous** | **Hash&lt;String, Object&gt;** | The value before the change, such as &#x60;{ \&quot;dailyBudget\&quot;: 40 }&#x60;. |  |
| **target** | **Hash&lt;String, Object&gt;** | The value the change sets, such as &#x60;{ \&quot;dailyBudget\&quot;: 48 }&#x60; or &#x60;{ \&quot;status\&quot;: \&quot;paused\&quot; }&#x60;. |  |
| **acted_at** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadAutomationActionAction.new(
  id: null,
  subject_id: null,
  type: null,
  status: null,
  reason: null,
  previous: null,
  target: null,
  acted_at: null
)
```

