# Zernio::CreateAdCampaignRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token. |  |
| **ad_account_id** | **String** | Meta ad account id (act_&lt;n&gt;). |  |
| **name** | **String** |  |  |
| **goal** | **String** | Mapped to the ODAX objective (same mapping as POST /v1/ads/create). |  |
| **special_ad_categories** | **Array&lt;String&gt;** |  | [optional] |
| **budget_amount** | **Float** | Campaign-level (CBO) budget in whole currency units. Requires budgetType. | [optional] |
| **budget_type** | **String** |  | [optional] |
| **status** | **String** |  | [optional][default to &#39;PAUSED&#39;] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateAdCampaignRequest.new(
  account_id: null,
  ad_account_id: null,
  name: null,
  goal: null,
  special_ad_categories: null,
  budget_amount: null,
  budget_type: null,
  status: null
)
```

