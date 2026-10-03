# Zernio::ListAdSets200ResponseAdSetsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_ad_set_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **ad_set_name** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **platform_ad_set_status** | **String** | Raw platform ad set status. On TikTok the ad group&#39;s own switch &#x60;operation_status&#x60; (ENABLE / DISABLE), independent of its campaign. | [optional] |
| **platform_campaign_id** | **String** |  | [optional] |
| **platform_ad_account_id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **profile_id** | **String** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **budget** | [**ListAdSets200ResponseAdSetsInnerBudget**](ListAdSets200ResponseAdSetsInnerBudget.md) |  | [optional] |
| **schedule** | [**ListAdSets200ResponseAdSetsInnerSchedule**](ListAdSets200ResponseAdSetsInnerSchedule.md) |  | [optional] |
| **targeting** | [**ListAdSets200ResponseAdSetsInnerTargeting**](ListAdSets200ResponseAdSetsInnerTargeting.md) |  | [optional] |
| **is_external** | **Boolean** |  | [optional] |
| **platform_created_at** | **Time** |  | [optional] |
| **status_read_at** | **Time** | Only with &#x60;live&#x3D;true&#x60;. When &#x60;platformAdSetStatus&#x60; was read from the platform; null when this row was not read live. | [optional] |
| **optimization_goal** | **String** | TikTok only, only with &#x60;live&#x3D;true&#x60; and only on rows read live. The ad group&#39;s &#x60;optimization_goal&#x60; exactly as TikTok&#39;s adgroup/get returns it now (for example ENGAGED_VIEW, ENGAGED_VIEW_FIFTEEN, CLICK, CONVERT). Absent on rows not read live and on other platforms. | [optional] |
| **billing_event** | **String** | TikTok only, only with &#x60;live&#x3D;true&#x60; and only on rows read live. The ad group&#39;s &#x60;billing_event&#x60; exactly as TikTok&#39;s adgroup/get returns it now (for example CPV, CPC, OCPM). | [optional] |
| **native_settings** | **Hash&lt;String, Object&gt;** | TikTok only, only with &#x60;live&#x3D;true&#x60; and only on rows read live. TikTok&#39;s adgroup/get record verbatim (snake_case, TikTok&#39;s own names and enums): operation_status, optimization_goal, optimization_event, billing_event, bid_type, bid_price, budget, budget_mode, pacing, schedule_type, schedule_start_time, schedule_end_time, dayparting, placement_type, placements, location_ids, age_groups, gender, languages, interest_category_ids, interest_keyword_ids, actions, audience_ids, excluded_audience_ids, operating_systems, frequency, frequency_schedule, smart_audience_enabled, smart_interest_behavior_enabled. schedule_start_time and schedule_end_time are UTC wall clocks (YYYY-MM-DD HH:MM:SS). location_ids holds TikTok&#39;s native location ids (GeoNames ids for countries); GET /v1/ads/targeting/search?dimension&#x3D;geo returns them as &#x60;platformId&#x60; on country results. Plus advertiser_currency and advertiser_timezone from TikTok&#39;s advertiser/info. A field TikTok does not return is absent. | [optional] |
| **config_read_at** | **Time** | Only with &#x60;live&#x3D;true&#x60;. When &#x60;nativeSettings&#x60; was read from the platform. Null on every row whose native settings were not read now (row past the cap, failed read, or a platform without a native read). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListAdSets200ResponseAdSetsInner.new(
  platform_ad_set_id: null,
  platform: null,
  ad_set_name: null,
  status: null,
  platform_ad_set_status: null,
  platform_campaign_id: null,
  platform_ad_account_id: null,
  account_id: null,
  profile_id: null,
  currency: null,
  budget: null,
  schedule: null,
  targeting: null,
  is_external: null,
  platform_created_at: null,
  status_read_at: null,
  optimization_goal: null,
  billing_event: null,
  native_settings: null,
  config_read_at: null
)
```

