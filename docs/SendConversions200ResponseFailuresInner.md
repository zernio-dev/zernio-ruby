# Zernio::SendConversions200ResponseFailuresInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_index** | **Integer** | Index into the submitted events array. | [optional] |
| **event_id** | **String** | Echoes back the eventId of the failed event. | [optional] |
| **message** | **String** |  | [optional] |
| **code** | [**SendConversions200ResponseFailuresInnerCode**](SendConversions200ResponseFailuresInnerCode.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendConversions200ResponseFailuresInner.new(
  event_index: null,
  event_id: null,
  message: null,
  code: null
)
```

