# Zernio::SendConversions200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  | [optional] |
| **events_received** | **Integer** | Events accepted by the platform. | [optional] |
| **events_failed** | **Integer** | Events rejected (see failures). | [optional] |
| **failures** | [**Array&lt;SendConversions200ResponseFailuresInner&gt;**](SendConversions200ResponseFailuresInner.md) |  | [optional] |
| **trace_id** | **String** | Platform trace ID for debugging. fbtrace_id for Meta, requestId for Google. Absent for LinkedIn (LinkedIn&#39;s conversionEvents endpoint does not surface a trace ID) and OpenAI Ads (no trace ID surfaced).  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendConversions200Response.new(
  platform: null,
  events_received: null,
  events_failed: null,
  failures: null,
  trace_id: null
)
```

