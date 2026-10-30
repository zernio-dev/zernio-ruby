# Zernio::AdRuleCondition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metric** | **String** | &#x60;ctr&#x60; is a percentage. &#x60;spend&#x60;, &#x60;cpc&#x60;, &#x60;cpm&#x60; and &#x60;cpa&#x60; are in the ad account currency. &#x60;reach&#x60; and &#x60;frequency&#x60; use the platform&#39;s de-duplicated reach, so they are accepted on Meta and TikTok only. |  |
| **window** | **String** | Days in the ad account&#39;s own timezone. &#x60;last_7d&#x60; includes today. |  |
| **op** | **String** |  |  |
| **value** | **Float** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdRuleCondition.new(
  metric: null,
  window: null,
  op: null,
  value: null
)
```

