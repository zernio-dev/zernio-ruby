# Zernio::WebhookPayloadAdRuleTriggeredRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Zernio ad rule ID. |  |
| **name** | **String** |  |  |
| **level** | **String** | Whether the rule evaluates campaigns, ad sets, ads, Google keywords or Google search terms. |  |
| **platform_ad_account_id** | **String** | Platform-native ad account ID the rule watches. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadAdRuleTriggeredRule.new(
  id: null,
  name: null,
  level: null,
  platform_ad_account_id: null
)
```

