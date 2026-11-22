# Zernio::CreatorPortalReferralOrdersInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **number** | **String** |  |  |
| **placed_at** | **Time** |  |  |
| **matched_by** | **String** |  |  |
| **sales_cents** | **Integer** |  |  |
| **refunded_cents** | **Integer** |  |  |
| **commission_cents** | **Integer** |  |  |
| **status** | **String** |  |  |
| **confirms_at** | **Time** | Order date plus the campaign hold, when the commission is approved. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatorPortalReferralOrdersInner.new(
  id: null,
  number: null,
  placed_at: null,
  matched_by: null,
  sales_cents: null,
  refunded_cents: null,
  commission_cents: null,
  status: null,
  confirms_at: null
)
```

