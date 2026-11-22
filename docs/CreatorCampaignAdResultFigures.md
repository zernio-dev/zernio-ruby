# Zernio::CreatorCampaignAdResultFigures

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **spend_cents** | **Integer** | Ad spend in minor units of the campaign currency. |  |
| **impressions** | **Integer** |  |  |
| **clicks** | **Integer** |  |  |
| **purchases** | **Integer** |  |  |
| **purchase_value_cents** | **Integer** |  |  |
| **roas** | **Float** | Purchase value over spend. Null before any spend. |  |
| **cpa_cents** | **Integer** | Spend per purchase. Null without purchases. |  |
| **ctr** | **Float** | Clicks over impressions, in percent. Null without impressions. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatorCampaignAdResultFigures.new(
  spend_cents: null,
  impressions: null,
  clicks: null,
  purchases: null,
  purchase_value_cents: null,
  roas: null,
  cpa_cents: null,
  ctr: null
)
```

