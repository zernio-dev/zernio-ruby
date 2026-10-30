# Zernio::CreatorCampaignEconomicsCpm

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **metric** | **String** | What the rate pays on. &#x60;engagements&#x60; counts the &#x60;engagementTypes&#x60; as each platform reports them, and &#x60;minViewsToEarn&#x60; then applies to engagements. Fixed once the campaign leaves draft. | [optional][default to &#39;views&#39;] |
| **engagement_types** | **Array&lt;String&gt;** | With &#x60;metric: engagements&#x60;, the engagements that count. Missing means all four, and sending it on a views campaign answers 400. YouTube reports likes and comments only, Facebook and Threads have no saves, and Pinterest reports saves only. | [optional] |
| **rate_per1k_cents** | **Integer** |  |  |
| **min_views_to_earn** | **Integer** | The count a post must reach before it earns, in the campaign metric (views or engagements). |  |
| **max_payout_per_clip_cents** | **Integer** |  | [optional] |
| **budget_cents** | **Integer** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatorCampaignEconomicsCpm.new(
  type: null,
  metric: null,
  engagement_types: null,
  rate_per1k_cents: null,
  min_views_to_earn: null,
  max_payout_per_clip_cents: null,
  budget_cents: null
)
```

