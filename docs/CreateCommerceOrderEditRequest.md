# Zernio::CreateCommerceOrderEditRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Connected store SocialAccount id. |  |
| **add** | [**Array&lt;CreateCommerceOrderEditRequestAddInner&gt;**](CreateCommerceOrderEditRequestAddInner.md) |  | [optional] |
| **quantities** | [**Array&lt;CreateCommerceOrderEditRequestQuantitiesInner&gt;**](CreateCommerceOrderEditRequestQuantitiesInner.md) |  | [optional] |
| **notify_customer** | **Boolean** |  | [optional][default to false] |
| **staff_note** | **String** |  | [optional] |
| **validate_only** | **Boolean** | Return the edited totals without changing the order. | [optional][default to false] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateCommerceOrderEditRequest.new(
  account_id: null,
  add: null,
  quantities: null,
  notify_customer: null,
  staff_note: null,
  validate_only: null
)
```

