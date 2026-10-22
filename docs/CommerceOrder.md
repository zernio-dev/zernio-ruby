# Zernio::CommerceOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **number** | **String** | The number the merchant and buyer see. | [optional] |
| **status** | [**CommerceOrderStatus**](CommerceOrderStatus.md) |  | [optional] |
| **platform_status** | **String** | Shopify fulfilment status (e.g. UNFULFILLED) or WooCommerce order status (e.g. processing). | [optional] |
| **payment_status** | **String** |  | [optional] |
| **platform_payment_status** | **String** | Shopify financial status. Null on WooCommerce, where payment is read from the order status. | [optional] |
| **currency** | **String** |  | [optional] |
| **taxes_included** | **Boolean** | Whether line item and shipping amounts include tax. Always false on WooCommerce, whose API returns amounts before tax whatever the store displays (platformData.pricesIncludeTax). | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **paid_at** | **Time** | WooCommerce only; null on Shopify. | [optional] |
| **cancelled_at** | **Time** | Shopify only; null on WooCommerce. | [optional] |
| **cancel_reason** | **String** |  | [optional] |
| **subtotal** | [**CommerceMoney**](CommerceMoney.md) | Line items before order discounts and shipping. | [optional] |
| **discount_total** | [**CommerceMoney**](CommerceMoney.md) |  | [optional] |
| **shipping_total** | [**CommerceMoney**](CommerceMoney.md) |  | [optional] |
| **tax_total** | [**CommerceMoney**](CommerceMoney.md) |  | [optional] |
| **total** | [**CommerceMoney**](CommerceMoney.md) |  | [optional] |
| **refunded_total** | [**CommerceMoney**](CommerceMoney.md) |  | [optional] |
| **discount_codes** | **Array&lt;String&gt;** |  | [optional] |
| **payment_methods** | **Array&lt;String&gt;** |  | [optional] |
| **customer** | [**CommerceOrderCustomer**](CommerceOrderCustomer.md) |  | [optional] |
| **billing_address** | [**CommerceAddress**](CommerceAddress.md) |  | [optional] |
| **shipping_address** | [**CommerceAddress**](CommerceAddress.md) |  | [optional] |
| **buyer_note** | **String** |  | [optional] |
| **attribution** | [**CommerceOrderAttribution**](CommerceOrderAttribution.md) |  | [optional] |
| **line_items** | [**Array&lt;CommerceOrderLineItemsInner&gt;**](CommerceOrderLineItemsInner.md) |  | [optional] |
| **shipping_lines** | [**Array&lt;CommerceOrderChargeLine&gt;**](CommerceOrderChargeLine.md) |  | [optional] |
| **fee_lines** | [**Array&lt;CommerceOrderChargeLine&gt;**](CommerceOrderChargeLine.md) | WooCommerce fees. Always empty on Shopify. | [optional] |
| **tax_lines** | [**Array&lt;CommerceTaxLine&gt;**](CommerceTaxLine.md) | Order tax by rate, line items and shipping together. | [optional] |
| **refunds** | [**Array&lt;CommerceOrderRefundsInner&gt;**](CommerceOrderRefundsInner.md) |  | [optional] |
| **fulfillments** | [**Array&lt;CommerceOrderFulfillmentsInner&gt;**](CommerceOrderFulfillmentsInner.md) |  | [optional] |
| **platform_data** | **Hash&lt;String, Object&gt;** | Platform-only fields. Null when the platform has none. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommerceOrder.new(
  id: null,
  account_id: null,
  platform: null,
  number: #1001,
  status: null,
  platform_status: null,
  payment_status: null,
  platform_payment_status: null,
  currency: EUR,
  taxes_included: null,
  created_at: null,
  updated_at: null,
  paid_at: null,
  cancelled_at: null,
  cancel_reason: null,
  subtotal: null,
  discount_total: null,
  shipping_total: null,
  tax_total: null,
  total: null,
  refunded_total: null,
  discount_codes: null,
  payment_methods: null,
  customer: null,
  billing_address: null,
  shipping_address: null,
  buyer_note: null,
  attribution: null,
  line_items: null,
  shipping_lines: null,
  fee_lines: null,
  tax_lines: null,
  refunds: null,
  fulfillments: null,
  platform_data: null
)
```

