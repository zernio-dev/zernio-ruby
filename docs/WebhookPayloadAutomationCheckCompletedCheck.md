# Zernio::WebhookPayloadAutomationCheckCompletedCheck

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **slot** | **Time** | The scheduled time the check ran for. |  |
| **outcome** | **String** | &#x60;paused&#x60;: the team used its free automation runs with no payment method on file, so the check did not run. &#x60;error&#x60; says why. |  |
| **subjects_evaluated** | **Integer** | How many objects the check read. |  |
| **actions_count** | **Integer** | How many actions it recorded. |  |
| **error** | **String** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadAutomationCheckCompletedCheck.new(
  id: null,
  slot: null,
  outcome: null,
  subjects_evaluated: null,
  actions_count: null,
  error: null
)
```

