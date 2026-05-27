# Zernio::GetWhatsAppNumberInfo200ResponsePhone

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_phone_number** | **String** |  | [optional] |
| **verified_name** | **String** |  | [optional] |
| **name_status** | **String** | APPROVED, AVAILABLE_WITHOUT_REVIEW, PENDING_REVIEW, DECLINED, EXPIRED, NONE | [optional] |
| **quality_rating** | **String** | GREEN, YELLOW, RED, UNKNOWN | [optional] |
| **messaging_limit_tier** | **String** | e.g. TIER_250, TIER_1K, TIER_UNLIMITED | [optional] |
| **throughput** | [**GetWhatsAppNumberInfo200ResponsePhoneThroughput**](GetWhatsAppNumberInfo200ResponsePhoneThroughput.md) |  | [optional] |
| **status** | **String** | e.g. CONNECTED | [optional] |
| **is_official_business_account** | **Boolean** |  | [optional] |
| **platform_type** | **String** | e.g. CLOUD_API | [optional] |
| **health_status** | **Object** | Meta&#39;s can_send_message health object (messaging + calling signals) | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetWhatsAppNumberInfo200ResponsePhone.new(
  display_phone_number: null,
  verified_name: null,
  name_status: null,
  quality_rating: null,
  messaging_limit_tier: null,
  throughput: null,
  status: null,
  is_official_business_account: null,
  platform_type: null,
  health_status: null
)
```

