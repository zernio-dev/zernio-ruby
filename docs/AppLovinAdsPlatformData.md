# Zernio::AppLovinAdsPlatformData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_type** | **String** | Required for a new campaign. | [optional] |
| **os** | **String** | APP campaigns. Required. | [optional] |
| **package_name** | **String** | APP campaigns. Required. | [optional] |
| **itunes_id** | **Integer** | iOS APP campaigns. Required. | [optional] |
| **website_url** | **String** | WEB campaigns. Required unless linkUrl is sent. | [optional] |
| **bidding_strategy** | **String** | Defaults to CPI billing for a CPI goal, CPM billing otherwise. TARGET_GOAL_WITH_CPI_BILLING takes an APP campaign with a CPI goal only. Set at creation only. | [optional] |
| **goal_type** | **String** | APP takes all, WEB takes CPE, CPP and CHK_ROAS. Defaults from goal: app_promotion is CPI, conversions CPP, lead_generation CPE. Set at creation only. | [optional] |
| **goal_value** | **Float** | The goal for every country (a cost, or a ROAS ratio). APP limits: CPI below 200, CPE and CPP below 500, AD_ROAS at least 0.1, CHK_ROAS at least 0.01, BLD_ROAS at least 0.05. Send this or countryGoalValues. | [optional] |
| **country_goal_values** | **Hash&lt;String, Float&gt;** | Per-country goal values for targeted countries. | [optional] |
| **roas_day_target** | **String** | Required for ROAS goals (and WEB CPP). APP takes DAY7 or DAY28, WEB DAY0 or DAY7. | [optional] |
| **event_target** | **String** | Required for a CPE goal. | [optional] |
| **country_budgets** | **Hash&lt;String, Float&gt;** | Per-country daily budgets, instead of budgetAmount. AppLovin budgets are daily only. | [optional] |
| **tracking** | [**AppLovinAdsPlatformDataTracking**](AppLovinAdsPlatformDataTracking.md) |  | [optional] |
| **audience_strategy** | **String** | WEB campaigns. | [optional] |
| **assets** | [**Array&lt;AppLovinAdsPlatformDataAssetsInner&gt;**](AppLovinAdsPlatformDataAssetsInner.md) | The creative set media: URLs Zernio uploads to AppLovin, or ids of assets already there. Needs a HOSTED_HTML asset, or an IMG_INTER_P image plus a VID_LONG_P or VID_SHORT_P video. | [optional] |
| **languages** | **Array&lt;String&gt;** | Creative set languages as AppLovin names them. All languages by default. | [optional] |
| **brand_info** | [**AppLovinAdsPlatformDataBrandInfo**](AppLovinAdsPlatformDataBrandInfo.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AppLovinAdsPlatformData.new(
  campaign_type: null,
  os: null,
  package_name: com.acme.game,
  itunes_id: 1234567890,
  website_url: null,
  bidding_strategy: null,
  goal_type: null,
  goal_value: 2.5,
  country_goal_values: {US&#x3D;2.5},
  roas_day_target: null,
  event_target: GENERATE_LEAD,
  country_budgets: {US&#x3D;40, CA&#x3D;10},
  tracking: null,
  audience_strategy: null,
  assets: null,
  languages: [ENGLISH],
  brand_info: null
)
```

