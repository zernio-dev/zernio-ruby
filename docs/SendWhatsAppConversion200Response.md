# Zernio::SendWhatsAppConversion200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  | [optional] |
| **events_received** | **Integer** | Events accepted by Meta. | [optional] |
| **events_failed** | **Integer** | Events rejected by Meta (see failures). | [optional] |
| **failures** | [**Array&lt;SendConversions200ResponseFailuresInner&gt;**](SendConversions200ResponseFailuresInner.md) | Per-event failure detail. Empty when all events were accepted.  | [optional] |
| **trace_id** | **String** | Meta &#x60;fbtrace_id&#x60; for debugging. Surface in support tickets.  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendWhatsAppConversion200Response.new(
  platform: null,
  events_received: null,
  events_failed: null,
  failures: null,
  trace_id: null
)
```

