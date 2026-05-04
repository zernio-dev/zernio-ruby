# Zernio::XApiPricing

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | **String** |  | [optional] |
| **markup** | **String** | Always 0% — Zernio does not mark up X API rates. | [optional] |
| **source** | **String** |  | [optional] |
| **last_verified** | **Date** | Date the prices were last verified against X&#39;s published rates. | [optional] |
| **tiers** | [**Array&lt;XApiPricingTiersInner&gt;**](XApiPricingTiersInner.md) | Rollup of operations grouped by their per-call price. | [optional] |
| **operations** | [**Array&lt;XApiOperation&gt;**](XApiOperation.md) | Flat list of every X operation Zernio can perform, with its rate. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::XApiPricing.new(
  currency: USD,
  markup: 0%,
  source: https://developer.x.com/#pricing,
  last_verified: null,
  tiers: null,
  operations: null
)
```

