# Zernio::Ad

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **status** | [**AdStatus**](AdStatus.md) |  | [optional] |
| **ad_type** | **String** |  | [optional] |
| **goal** | **String** | Available goals vary by platform. Meta (Facebook/Instagram) and TikTok support all 7. LinkedIn supports all except app_promotion. Twitter/X supports engagement, traffic, awareness, video_views, app_promotion. Pinterest and Google Ads support only engagement, traffic, awareness, video_views. | [optional] |
| **is_external** | **Boolean** | True for ads synced from platform ad managers | [optional] |
| **budget** | [**AdBudget**](AdBudget.md) |  | [optional] |
| **metrics** | [**AdMetrics**](AdMetrics.md) |  | [optional] |
| **platform_ad_id** | **String** |  | [optional] |
| **platform_ad_account_id** | **String** |  | [optional] |
| **platform_campaign_id** | **String** |  | [optional] |
| **platform_ad_set_id** | **String** |  | [optional] |
| **campaign_name** | **String** |  | [optional] |
| **ad_set_name** | **String** |  | [optional] |
| **platform_objective** | **String** | Raw Meta campaign objective (e.g. OUTCOME_SALES, OUTCOME_LEADS, OUTCOME_TRAFFIC). Only present for Meta ads. | [optional] |
| **optimization_goal** | **String** | Meta ad set optimization goal (e.g. OFFSITE_CONVERSIONS, VALUE, LEAD_GENERATION, LINK_CLICKS). Only present for Meta ads. | [optional] |
| **bid_strategy** | [**BidStrategy**](BidStrategy.md) | Ad-set bid strategy (overrides campaign level on Meta). Populated for Meta and TikTok. TikTok&#39;s native &#x60;bid_type&#x60; is normalized to the cross-platform Meta enum: &#x60;BID_TYPE_NO_BID&#x60; -&gt; &#x60;LOWEST_COST_WITHOUT_CAP&#x60;, &#x60;BID_TYPE_CUSTOM&#x60; -&gt; &#x60;LOWEST_COST_WITH_BID_CAP&#x60;, deep_bid_type&#x3D;MIN_ROAS or roas_bid&gt;0 -&gt; &#x60;LOWEST_COST_WITH_MIN_ROAS&#x60;, &#x60;BID_TYPE_MAX_CONVERSION&#x60; -&gt; &#x60;LOWEST_COST_WITHOUT_CAP&#x60;.  | [optional] |
| **bid_amount** | **Float** | Bid cap in WHOLE currency units of the ad account (USD: 5 &#x3D; $5.00; JPY: 100 &#x3D; ¥100). Populated when bidStrategy is &#x60;LOWEST_COST_WITH_BID_CAP&#x60; or &#x60;COST_CAP&#x60;. &#x60;null&#x60; for auto-bid (&#x60;LOWEST_COST_WITHOUT_CAP&#x60;).  - Meta source: &#x60;bid_amount&#x60; on the ad set (smallest-denomination int, decoded here). - TikTok source: priority order &#x60;bid_price&#x60; -&gt; &#x60;conversion_bid_price&#x60; -&gt; &#x60;deep_cpa_bid&#x60;   (whichever is set on the ad group). TikTok stores all three in whole currency units.  Source: facebook-business-sdk-codegen api_specs/specs/AdSet.json (&#x60;bid_amount&#x60;).  | [optional] |
| **roas_average_floor** | **Float** | Minimum ROAS as a decimal multiplier (2.0 &#x3D; 2.0x ROAS). Populated when bidStrategy is &#x60;LOWEST_COST_WITH_MIN_ROAS&#x60;.  - Meta source: decoded from &#x60;bid_constraints.roas_average_floor&#x60; (Meta stores as   fixed-point int × 10000; we return the decimal). - TikTok source: &#x60;roas_bid&#x60; on the ad group (already a decimal).  Source: facebook-business-sdk-codegen api_specs/specs/AdCampaignBidConstraint.json.  | [optional] |
| **promoted_object** | [**AdPromotedObject**](AdPromotedObject.md) |  | [optional] |
| **creative** | [**AdCreative**](AdCreative.md) |  | [optional] |
| **targeting** | **Object** |  | [optional] |
| **schedule** | [**AdSchedule**](AdSchedule.md) |  | [optional] |
| **rejection_reason** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::Ad.new(
  _id: null,
  name: null,
  platform: null,
  status: null,
  ad_type: null,
  goal: null,
  is_external: null,
  budget: null,
  metrics: null,
  platform_ad_id: null,
  platform_ad_account_id: null,
  platform_campaign_id: null,
  platform_ad_set_id: null,
  campaign_name: null,
  ad_set_name: null,
  platform_objective: OUTCOME_SALES,
  optimization_goal: OFFSITE_CONVERSIONS,
  bid_strategy: null,
  bid_amount: 5,
  roas_average_floor: 2.0,
  promoted_object: null,
  creative: null,
  targeting: null,
  schedule: null,
  rejection_reason: null,
  created_at: null,
  updated_at: null
)
```

