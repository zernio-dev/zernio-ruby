# Zernio::WebhookPayloadCreatorCampaignCampaign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **budget_cents** | **Integer** |  |  |
| **budget_exhausted_at** | **Time** | Present on creator_campaign.budget_exhausted only. | [optional] |
| **closed_at** | **Time** | Present on creator_campaign.closed only. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadCreatorCampaignCampaign.new(
  id: null,
  name: null,
  budget_cents: null,
  budget_exhausted_at: null,
  closed_at: null
)
```

