# Zernio::CreateRfPredictionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id (posting or ads variant). |  |
| **ad_account_id** | **String** | Meta ad account id (act_&lt;n&gt;). |  |
| **budget_amount** | **Float** | Whole currency units. Exactly one of budgetAmount / reach. | [optional] |
| **reach** | **Integer** | Target unique reach. Exactly one of budgetAmount / reach. | [optional] |
| **start_date** | **Time** | Campaign window start (must be in the future). |  |
| **end_date** | **Time** |  |  |
| **frequency_cap** | **Integer** | Max impressions per person over the window. | [optional] |
| **targeting** | **Object** | Canonical camelCase TargetingSpec (same shape as /v1/ads/create&#39;s &#x60;targeting&#x60;). Defaults to countries: [US]. | [optional] |
| **placements** | **Object** | Meta placements object (same shape as /v1/ads/create&#39;s &#x60;placements&#x60;). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateRfPredictionRequest.new(
  account_id: null,
  ad_account_id: null,
  budget_amount: null,
  reach: null,
  start_date: null,
  end_date: null,
  frequency_cap: null,
  targeting: null,
  placements: null
)
```

