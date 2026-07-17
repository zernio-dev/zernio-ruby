# Zernio::PurchasePhoneNumber202Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **country** | **String** |  | [optional] |
| **number_type** | **String** | The type that will be ordered after KYC approval. | [optional] |
| **kyc_url** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PurchasePhoneNumber202Response.new(
  status: null,
  country: null,
  number_type: null,
  kyc_url: null
)
```

