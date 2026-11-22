# Zernio::CreateCommerceDraftOrderRequestShippingAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **company** | **String** |  | [optional] |
| **phone** | **String** |  | [optional] |
| **line1** | **String** |  | [optional] |
| **line2** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **region** | **String** | State or province code, e.g. CA. | [optional] |
| **postal_code** | **String** |  | [optional] |
| **country_code** | **String** | ISO 3166 code, e.g. US. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateCommerceDraftOrderRequestShippingAddress.new(
  first_name: null,
  last_name: null,
  company: null,
  phone: null,
  line1: null,
  line2: null,
  city: null,
  region: null,
  postal_code: null,
  country_code: null
)
```

