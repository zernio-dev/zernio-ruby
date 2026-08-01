# Zernio::Ad

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **status** | [**AdStatus**](AdStatus.md) | Delivery status. Derived from the platform &#x60;effective_status&#x60;, so it inherits ancestor pauses (an ACTIVE ad under a PAUSED campaign reads &#x60;paused&#x60;). For the ad&#39;s own on/off toggle use &#x60;configuredStatus&#x60;; for the review state use &#x60;reviewStatus&#x60;. | [optional] |
| **configured_status** | **String** | The ad&#39;s own on/off toggle as configured on the platform (Meta &#x60;configured_status&#x60;: ACTIVE / PAUSED), unaffected by ancestor (ad set / campaign) pauses. Distinct from &#x60;status&#x60;, which is the ancestor-cascaded delivery status. Only present for Meta ads synced after this field was added. | [optional] |
| **review_status** | [**AdReviewStatus**](AdReviewStatus.md) | Platform review state of this ad, independent of delivery &#x60;status&#x60; / &#x60;configuredStatus&#x60;. Absent when the platform reports no review signal. | [optional] |
| **ad_type** | **String** |  | [optional] |
| **goal** | **String** | Available goals vary by platform. Meta (Facebook/Instagram) supports all 9 (incl. &#x60;lead_conversion&#x60; &#x3D; website pixel lead optimization and &#x60;catalog_sales&#x60; &#x3D; Advantage+ catalog ads). TikTok supports the 7 non-&#x60;lead_conversion&#x60; goals. LinkedIn supports all except app_promotion / lead_conversion. Twitter/X supports engagement, traffic, awareness, video_views, app_promotion. Pinterest and Google Ads support only engagement, traffic, awareness, video_views. | [optional] |
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
| **optimization_goal** | **String** | What the delivery system optimizes for, at ad-set level. The value space depends on &#x60;platform&#x60;:  - Meta: ad set &#x60;optimization_goal&#x60; (e.g. OFFSITE_CONVERSIONS, VALUE, LEAD_GENERATION, LINK_CLICKS). - LinkedIn: the campaign&#39;s EFFECTIVE &#x60;optimizationTargetType&#x60;, refreshed from LinkedIn on every   sync rather than echoing what was passed on create. &#x60;NONE&#x60; means manual bidding, and it is a   real value, not missing data. Auto-bid values are MAX_IMPRESSION / MAX_CLICK / MAX_CONVERSION /   MAX_VIDEO_VIEW / MAX_LEAD / MAX_REACH; target-cost values are TARGET_COST_PER_CLICK /   TARGET_COST_PER_IMPRESSION / TARGET_COST_PER_VIDEO_VIEW; cost-cap values are the   CAP_COST_AND_MAXIMIZE_* family.  | [optional] |
| **cost_type** | **String** | LinkedIn only. The campaign&#39;s EFFECTIVE cost model (billing event) as applied by LinkedIn, refreshed on every sync rather than echoing what was passed on create. One of &#x60;CPM&#x60; (cost per thousand impressions), &#x60;CPC&#x60; (cost per click) or &#x60;CPV&#x60; (cost per video view). On LinkedIn this is the axis that pairs with &#x60;bidAmount&#x60;; there is no &#x60;bidStrategy&#x60;. For campaign type SPONSORED_INMAILS, &#x60;CPM&#x60; bills as cost-per-send x 1000. &#x60;null&#x60; for non-LinkedIn ads.  | [optional] |
| **serving_statuses** | **Array&lt;String&gt;** | LinkedIn only. Why the parent campaign is (or is not) delivering, verbatim from LinkedIn. A campaign can report &#x60;status: ACTIVE&#x60; and still serve nothing; this array is what says so.  - &#x60;[]&#x60; means no serving data: a non-LinkedIn ad, or a LinkedIn ad not yet re-synced. - &#x60;[\&quot;RUNNABLE\&quot;]&#x60; means the campaign is eligible to serve. - Anything else is a hold. Known values include ACCOUNT_SERVING_HOLD, ACCOUNT_TOTAL_BUDGET_HOLD,   ACCOUNT_END_DATE_HOLD, CAMPAIGN_START_DATE_HOLD, CAMPAIGN_END_DATE_HOLD,   CAMPAIGN_TOTAL_BUDGET_HOLD, CAMPAIGN_AUDIENCE_COUNT_HOLD, CAMPAIGN_GROUP_START_DATE_HOLD,   CAMPAIGN_GROUP_END_DATE_HOLD, CAMPAIGN_GROUP_TOTAL_BUDGET_HOLD, CAMPAIGN_GROUP_STATUS_HOLD and   STOPPED. The list is open on purpose, so treat unrecognized values as holds rather than errors.  The end-date and total-budget holds are terminal and surface as &#x60;status: completed&#x60;; the rest surface as &#x60;status: paused&#x60;. Note that a hold is not the only cause of zero delivery: with manual, target-cost or cost-cap bidding, a &#x60;bidAmount&#x60; of 0 stops delivery while &#x60;servingStatuses&#x60; still reads &#x60;[\&quot;RUNNABLE\&quot;]&#x60;. Check &#x60;costType&#x60; / &#x60;bidAmount&#x60; / &#x60;optimizationGoal&#x60; as well.  | [optional] |
| **platform_ad_account_name** | **String** | Human-readable advertiser/account name (Meta &#x60;AdAccount.name&#x60;, TikTok &#x60;advertiser_name&#x60;, LinkedIn / X / Pinterest equivalents). Refreshed every sync so platform-side renames propagate within one cycle. &#x60;null&#x60; when the platform doesn&#39;t return a name or the sync hasn&#39;t run yet.  | [optional] |
| **platform_created_at** | **Time** | Platform-reported creation timestamp (Meta &#x60;created_time&#x60;, TikTok &#x60;create_time&#x60;). Distinct from &#x60;createdAt&#x60; which reflects when Zernio first synced the doc — for sort/filter by \&quot;when the ad was actually created on the platform\&quot;, read this field. &#x60;null&#x60; for legacy ads synced before this field was added; aggregations fall back to &#x60;createdAt&#x60; in that case.  | [optional] |
| **bid_strategy** | [**BidStrategy**](BidStrategy.md) |  | [optional] |
| **bid_amount** | **Float** | Bid amount in WHOLE currency units of the ad account (USD: 5 &#x3D; $5.00; JPY: 100 &#x3D; ¥100).  - Meta source: &#x60;bid_amount&#x60; on the ad set (smallest-denomination int, decoded here). Populated   when bidStrategy is &#x60;LOWEST_COST_WITH_BID_CAP&#x60; or &#x60;COST_CAP&#x60;; &#x60;null&#x60; for auto-bid   (&#x60;LOWEST_COST_WITHOUT_CAP&#x60;). - TikTok source: priority order &#x60;bid_price&#x60; -&gt; &#x60;conversion_bid_price&#x60; -&gt; &#x60;deep_cpa_bid&#x60;   (whichever is set on the ad group). TikTok stores all three in whole currency units. - LinkedIn source: the campaign&#39;s EFFECTIVE &#x60;unitCost&#x60;, refreshed on every sync rather than   echoing what was passed on create. Its meaning depends on the bidding mode implied by   &#x60;optimizationGoal&#x60;: bid amount (manual), target cost, or cost cap. It pairs with &#x60;costType&#x60;,   NOT with &#x60;bidStrategy&#x60;, which LinkedIn does not have. A value of &#x60;0&#x60; is a real, delivery-   stopping configuration and not \&quot;unset\&quot;, so do not gate this field on &#x60;bidStrategy&#x60; for   LinkedIn ads.  Source: facebook-business-sdk-codegen api_specs/specs/AdSet.json (&#x60;bid_amount&#x60;).  | [optional] |
| **roas_average_floor** | **Float** | Minimum ROAS as a decimal multiplier (2.0 &#x3D; 2.0x ROAS). Populated when bidStrategy is &#x60;LOWEST_COST_WITH_MIN_ROAS&#x60;.  - Meta source: decoded from &#x60;bid_constraints.roas_average_floor&#x60; (Meta stores as   fixed-point int × 10000; we return the decimal). - TikTok source: &#x60;roas_bid&#x60; on the ad group (already a decimal).  Source: facebook-business-sdk-codegen api_specs/specs/AdCampaignBidConstraint.json.  | [optional] |
| **promoted_object** | [**AdPromotedObject**](AdPromotedObject.md) |  | [optional] |
| **creative** | [**AdCreative**](AdCreative.md) |  | [optional] |
| **targeting** | **Object** | The ad set&#39;s targeting (age, gender, geo, interests, placements, audience inclusions/exclusions). For ads created through Zernio this is the spec you supplied. For external ads (synced from Meta Ads Manager, &#x60;isExternal: true&#x60;) targeting lives at the ad set and isn&#39;t stored at ingest, so on the first &#x60;GET /v1/ads/{adId}&#x60; Zernio resolves it live from Meta and caches it on the ad; the value is then Meta&#39;s raw &#x60;targeting&#x60; shape (snake_case, e.g. &#x60;geo_locations&#x60;, &#x60;age_min&#x60;), the same object Ads Manager shows. May be absent if the ad set exposes no targeting or the lookup fails.  | [optional] |
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
  configured_status: ACTIVE,
  review_status: null,
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
  cost_type: CPC,
  serving_statuses: [ACCOUNT_TOTAL_BUDGET_HOLD],
  platform_ad_account_name: Zernio - previously Late,
  platform_created_at: null,
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

