# Zernio::CommerceCustomer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **phone** | **String** |  | [optional] |
| **orders_count** | **Integer** |  | [optional] |
| **total_spent** | [**CommerceMoney**](CommerceMoney.md) |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **note** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **default_address** | [**CommerceAddress**](CommerceAddress.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommerceCustomer.new(
  id: null,
  account_id: null,
  platform: null,
  first_name: null,
  last_name: null,
  email: null,
  phone: null,
  orders_count: null,
  total_spent: null,
  tags: null,
  note: null,
  created_at: null,
  updated_at: null,
  default_address: null
)
```

