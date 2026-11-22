# Zernio::GetEventsOverviewDaily200ResponseBreakdownCampaignsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  | [optional] |
| **campaign_id** | **String** |  | [optional] |
| **name** | **String** | The campaign&#39;s name in the ad account, when Zernio holds it. | [optional] |
| **reason** | **String** |  | [optional] |
| **conversions** | **Integer** |  | [optional] |
| **value** | **Float** | The value of those conversions in the currency of &#x60;totals&#x60;. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetEventsOverviewDaily200ResponseBreakdownCampaignsInner.new(
  platform: null,
  campaign_id: null,
  name: null,
  reason: null,
  conversions: null,
  value: null
)
```

