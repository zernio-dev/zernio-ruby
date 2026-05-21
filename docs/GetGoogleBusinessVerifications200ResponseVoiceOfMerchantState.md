# Zernio::GetGoogleBusinessVerifications200ResponseVoiceOfMerchantState

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **has_voice_of_merchant** | **Boolean** | True when the listing is verified and published (eligible to surface reviews | [optional] |
| **has_business_authority** | **Boolean** | True when the authenticated user has owner/manager authority over the listing. | [optional] |
| **verify** | [**GetGoogleBusinessVerifications200ResponseVoiceOfMerchantStateVerify**](GetGoogleBusinessVerifications200ResponseVoiceOfMerchantStateVerify.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetGoogleBusinessVerifications200ResponseVoiceOfMerchantState.new(
  has_voice_of_merchant: null,
  has_business_authority: null,
  verify: null
)
```

