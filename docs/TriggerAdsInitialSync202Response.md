# Zernio::TriggerAdsInitialSync202Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **trace_id** | **String** | Trace ID for the enqueued job. Reused on &#x60;already_queued&#x60;. | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TriggerAdsInitialSync202Response.new(
  status: null,
  trace_id: null,
  message: null
)
```

