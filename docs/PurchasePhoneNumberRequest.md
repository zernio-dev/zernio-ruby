# Zernio::PurchasePhoneNumberRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | Profile to associate the number with |  |
| **country** | **String** | ISO 3166-1 alpha-2 country for the number (default US). International numbers require usage-based billing. Tier 3/4 countries return 202 { status: \&quot;kyc_required\&quot;, kycUrl } — the customer must complete KYC at that URL before the number is ordered. See GET /v1/phone-numbers/countries.  | [optional][default to &#39;US&#39;] |
| **connect_whatsapp** | **Boolean** | A phone number is the unit; WhatsApp is one optional feature. Pass false to buy a STANDALONE number (Calls/SMS only): provisioning skips the Meta pre-verify/OTP steps and the number activates immediately. Omitted defaults to the WhatsApp provisioning path. WhatsApp can be connected to a standalone number later from the connect flow.  | [optional][default to true] |
| **wants_sms** | **Boolean** | SMS capability is per-number, not per-country. Pass true to provision from the SMS-capable inventory pool so the number can actually text (see also GET /v1/phone-numbers/available with sms&#x3D;true, and smsAvailable on GET /v1/phone-numbers/countries).  | [optional][default to false] |
| **purchase_intent_id** | **String** | Optional idempotency key. Send the same value when retrying a purchase: if a number was already bought under this key, the API returns { status: \&quot;already_purchased\&quot;, numberId, phoneNumber } instead of provisioning a second number. Generate a fresh key for each genuinely new purchase.  | [optional] |
| **allow_multiple** | **Boolean** | Any second purchase within 10 minutes of a previous one is rejected with 409 code PURCHASE_VELOCITY as duplicate protection. Pass true to confirm the additional purchase is intentional (e.g. bulk provisioning).  | [optional][default to false] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PurchasePhoneNumberRequest.new(
  profile_id: null,
  country: null,
  connect_whatsapp: null,
  wants_sms: null,
  purchase_intent_id: null,
  allow_multiple: null
)
```

