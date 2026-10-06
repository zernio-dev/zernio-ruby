# Zernio::BulkUpdateAdCampaignStatusRequestCampaignsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_campaign_id** | **String** | The campaign id on the ad platform (e.g. the numeric Google campaign id), not a Zernio id. |  |
| **platform** | **String** | The ad platform, e.g. &#x60;google&#x60; for Google Ads. The ads connection slug (&#x60;googleads&#x60;, &#x60;tiktokads&#x60;, ...) is accepted as an alias. &#x60;metaads&#x60; is not: send &#x60;facebook&#x60; or &#x60;instagram&#x60;. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BulkUpdateAdCampaignStatusRequestCampaignsInner.new(
  platform_campaign_id: null,
  platform: null
)
```

