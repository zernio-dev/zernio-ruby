# Zernio::SendConversionsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | SocialAccount ID (metaads, googleads, linkedinads, tiktokads, or openaiads). |  |
| **destination_id** | **String** | Platform destination identifier. For Meta, the pixel/dataset ID. For Google, the conversion action resource name. For LinkedIn, the conversion rule ID or full &#x60;urn:lla:llaPartnerConversion:{id}&#x60; URN. For OpenAI Ads, the pixel wire id.  |  |
| **events** | [**Array&lt;ConversionEvent&gt;**](ConversionEvent.md) |  |  |
| **test_code** | **String** | Meta &#x60;test_event_code&#x60; passthrough. Ignored by Google, LinkedIn, and OpenAI Ads. | [optional] |
| **consent** | [**SendConversionsRequestConsent**](SendConversionsRequestConsent.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendConversionsRequest.new(
  account_id: null,
  destination_id: null,
  events: null,
  test_code: null,
  consent: null
)
```

