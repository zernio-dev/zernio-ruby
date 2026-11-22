# Zernio::AutomationAdAccountControls

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The connection your automations reach the ad account through; null when no automation uses it any more. |  |
| **platform** | **String** | The ad platform, for example &#x60;facebook&#x60;. |  |
| **ad_account_id** | **String** | The platform&#39;s ad account id. |  |
| **paused** | **Boolean** | True when every ad rule on this ad account is stopped. |  |
| **paused_at** | **Time** |  |  |
| **daily_raise_limit** | **Float** | The most automations may raise budgets on this ad account in any 24 hours, in the ad account&#39;s currency. Null when there is no limit. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationAdAccountControls.new(
  account_id: null,
  platform: null,
  ad_account_id: null,
  paused: null,
  paused_at: null,
  daily_raise_limit: null
)
```

