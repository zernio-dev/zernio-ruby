# Zernio::CommerceDiscount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **title** | **String** |  | [optional] |
| **method** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **codes** | **Array&lt;String&gt;** | The first 10 codes; codeCount has the total. | [optional] |
| **code_count** | **Integer** |  | [optional] |
| **value** | [**CommerceDiscountValue**](CommerceDiscountValue.md) |  | [optional] |
| **applies_to** | [**CommerceDiscountAppliesTo**](CommerceDiscountAppliesTo.md) |  | [optional] |
| **minimum** | [**CommerceDiscountMinimum**](CommerceDiscountMinimum.md) |  | [optional] |
| **usage_limit** | **Integer** |  | [optional] |
| **once_per_customer** | **Boolean** |  | [optional] |
| **usage_count** | **Integer** |  | [optional] |
| **starts_at** | **Time** |  | [optional] |
| **ends_at** | **Time** |  | [optional] |
| **status** | **String** |  | [optional] |
| **platform_status** | **String** |  | [optional] |
| **summary** | **String** |  | [optional] |
| **platform_data** | **Hash&lt;String, Object&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommerceDiscount.new(
  id: null,
  account_id: null,
  platform: null,
  title: null,
  method: null,
  type: null,
  codes: null,
  code_count: null,
  value: null,
  applies_to: null,
  minimum: null,
  usage_limit: null,
  once_per_customer: null,
  usage_count: null,
  starts_at: null,
  ends_at: null,
  status: null,
  platform_status: null,
  summary: null,
  platform_data: null
)
```

