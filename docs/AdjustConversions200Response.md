# Zernio::AdjustConversions200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  | [optional] |
| **adjustments_received** | **Integer** | Adjustments accepted by Google. | [optional] |
| **adjustments_failed** | **Integer** | Adjustments rejected (see failures). | [optional] |
| **failures** | [**Array&lt;AdjustConversions200ResponseFailuresInner&gt;**](AdjustConversions200ResponseFailuresInner.md) |  | [optional] |
| **trace_id** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdjustConversions200Response.new(
  platform: null,
  adjustments_received: null,
  adjustments_failed: null,
  failures: null,
  trace_id: null
)
```

