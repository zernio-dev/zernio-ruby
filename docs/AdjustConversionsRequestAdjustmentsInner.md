# Zernio::AdjustConversionsRequestAdjustmentsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **adjustment_type** | **String** |  |  |
| **adjustment_time** | **Float** | When the adjustment occurred, unix seconds. |  |
| **order_id** | **String** | Transaction ID of the original conversion (the &#x60;eventId&#x60; you sent). Recommended; required for ENHANCEMENT. | [optional] |
| **gclid** | **String** | Alternative key — the original click ID. Pair with &#x60;conversionTime&#x60;. Not valid for ENHANCEMENT. | [optional] |
| **conversion_time** | **Float** | The original conversion&#39;s time, unix seconds. Required when identifying by &#x60;gclid&#x60;. | [optional] |
| **restatement_value** | **Float** | RESTATEMENT only — the corrected TOTAL conversion value. | [optional] |
| **currency** | **String** | RESTATEMENT only — ISO 4217 currency for &#x60;restatementValue&#x60;. | [optional] |
| **user** | [**AdjustConversionsRequestAdjustmentsInnerUser**](AdjustConversionsRequestAdjustmentsInnerUser.md) |  | [optional] |
| **user_agent** | **String** | ENHANCEMENT only — the original conversion&#39;s user agent (improves match quality). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdjustConversionsRequestAdjustmentsInner.new(
  adjustment_type: null,
  adjustment_time: null,
  order_id: null,
  gclid: null,
  conversion_time: null,
  restatement_value: null,
  currency: null,
  user: null,
  user_agent: null
)
```

