# Zernio::GetWhatsAppNumberInfo200ResponseWaba

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **business_verification_status** | **String** | verified, not_verified, pending, ... | [optional] |
| **timezone_id** | **String** | Meta integer timezone-enum id | [optional] |
| **currency** | **String** | ISO 4217 currency of the WABA&#39;s payment method (for example USD or BRL). Null when Meta does not return it. | [optional] |
| **health_status** | **Object** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetWhatsAppNumberInfo200ResponseWaba.new(
  name: null,
  business_verification_status: null,
  timezone_id: null,
  currency: null,
  health_status: null
)
```

