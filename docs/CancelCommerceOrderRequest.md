# Zernio::CancelCommerceOrderRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Connected store SocialAccount id. |  |
| **reason** | **String** |  |  |
| **refund** | **Boolean** | Refund the payments to the original methods. Authorized payments are voided either way. | [optional][default to true] |
| **restock** | **Boolean** |  | [optional][default to true] |
| **notify_customer** | **Boolean** |  | [optional][default to false] |
| **staff_note** | **String** | Visible to staff only. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CancelCommerceOrderRequest.new(
  account_id: null,
  reason: null,
  refund: null,
  restock: null,
  notify_customer: null,
  staff_note: null
)
```

