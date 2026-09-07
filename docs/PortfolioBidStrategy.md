# Zernio::PortfolioBidStrategy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Numeric bid strategy id; pass as portfolioBidStrategyId or in the {strategyId} path. | [optional] |
| **name** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **status** | **String** | ENABLED or REMOVED. | [optional] |
| **campaign_count** | **Integer** | Number of campaigns currently attached. | [optional] |
| **clicks** | **Integer** |  | [optional] |
| **cost** | **Float** | Cost in the account&#39;s currency units (converted from micros). | [optional] |
| **cost_per_conversion** | **Float** | Cost per conversion in the account&#39;s currency units. | [optional] |
| **impressions** | **Integer** |  | [optional] |
| **average_cpc** | **Float** | Average CPC in the account&#39;s currency units. | [optional] |
| **conversions** | **Float** |  | [optional] |
| **target_cpa** | **Float** | Current target, in the account&#39;s currency units. Null for a ROAS-family type (TARGET_ROAS, MAXIMIZE_CONVERSION_VALUE), or a Maximize type with no target set. Pre-fills the edit form&#39;s target field. | [optional] |
| **target_roas** | **Float** | Current target as a decimal multiplier (2.0 &#x3D; 2.0x). Null for a CPA-family type (TARGET_CPA, MAXIMIZE_CONVERSIONS), or a Maximize type with no target set. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PortfolioBidStrategy.new(
  id: null,
  name: null,
  type: null,
  status: null,
  campaign_count: null,
  clicks: null,
  cost: null,
  cost_per_conversion: null,
  impressions: null,
  average_cpc: null,
  conversions: null,
  target_cpa: null,
  target_roas: null
)
```

