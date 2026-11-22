# Zernio::PurchasePhoneNumber202Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **country** | **String** |  | [optional] |
| **number_type** | **String** | The type that will be ordered after KYC approval. | [optional] |
| **purchase_intent_id** | **String** | Echo of the purchaseIntentId you sent. Pass it to the KYC submission (or the KYC share link) so the resulting numbers and their whatsapp.number.* webhooks carry it. | [optional] |
| **kyc_url** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PurchasePhoneNumber202Response.new(
  status: null,
  country: null,
  number_type: null,
  purchase_intent_id: null,
  kyc_url: null
)
```

