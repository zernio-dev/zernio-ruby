# Zernio::BrandedCallingIdentityNumber

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number_id** | **String** |  | [optional] |
| **phone_number** | **String** |  | [optional] |
| **status** | **String** | verified &#x3D; the identity shows on calls from this number. permanently_rejected cannot be attached again anywhere. | [optional] |
| **rejection_reason** | [**BrandedCallingIdentityNumberRejectionReason**](BrandedCallingIdentityNumberRejectionReason.md) |  | [optional] |
| **verified_at** | **Time** |  | [optional] |
| **added_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BrandedCallingIdentityNumber.new(
  phone_number_id: null,
  phone_number: null,
  status: null,
  rejection_reason: null,
  verified_at: null,
  added_at: null
)
```

