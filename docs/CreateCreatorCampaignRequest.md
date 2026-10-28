# Zernio::CreateCreatorCampaignRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | Profile the campaign lives in. Creator accounts connect into the same workspace. |  |
| **name** | **String** |  |  |
| **brand_name** | **String** |  |  |
| **economics** | [**CreatorCampaignEconomics**](CreatorCampaignEconomics.md) |  |  |
| **caps** | [**CreatorCampaignCaps**](CreatorCampaignCaps.md) |  | [optional] |
| **platforms** | **Array&lt;String&gt;** | Platforms creators may post on. At least one is needed to activate. | [optional] |
| **content_rules** | **String** |  | [optional] |
| **starts_at** | **Time** |  | [optional] |
| **ends_at** | **Time** |  | [optional] |
| **tracking_days** | **Integer** |  | [optional][default to 30] |
| **hold_days** | **Integer** |  | [optional][default to 10] |
| **max_post_age_minutes** | **Integer** |  | [optional][default to 60] |
| **settlement** | **String** |  | [optional][default to &#39;none&#39;] |
| **branding** | [**CreatorCampaignBranding**](CreatorCampaignBranding.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateCreatorCampaignRequest.new(
  profile_id: null,
  name: null,
  brand_name: null,
  economics: null,
  caps: null,
  platforms: null,
  content_rules: null,
  starts_at: null,
  ends_at: null,
  tracking_days: null,
  hold_days: null,
  max_post_age_minutes: null,
  settlement: null,
  branding: null
)
```

