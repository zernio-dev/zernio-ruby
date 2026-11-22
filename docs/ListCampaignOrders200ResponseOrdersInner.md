# Zernio::ListCampaignOrders200ResponseOrdersInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **platform_order_id** | **String** | The order id on the store, as in &#x60;GET /v1/commerce/orders/{orderId}&#x60;. |  |
| **order_number** | **String** |  |  |
| **status** | **String** |  |  |
| **participant_id** | **String** |  |  |
| **creator_name** | **String** |  |  |
| **creator_avatar_url** | **String** | The creator&#39;s profile picture. Same source as a participant&#39;s &#x60;creator.avatarUrl&#x60;. |  |
| **matched_by** | **String** |  |  |
| **discount_code** | **String** |  |  |
| **currency** | **String** |  |  |
| **sales_cents** | **Integer** |  |  |
| **refunded_cents** | **Integer** |  |  |
| **commission_cents** | **Integer** | Commission the order holds now, net of refunds. |  |
| **order_created_at** | **Time** |  |  |
| **approved_at** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListCampaignOrders200ResponseOrdersInner.new(
  id: null,
  platform_order_id: null,
  order_number: null,
  status: null,
  participant_id: null,
  creator_name: null,
  creator_avatar_url: null,
  matched_by: null,
  discount_code: null,
  currency: null,
  sales_cents: null,
  refunded_cents: null,
  commission_cents: null,
  order_created_at: null,
  approved_at: null
)
```

