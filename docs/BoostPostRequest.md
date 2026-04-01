# Late::BoostPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_id** | **String** | Zernio post ID (provide this or platformPostId) | [optional] |
| **platform_post_id** | **String** | Platform post ID (alternative to postId) | [optional] |
| **account_id** | **String** | Social account ID |  |
| **ad_account_id** | **String** | Platform ad account ID |  |
| **name** | **String** |  |  |
| **goal** | **String** |  |  |
| **budget** | [**BoostPostRequestBudget**](BoostPostRequestBudget.md) |  |  |
| **currency** | **String** |  | [optional] |
| **schedule** | [**BoostPostRequestSchedule**](BoostPostRequestSchedule.md) |  | [optional] |
| **targeting** | [**BoostPostRequestTargeting**](BoostPostRequestTargeting.md) |  | [optional] |
| **bid_amount** | **Float** | Max bid cap (Meta only) | [optional] |
| **tracking** | [**BoostPostRequestTracking**](BoostPostRequestTracking.md) |  | [optional] |
| **special_ad_categories** | **Array&lt;String&gt;** | Meta only. Required for housing, employment, credit, or political ads. | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::BoostPostRequest.new(
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
  special_ad_categories: null
)
```

