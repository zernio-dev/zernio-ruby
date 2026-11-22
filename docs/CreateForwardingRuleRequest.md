# Zernio::CreateForwardingRuleRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |
| **account_id** | **String** | Connected ads account ID that owns the destination. |  |
| **destination_id** | **String** | The platform destination: a pixel, a conversion action, a conversion rule, or a GA4 web stream measurement id (&#x60;G-…&#x60;). |  |
| **event_names** | **Array&lt;String&gt;** |  | [optional] |
| **sources** | **Array&lt;String&gt;** | Forward only events from these sources, such as only &#x60;web&#x60; for a tracked website. Leave it out to forward events from every source. | [optional] |
| **api_secret** | **String** | Google Analytics streams only: the stream&#39;s Measurement Protocol API secret (GA4 Admin › Data streams). Optional when the connection has edit access, since Zernio then creates it. Checked against Google&#39;s validation server, stored encrypted, never returned. Change it with &#x60;PATCH /v1/events/forwarding-rules/{ruleId}&#x60;. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateForwardingRuleRequest.new(
  profile_id: null,
  account_id: null,
  destination_id: null,
  event_names: null,
  sources: null,
  api_secret: null
)
```

