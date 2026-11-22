# Zernio::CreatorPortalReferral

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | The creator&#39;s discount code. Null while the store has not created it yet, or on a link-only campaign. |  |
| **discount_percent** | **Integer** | What the code takes off an order. |  |
| **tracking_url** | **String** | The landing page with the UTM parameters that credit the creator. Null on a code-only campaign. |  |
| **orders** | [**Array&lt;CreatorPortalReferralOrdersInner&gt;**](CreatorPortalReferralOrdersInner.md) | The latest 50 credited orders. |  |
| **totals** | [**CreatorPortalReferralTotals**](CreatorPortalReferralTotals.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatorPortalReferral.new(
  code: null,
  discount_percent: null,
  tracking_url: null,
  orders: null,
  totals: null
)
```

