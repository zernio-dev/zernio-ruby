# Zernio::ListWhatsAppPhoneNumbers200ResponsePhoneNumbersInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Phone Number ID (Meta) | [optional] |
| **display_phone_number** | **String** | E.164-formatted display number | [optional] |
| **verified_name** | **String** | Meta-verified business name | [optional] |
| **quality_rating** | **String** | GREEN, YELLOW, RED, or UNKNOWN | [optional] |
| **name_status** | **String** | APPROVED, PENDING_REVIEW, DECLINED, or NONE | [optional] |
| **messaging_limit_tier** | **String** | TIER_250, TIER_1K, TIER_10K, TIER_100K, or TIER_UNLIMITED | [optional] |
| **waba_id** | **String** | WhatsApp Business Account ID (Zernio enrichment) | [optional] |
| **waba_name** | **String** | WABA display name (Zernio enrichment) | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListWhatsAppPhoneNumbers200ResponsePhoneNumbersInner.new(
  id: null,
  display_phone_number: null,
  verified_name: null,
  quality_rating: null,
  name_status: null,
  messaging_limit_tier: null,
  waba_id: null,
  waba_name: null
)
```

