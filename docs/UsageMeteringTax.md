# Zernio::UsageMeteringTax

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tax_usd** | **Float** | Estimated tax in USD | [optional] |
| **rate_percent** | **Float** | Combined rate percentage | [optional] |
| **jurisdiction_label** | **String** | Human jurisdiction label | [optional] |
| **reverse_charge** | **Boolean** | True for EU/UK B2B reverse charge (0 tax added by design). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UsageMeteringTax.new(
  tax_usd: null,
  rate_percent: null,
  jurisdiction_label: null,
  reverse_charge: null
)
```

