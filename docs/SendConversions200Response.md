# Zernio::SendConversions200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  | [optional] |
| **events_received** | **Integer** | Events accepted by the platform. | [optional] |
| **events_failed** | **Integer** | Events rejected (see failures). | [optional] |
| **events_dropped** | **Integer** | Events not sent because the visitor did not consent (see &#x60;consent&#x60;). | [optional] |
| **drops** | [**Array&lt;ConsentDrop&gt;**](ConsentDrop.md) |  | [optional] |
| **failures** | [**Array&lt;SendConversions200ResponseFailuresInner&gt;**](SendConversions200ResponseFailuresInner.md) |  | [optional] |
| **trace_id** | **String** | Platform trace ID for debugging. fbtrace_id for Meta, requestId for Google, request_id for TikTok. Absent for LinkedIn (LinkedIn&#39;s conversionEvents endpoint does not surface a trace ID), OpenAI Ads and Reddit (no trace ID surfaced).  | [optional] |
| **platform_messages** | **Array&lt;String&gt;** | Meta only. Meta&#39;s &#x60;messages&#x60; (warnings about the events it accepted), each distinct one once, at most 20. Absent when Meta sent none. | [optional] |
| **test_code** | **String** | The test code sent to the platform, as received (from &#x60;testCode&#x60; or &#x60;test_event_code&#x60;). &#x60;null&#x60; when the request carried none, so the events were sent as production events. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendConversions200Response.new(
  platform: null,
  events_received: null,
  events_failed: null,
  events_dropped: null,
  drops: null,
  failures: null,
  trace_id: null,
  platform_messages: null,
  test_code: null
)
```

