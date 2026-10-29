# Zernio::CreatorPortalCampaign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The campaign id, as in a link-recovery URL. |  |
| **name** | **String** |  |  |
| **brand_name** | **String** |  |  |
| **logo_url** | **String** |  |  |
| **theme** | **Object** | Same keys as the &#x60;welcomeTheme&#x60; parameter of &#x60;GET /v1/connect/{platform}&#x60;. |  |
| **status** | **String** |  |  |
| **platforms** | **Array&lt;String&gt;** |  |  |
| **content_rules** | **String** |  |  |
| **starts_at** | **Time** |  |  |
| **ends_at** | **Time** |  |  |
| **currency** | **String** |  |  |
| **economics** | [**CreatorPortalEconomics**](CreatorPortalEconomics.md) |  |  |
| **max_post_age_minutes** | **Integer** | A post must be submitted within this many minutes of publishing. Null means any age. Either way, only posts published after the campaign started are accepted. |  |
| **hold_days** | **Integer** | Days approved earnings stay owed before they become payable. |  |
| **tracking_days** | **Integer** | Days each submitted post is tracked for views. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatorPortalCampaign.new(
  id: null,
  name: null,
  brand_name: null,
  logo_url: null,
  theme: null,
  status: null,
  platforms: null,
  content_rules: null,
  starts_at: null,
  ends_at: null,
  currency: null,
  economics: null,
  max_post_age_minutes: null,
  hold_days: null,
  tracking_days: null
)
```

