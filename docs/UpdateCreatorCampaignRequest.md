# Zernio::UpdateCreatorCampaignRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **brand_name** | **String** |  | [optional] |
| **platforms** | **Array&lt;String&gt;** |  | [optional] |
| **content_rules** | **String** |  | [optional] |
| **starts_at** | **Time** |  | [optional] |
| **ends_at** | **Time** |  | [optional] |
| **tracking_days** | **Integer** |  | [optional] |
| **hold_days** | **Integer** |  | [optional] |
| **max_post_age_minutes** | **Integer** |  | [optional] |
| **settlement** | **String** |  | [optional] |
| **economics** | [**CreatorCampaignEconomics**](CreatorCampaignEconomics.md) |  | [optional] |
| **caps** | [**CreatorCampaignCaps**](CreatorCampaignCaps.md) |  | [optional] |
| **branding** | [**CreatorCampaignBranding**](CreatorCampaignBranding.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateCreatorCampaignRequest.new(
  name: null,
  brand_name: null,
  platforms: null,
  content_rules: null,
  starts_at: null,
  ends_at: null,
  tracking_days: null,
  hold_days: null,
  max_post_age_minutes: null,
  settlement: null,
  economics: null,
  caps: null,
  branding: null
)
```

