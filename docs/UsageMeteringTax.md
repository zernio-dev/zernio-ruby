# Zernio::UsageMeteringTax

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tax_usd** | **Float** | Estimated tax in USD, added on top of &#x60;totals.total&#x60;. | [optional] |
| **rate_percent** | **Float** | Combined rate percentage, e.g. 21. | [optional] |
| **jurisdiction_label** | **String** | Human jurisdiction label, e.g. \&quot;ES VAT\&quot; or \&quot;WA sales tax\&quot;. | [optional] |
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

