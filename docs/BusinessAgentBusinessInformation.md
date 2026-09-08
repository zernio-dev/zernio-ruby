# Zernio::BusinessAgentBusinessInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_method** | **String** |  | [optional] |
| **return_policy** | **String** |  | [optional] |
| **purchase_info** | **String** |  | [optional] |
| **delivery_and_shipping** | **String** |  | [optional] |
| **business_description** | **String** |  | [optional] |
| **contact_info** | [**BusinessAgentBusinessInformationContactInfo**](BusinessAgentBusinessInformationContactInfo.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BusinessAgentBusinessInformation.new(
  payment_method: null,
  return_policy: null,
  purchase_info: null,
  delivery_and_shipping: null,
  business_description: null,
  contact_info: null
)
```

