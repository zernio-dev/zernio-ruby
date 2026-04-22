# Zernio::GoogleBusinessPlatformData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location_id** | **String** | Target GBP location ID (e.g. \&quot;locations/123456789\&quot;). If omitted, uses the default location. Use GET /v1/accounts/{id}/gmb-locations to list locations. | [optional] |
| **language_code** | **String** | BCP 47 language code (e.g. \&quot;en\&quot;, \&quot;de\&quot;, \&quot;es\&quot;). Auto-detected if omitted. Set explicitly for short or mixed-language posts. | [optional] |
| **topic_type** | **String** | Post type. STANDARD is a regular update. EVENT requires the event object. OFFER requires the offer object. Defaults to STANDARD if omitted. | [optional][default to &#39;STANDARD&#39;] |
| **call_to_action** | [**GoogleBusinessPlatformDataCallToAction**](GoogleBusinessPlatformDataCallToAction.md) |  | [optional] |
| **event** | [**GoogleBusinessPlatformDataEvent**](GoogleBusinessPlatformDataEvent.md) |  | [optional] |
| **offer** | [**GoogleBusinessPlatformDataOffer**](GoogleBusinessPlatformDataOffer.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GoogleBusinessPlatformData.new(
  location_id: null,
  language_code: de,
  topic_type: null,
  call_to_action: null,
  event: null,
  offer: null
)
```

