# Zernio::SendConversionsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | SocialAccount ID (metaads or googleads). |  |
| **destination_id** | **String** | Platform destination identifier. For Meta, the pixel/dataset ID. For Google, the conversion action resource name.  |  |
| **events** | [**Array&lt;ConversionEvent&gt;**](ConversionEvent.md) |  |  |
| **test_code** | **String** | Meta &#x60;test_event_code&#x60; passthrough. Ignored by Google. | [optional] |
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

