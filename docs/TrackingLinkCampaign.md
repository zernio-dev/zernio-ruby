# Zernio::TrackingLinkCampaign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** | The ad platform, such as &#x60;metaads&#x60; or &#x60;googleads&#x60;. | [optional] |
| **campaign_id** | **String** | The platform&#39;s campaign id. | [optional] |
| **utm_campaign** | **String** | The &#x60;utm_campaign&#x60; value the campaign uses. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TrackingLinkCampaign.new(
  platform: null,
  campaign_id: null,
  utm_campaign: null
)
```

