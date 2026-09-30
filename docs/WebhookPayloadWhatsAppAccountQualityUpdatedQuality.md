# Zernio::WebhookPayloadWhatsAppAccountQualityUpdatedQuality

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source** | **String** | The Meta webhook field that reported the change. |  |
| **meta_event** | **String** | Meta&#39;s &#x60;event&#x60; on phone_number_quality_update (for example FLAGGED, UNFLAGGED, UPGRADE, DOWNGRADE, ONBOARDING, THROUGHPUT_UPGRADE). Null on business_capability_update. |  |
| **quality_rating** | **String** | Current quality rating (GREEN, YELLOW, RED, UNKNOWN), read live from Meta on FLAGGED/UNFLAGGED. |  |
| **previous_quality_rating** | **String** |  |  |
| **messaging_limit_tier** | **String** | Current messaging limit tier, for example TIER_250, TIER_2K, TIER_10K, TIER_100K, TIER_UNLIMITED. |  |
| **previous_messaging_limit_tier** | **String** |  |  |
| **display_phone_number** | **String** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadWhatsAppAccountQualityUpdatedQuality.new(
  source: null,
  meta_event: null,
  quality_rating: null,
  previous_quality_rating: null,
  messaging_limit_tier: null,
  previous_messaging_limit_tier: null,
  display_phone_number: null
)
```

