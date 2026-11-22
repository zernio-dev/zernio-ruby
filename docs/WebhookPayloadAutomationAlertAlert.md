# Zernio::WebhookPayloadAutomationAlertAlert

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **subject_id** | **String** | The platform&#39;s id of the object: an ad, ad set or campaign for ad rules. |  |
| **severity** | **String** |  |  |
| **reason** | **String** | Why it resolved, on &#x60;automation.alert.resolved&#x60; only. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadAutomationAlertAlert.new(
  id: null,
  subject_id: null,
  severity: null,
  reason: null
)
```

