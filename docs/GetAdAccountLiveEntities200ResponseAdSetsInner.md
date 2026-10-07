# Zernio::GetAdAccountLiveEntities200ResponseAdSetsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_ad_set_id** | **String** |  | [optional] |
| **ad_set_name** | **String** |  | [optional] |
| **platform_campaign_id** | **String** |  | [optional] |
| **platform_ad_set_status** | **String** | Meta &#x60;effective_status&#x60; (ACTIVE, PAUSED, CAMPAIGN_PAUSED...) or TikTok &#x60;secondary_status&#x60; (ADGROUP_STATUS_DELIVERY_OK, ADGROUP_STATUS_AUDIT...). | [optional] |
| **configured_status** | **String** | The ad set&#39;s own switch: Meta &#x60;status&#x60;, or TikTok &#x60;operation_status&#x60; as ACTIVE / PAUSED. | [optional] |
| **status** | **String** | Zernio&#39;s normalized status, derived from &#x60;platformAdSetStatus&#x60;. | [optional] |
| **budget** | [**GetAdAccountLiveEntities200ResponseAdSetsInnerBudget**](GetAdAccountLiveEntities200ResponseAdSetsInnerBudget.md) |  | [optional] |
| **daily_budget** | **Float** | Daily budget in whole units of &#x60;currency&#x60;. | [optional] |
| **lifetime_budget** | **Float** | Lifetime budget in whole units of &#x60;currency&#x60;. | [optional] |
| **budget_mode** | **String** | TikTok only: &#x60;budget_mode&#x60; as TikTok reports it. | [optional] |
| **budget_remaining** | **Float** | Meta &#x60;budget_remaining&#x60; in whole units of &#x60;currency&#x60;. Null when the ad set has no budget of its own, and always on TikTok. | [optional] |
| **bid_strategy** | **String** | Meta &#x60;bid_strategy&#x60;. On TikTok the ad group&#39;s &#x60;bid_type&#x60; normalized to the same vocabulary (LOWEST_COST_WITHOUT_CAP, LOWEST_COST_WITH_BID_CAP, LOWEST_COST_WITH_MIN_ROAS). | [optional] |
| **bid_amount** | **Float** | Bid cap or cost target in whole units of &#x60;currency&#x60; (Meta &#x60;bid_amount&#x60;; TikTok &#x60;bid_price&#x60;, else &#x60;conversion_bid_price&#x60;, else &#x60;deep_cpa_bid&#x60;). Null when the strategy has none. | [optional] |
| **optimization_goal** | **String** | Meta or TikTok &#x60;optimization_goal&#x60;. | [optional] |
| **billing_event** | **String** | Meta or TikTok &#x60;billing_event&#x60;. | [optional] |
| **promoted_object** | **Hash&lt;String, Object&gt;** | Meta &#x60;promoted_object&#x60; verbatim (snake_case). On TikTok &#x60;{ pixelId, customEventType, applicationId, customConversionId }&#x60; from &#x60;pixel_id&#x60;, &#x60;optimization_event&#x60;, &#x60;app_id&#x60; and &#x60;custom_conversion_id&#x60;, only the keys TikTok has set; null when none is. | [optional] |
| **targeting** | **Hash&lt;String, Object&gt;** | The platform&#39;s targeting verbatim (snake_case), as it reports it now: Meta &#x60;targeting&#x60;, or TikTok&#39;s ad group targeting fields (location_ids, age_groups, gender, languages, interest_category_ids, audience_ids, placements...). | [optional] |
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
  budget_mode: null,
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

