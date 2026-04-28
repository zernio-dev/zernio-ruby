# Zernio::BoostPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_id** | **String** | Zernio post ID (provide this or platformPostId) | [optional] |
| **platform_post_id** | **String** | Platform post ID (alternative to postId) | [optional] |
| **account_id** | **String** | Social account ID |  |
| **ad_account_id** | **String** | Platform ad account ID |  |
| **name** | **String** |  |  |
| **goal** | **String** | Available goals vary by platform. Meta (Facebook/Instagram) and TikTok support all 7. LinkedIn supports all except app_promotion. Twitter/X supports engagement, traffic, awareness, video_views, app_promotion. Pinterest and Google Ads support only engagement, traffic, awareness, video_views. |  |
| **budget** | [**BoostPostRequestBudget**](BoostPostRequestBudget.md) |  |  |
| **currency** | **String** |  | [optional] |
| **schedule** | [**BoostPostRequestSchedule**](BoostPostRequestSchedule.md) |  | [optional] |
| **targeting** | [**BoostPostRequestTargeting**](BoostPostRequestTargeting.md) |  | [optional] |
| **bid_amount** | **Float** | Max bid cap (Meta only) | [optional] |
| **tracking** | [**BoostPostRequestTracking**](BoostPostRequestTracking.md) |  | [optional] |
| **special_ad_categories** | **Array&lt;String&gt;** | Meta only. Required for housing, employment, credit, or political ads. | [optional] |
| **dsa_beneficiary** | **String** | Name of the legal entity benefiting from the ad. Required by Meta when targeting EU users (DSA Article 26). Not enforced at schema level; enforced server-side when targeting intersects EU member states.  | [optional] |
| **dsa_payor** | **String** | Name of the legal entity paying for the ad. Required by Meta when targeting EU users (DSA Article 26). Note Meta API spelling: dsa_payor (not dsa_payer).  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BoostPostRequest.new(
  post_id: null,
  platform_post_id: null,
  account_id: null,
  ad_account_id: null,
  name: null,
  goal: null,
  budget: null,
  currency: USD,
  schedule: null,
  targeting: null,
  bid_amount: null,
  tracking: null,
  special_ad_categories: null,
  dsa_beneficiary: null,
  dsa_payor: null
)
```

