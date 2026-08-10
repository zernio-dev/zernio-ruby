# Zernio::CreateHighDemandPeriodRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id used to resolve the Meta token. |  |
| **campaign_id** | **String** | Platform campaign id. Exactly one of campaignId / adSetId. | [optional] |
| **ad_set_id** | **String** | Platform ad set id. Exactly one of campaignId / adSetId. | [optional] |
| **budget_value** | **Float** | With ABSOLUTE, a budget in the ad account&#39;s currency in WHOLE units (50 &#x3D; $50.00). With MULTIPLIER, a factor of the existing budget (2 &#x3D; double it) and NOT a currency amount. |  |
| **budget_value_type** | **String** |  |  |
| **time_start** | **Integer** | Unix seconds, on a 15-minute boundary (:00, :15, :30, :45). |  |
| **time_end** | **Integer** | Unix seconds, on a 15-minute boundary and after timeStart. |  |
| **recurrence_type** | **String** |  | [optional] |
| **currency** | **String** | Ad account currency, for the ABSOLUTE minor-unit conversion. Ignored for MULTIPLIER. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateHighDemandPeriodRequest.new(
  account_id: null,
  campaign_id: null,
  ad_set_id: null,
  budget_value: null,
  budget_value_type: null,
  time_start: null,
  time_end: null,
  recurrence_type: null,
  currency: null
)
```

