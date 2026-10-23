# Zernio::WebhookPayloadAdRuleTriggeredObjectsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_id** | **String** | Platform-native ID of the campaign or ad set. |  |
| **name** | **String** | Name on the platform. Falls back to &#x60;platformId&#x60; when the platform reports none. |  |
| **platform_campaign_id** | **String** | Platform-native ID of the campaign the object belongs to (on a campaign-level rule, the campaign&#39;s own ID). Null when unknown. |  |
| **conditions** | [**Array&lt;WebhookPayloadAdRuleTriggeredObjectsInnerConditionsInner&gt;**](WebhookPayloadAdRuleTriggeredObjectsInnerConditionsInner.md) | Every condition of the rule, with the value the object reached. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadAdRuleTriggeredObjectsInner.new(
  platform_id: null,
  name: null,
  platform_campaign_id: null,
  conditions: null
)
```

