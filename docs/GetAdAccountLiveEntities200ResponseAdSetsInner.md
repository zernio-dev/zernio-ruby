# Zernio::GetAdAccountLiveEntities200ResponseAdSetsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_ad_set_id** | **String** |  | [optional] |
| **ad_set_name** | **String** |  | [optional] |
| **platform_campaign_id** | **String** |  | [optional] |
| **platform_ad_set_status** | **String** | Meta &#x60;effective_status&#x60;, for example ACTIVE, PAUSED, CAMPAIGN_PAUSED. | [optional] |
| **configured_status** | **String** | Meta &#x60;status&#x60;: the ad set&#39;s own switch. | [optional] |
| **status** | **String** | Zernio&#39;s normalized status, derived from &#x60;platformAdSetStatus&#x60;. | [optional] |
| **budget** | [**GetAdAccountLiveEntities200ResponseAdSetsInnerBudget**](GetAdAccountLiveEntities200ResponseAdSetsInnerBudget.md) |  | [optional] |
| **daily_budget** | **Float** | Meta &#x60;daily_budget&#x60; in whole units of &#x60;currency&#x60;. | [optional] |
| **lifetime_budget** | **Float** | Meta &#x60;lifetime_budget&#x60; in whole units of &#x60;currency&#x60;. | [optional] |
| **budget_remaining** | **Float** | Meta &#x60;budget_remaining&#x60; in whole units of &#x60;currency&#x60;. Null when the ad set has no budget of its own. | [optional] |
| **bid_strategy** | **String** | Meta &#x60;bid_strategy&#x60;. | [optional] |
| **bid_amount** | **Float** | Meta &#x60;bid_amount&#x60; (bid cap or cost target) in whole units of &#x60;currency&#x60;. Null when the strategy has none. | [optional] |
| **optimization_goal** | **String** | Meta &#x60;optimization_goal&#x60;. | [optional] |
| **billing_event** | **String** | Meta &#x60;billing_event&#x60;. | [optional] |
| **promoted_object** | **Hash&lt;String, Object&gt;** | Meta &#x60;promoted_object&#x60; verbatim (snake_case). | [optional] |
| **targeting** | **Hash&lt;String, Object&gt;** | Meta &#x60;targeting&#x60; verbatim (snake_case), as Meta returns it now. | [optional] |
| **schedule** | [**GetAdAccountLiveEntities200ResponseAdSetsInnerSchedule**](GetAdAccountLiveEntities200ResponseAdSetsInnerSchedule.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdAccountLiveEntities200ResponseAdSetsInner.new(
  platform_ad_set_id: null,
  ad_set_name: null,
  platform_campaign_id: null,
  platform_ad_set_status: null,
  configured_status: null,
  status: null,
  budget: null,
  daily_budget: null,
  lifetime_budget: null,
  budget_remaining: null,
  bid_strategy: null,
  bid_amount: null,
  optimization_goal: null,
  billing_event: null,
  promoted_object: null,
  targeting: null,
  schedule: null
)
```

