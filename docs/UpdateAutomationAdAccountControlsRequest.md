# Zernio::UpdateAutomationAdAccountControlsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The ads connection that reaches the ad account. |  |
| **ad_account_id** | **String** | The platform&#39;s ad account id. |  |
| **paused** | **Boolean** | True stops every automation on this ad account; false lets them run again. | [optional] |
| **daily_raise_limit** | **Float** | The most automations may raise budgets on this ad account in any 24 hours, in the ad account&#39;s currency. A raise past it is cut to the room left.  Send null to remove the limit.  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAutomationAdAccountControlsRequest.new(
  account_id: null,
  ad_account_id: null,
  paused: null,
  daily_raise_limit: null
)
```

