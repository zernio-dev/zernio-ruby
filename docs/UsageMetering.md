# Zernio::UsageMetering

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **supported** | **Boolean** | False for legacy Stripe accounts (no Metronome invoice to split); &#x60;days&#x60; and &#x60;totals&#x60; are then empty/zero. | [optional] |
| **granularity** | **String** |  | [optional] |
| **days** | [**Array&lt;UsageMeteringDaysInner&gt;**](UsageMeteringDaysInner.md) | One row per bucket. Empty when &#x60;granularity&#x3D;total&#x60;. &#x60;date&#x60; is a UTC date (month buckets use the 1st). | [optional] |
| **totals** | [**UsageMeteringTotals**](UsageMeteringTotals.md) |  | [optional] |
| **line_items** | [**Array&lt;UsageMeteringLineItemsInner&gt;**](UsageMeteringLineItemsInner.md) | Per-invoice-line-item rows (largest spend first) for a detailed breakdown. | [optional] |
| **peaks** | [**UsageMeteringPeaks**](UsageMeteringPeaks.md) |  | [optional] |
| **call_usage** | [**UsageMeteringCallUsage**](UsageMeteringCallUsage.md) |  | [optional] |
| **period** | [**UsageMeteringPeriod**](UsageMeteringPeriod.md) |  | [optional] |
| **tax** | [**UsageMeteringTax**](UsageMeteringTax.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UsageMetering.new(
  supported: null,
  granularity: null,
  days: null,
  totals: null,
  line_items: null,
  peaks: null,
  call_usage: null,
  period: null,
  tax: null
)
```

