# Zernio::WebhookPayloadCampaignCreatedAdObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **level** | **String** | Always &#x60;CAMPAIGN&#x60;. |  |
| **platform_id** | **String** | Platform-native campaign ID, usable as campaignId with /v1/ads/campaigns/{campaignId}. |  |
| **platform_ad_account_id** | **String** | Platform-native ad account ID. |  |
| **name** | **String** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadCampaignCreatedAdObject.new(
  level: null,
  platform_id: null,
  platform_ad_account_id: null,
  name: null
)
```

