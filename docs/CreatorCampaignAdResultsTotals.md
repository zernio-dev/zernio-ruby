# Zernio::CreatorCampaignAdResultsTotals

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
| **posts** | **Integer** | Posts with at least one ad. |  |
| **ads** | **Integer** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatorCampaignAdResultsTotals.new(
  spend_cents: null,
  impressions: null,
  clicks: null,
  purchases: null,
  purchase_value_cents: null,
  roas: null,
  cpa_cents: null,
  ctr: null,
  posts: null,
  ads: null
)
```

