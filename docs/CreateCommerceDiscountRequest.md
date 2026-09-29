# Zernio::CreateCommerceDiscountRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **title** | **String** |  |  |
| **method** | **String** |  |  |
| **type** | **String** |  |  |
| **code** | **String** | Required for method code. | [optional] |
| **percentage** | **Float** | For type percentage, e.g. 15 for 15%. | [optional] |
| **amount** | **String** | For type fixed_amount, a decimal in the store currency. | [optional] |
| **applies_on_each_item** | **Boolean** | fixed_amount only: take the amount off each item instead of once per order. | [optional] |
| **minimum_subtotal** | **String** | Minimum order subtotal, a decimal in the store currency. | [optional] |
| **minimum_quantity** | **Integer** |  | [optional] |
| **usage_limit** | **Integer** | Code discounts only: total uses allowed. | [optional] |
| **once_per_customer** | **Boolean** | Code discounts only. | [optional] |
| **starts_at** | **Time** | Defaults to now. | [optional] |
| **ends_at** | **Time** |  | [optional] |
| **product_ids** | **Array&lt;String&gt;** |  | [optional] |
| **collection_ids** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateCommerceDiscountRequest.new(
  account_id: null,
  title: null,
  method: null,
  type: null,
  code: null,
  percentage: null,
  amount: null,
  applies_on_each_item: null,
  minimum_subtotal: null,
  minimum_quantity: null,
  usage_limit: null,
  once_per_customer: null,
  starts_at: null,
  ends_at: null,
  product_ids: null,
  collection_ids: null
)
```

