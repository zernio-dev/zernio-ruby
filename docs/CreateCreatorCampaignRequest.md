# Zernio::CreateCreatorCampaignRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | Profile the campaign lives in. Creator accounts connect into the same workspace. |  |
| **name** | **String** |  |  |
| **brand_name** | **String** |  |  |
| **economics** | [**CreatorCampaignEconomics**](CreatorCampaignEconomics.md) |  |  |
| **caps** | [**CreatorCampaignCaps**](CreatorCampaignCaps.md) | Omitted, the campaign starts with authenticityThreshold 40 and no other caps. | [optional] |
| **platforms** | **Array&lt;String&gt;** | Platforms creators may post on. At least one is needed to activate. &#x60;twitter&#x60; (X) needs usage-based billing: X reads are billed at cost, up to &#x60;caps.maxXReadSpendCents&#x60;, and X views are the post&#39;s impressions. &#x60;facebook&#x60; takes Page reels and videos only. | [optional] |
| **content_rules** | **String** |  | [optional] |
| **starts_at** | **Time** |  | [optional] |
| **ends_at** | **Time** |  | [optional] |
| **tracking_days** | **Integer** |  | [optional][default to 30] |
| **hold_days** | **Integer** |  | [optional][default to 10] |
| **max_post_age_minutes** | **Integer** | Optional maximum age in minutes of a post when it is submitted. Null or omitted (the default) accepts any age. Posts published before the campaign started are always refused. | [optional] |
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

