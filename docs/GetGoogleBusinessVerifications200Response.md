# Zernio::GetGoogleBusinessVerifications200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **location_id** | **String** |  | [optional] |
| **voice_of_merchant_state** | [**GetGoogleBusinessVerifications200ResponseVoiceOfMerchantState**](GetGoogleBusinessVerifications200ResponseVoiceOfMerchantState.md) |  | [optional] |
| **verifications** | [**Array&lt;GetGoogleBusinessVerifications200ResponseVerificationsInner&gt;**](GetGoogleBusinessVerifications200ResponseVerificationsInner.md) | Verification history, newest first. Empty when none exist. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetGoogleBusinessVerifications200Response.new(
  success: null,
  account_id: null,
  location_id: null,
  voice_of_merchant_state: null,
  verifications: null
)
```

