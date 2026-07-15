# Zernio::GetAdsTimeline200ResponseRowsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Date** |  | [optional] |
| **spend** | **Float** | Native currency units (matches /ads/tree convention). | [optional] |
| **impressions** | **Integer** |  | [optional] |
| **reach** | **Integer** |  | [optional] |
| **clicks** | **Integer** |  | [optional] |
| **engagement** | **Integer** |  | [optional] |
| **ctr** | **Float** | Click-through rate as a percentage (0–100). | [optional] |
| **cpc** | **Float** | Cost per click in native currency. | [optional] |
| **cpm** | **Float** | Cost per 1000 impressions in native currency. | [optional] |
| **conversions** | **Integer** | Sum of conversion events over the range. Meta: events matching the campaign optimization goal. Google: tracked conversions. X / LinkedIn: reported website/lead conversions (added 2026-07). | [optional] |
| **cost_per_conversion** | **Float** |  | [optional] |
| **actions** | **Hash&lt;String, Float&gt;** | Per-action-type counts merged across all ads on this day. Keys are platform-native action types. | [optional] |
| **action_values** | **Hash&lt;String, Float&gt;** | Monetary mirror of &#x60;actions&#x60; in native currency. | [optional] |
| **purchase_value** | **Float** | Sum of purchase-type action values on this day, native currency. | [optional] |
| **roas** | **Float** | Derived purchaseValue / spend. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdsTimeline200ResponseRowsInner.new(
  date: null,
  spend: null,
  impressions: null,
  reach: null,
  clicks: null,
  engagement: null,
  ctr: null,
  cpc: null,
  cpm: null,
  conversions: null,
  cost_per_conversion: null,
  actions: null,
  action_values: null,
  purchase_value: null,
  roas: null
)
```

