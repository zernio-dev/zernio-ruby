# Zernio::SendInboxMessageRequestInteractiveActionOneOf2Parameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_text** | **String** | Button label. Defaults to \&quot;Call Now\&quot;. | [optional] |
| **ttl_minutes** | **Integer** | How long the button stays tappable. Defaults to 10080 (7 days). | [optional] |
| **payload** | **String** | Arbitrary string echoed back as &#x60;cta_payload&#x60; on the &#x60;calls&#x60; webhook (connect/terminate) for attribution. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendInboxMessageRequestInteractiveActionOneOf2Parameters.new(
  display_text: null,
  ttl_minutes: null,
  payload: null
)
```

