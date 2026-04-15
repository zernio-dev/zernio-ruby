# Late::SendConversions200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  | [optional] |
| **events_received** | **Integer** | Events accepted by the platform. | [optional] |
| **events_failed** | **Integer** | Events rejected (see failures). | [optional] |
| **failures** | [**Array&lt;SendConversions200ResponseFailuresInner&gt;**](SendConversions200ResponseFailuresInner.md) |  | [optional] |
| **trace_id** | **String** | Platform trace ID (fbtrace_id for Meta, requestId for Google) for debugging. | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::SendConversions200Response.new(
  platform: null,
  events_received: null,
  events_failed: null,
  failures: null,
  trace_id: null
)
```

