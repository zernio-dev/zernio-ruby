# Zernio::PurchaseWhatsAppPhoneNumberRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | Profile to associate the number with |  |
| **country** | **String** | ISO 3166-1 alpha-2 country for the number (default US). International numbers require usage-based billing. Tier 3/4 countries return 202 { status: \&quot;kyc_required\&quot;, kycUrl }. The customer must complete KYC at that URL before the number is ordered. See GET /v1/whatsapp/phone-numbers/countries.  | [optional][default to &#39;US&#39;] |
| **phone_number** | **String** | One exact number to buy, in E.164, taken from GET /v1/phone-numbers/available. Fails with 409 code PHONE_NUMBER_UNAVAILABLE when it is no longer available.  | [optional] |
| **purchase_intent_id** | **String** | Optional idempotency key. Send the same value when retrying a purchase: if a number was already bought under this key, the API returns { status: \&quot;already_purchased\&quot;, numberId, phoneNumber } instead of provisioning a second number. Generate a fresh key for each genuinely new purchase.  | [optional] |
| **allow_multiple** | **Boolean** | Any second purchase within 10 minutes of a previous one is rejected with 409 code PURCHASE_VELOCITY as duplicate protection. Pass true to confirm the additional purchase is intentional (e.g. bulk provisioning).  | [optional][default to false] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PurchaseWhatsAppPhoneNumberRequest.new(
  profile_id: null,
  country: null,
  phone_number: null,
  purchase_intent_id: null,
  allow_multiple: null
)
```

