# Zernio::CommerceDraftOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **invoice_url** | **String** | The checkout link the buyer pays through. | [optional] |
| **invoice_sent_at** | **Time** |  | [optional] |
| **email** | **String** |  | [optional] |
| **customer_id** | **String** |  | [optional] |
| **note** | **String** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **currency** | **String** | The currency the buyer pays in; every amount uses it. | [optional] |
| **subtotal** | [**CommerceMoney**](CommerceMoney.md) |  | [optional] |
| **discount_total** | [**CommerceMoney**](CommerceMoney.md) |  | [optional] |
| **shipping_total** | [**CommerceMoney**](CommerceMoney.md) |  | [optional] |
| **tax_total** | [**CommerceMoney**](CommerceMoney.md) |  | [optional] |
| **total** | [**CommerceMoney**](CommerceMoney.md) |  | [optional] |
| **line_items** | [**Array&lt;CommerceDraftOrderLineItemsInner&gt;**](CommerceDraftOrderLineItemsInner.md) |  | [optional] |
| **shipping_address** | [**CommerceAddress**](CommerceAddress.md) |  | [optional] |
| **order_id** | **String** | The order it became once completed. | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **completed_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommerceDraftOrder.new(
  id: null,
  account_id: null,
  platform: null,
  name: #D12,
  status: null,
  invoice_url: null,
  invoice_sent_at: null,
  email: null,
  customer_id: null,
  note: null,
  tags: null,
  currency: null,
  subtotal: null,
  discount_total: null,
  shipping_total: null,
  tax_total: null,
  total: null,
  line_items: null,
  shipping_address: null,
  order_id: null,
  created_at: null,
  updated_at: null,
  completed_at: null
)
```

