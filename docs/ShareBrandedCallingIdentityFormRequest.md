# Zernio::ShareBrandedCallingIdentityFormRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enterprise_id** | **String** | A registered business the identity belongs to. | [optional] |
| **identity_id** | **String** | An identity in review to complete. Not with enterpriseId. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ShareBrandedCallingIdentityFormRequest.new(
  enterprise_id: null,
  identity_id: null
)
```

