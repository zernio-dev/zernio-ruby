# Zernio::XApiPricingTiersInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tier** | **String** | Tier key derived from price (e.g. &#x60;x_api_005&#x60; for $0.005, &#x60;x_api_200&#x60; for $0.200). The first three keys map to the legacy &#x60;xApiCalls&#x60; aggregate; new tiers (e.g. &#x60;x_api_200&#x60; for the URL tier added April 2026) are surfaced here but not in the legacy shape.  | [optional] |
| **price_per_call_usd** | **Float** |  | [optional] |
| **operation_count** | **Integer** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::XApiPricingTiersInner.new(
  tier: x_api_005,
  price_per_call_usd: 0.005,
  operation_count: 13
)
```

