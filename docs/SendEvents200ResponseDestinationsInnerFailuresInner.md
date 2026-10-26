# Zernio::SendEvents200ResponseDestinationsInnerFailuresInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_index** | **Integer** | Index into the events sent to this destination. | [optional] |
| **event_id** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |
| **code** | [**SendConversions200ResponseFailuresInnerCode**](SendConversions200ResponseFailuresInnerCode.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendEvents200ResponseDestinationsInnerFailuresInner.new(
  event_index: null,
  event_id: null,
  message: null,
  code: null
)
```

