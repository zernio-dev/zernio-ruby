# Zernio::SendEvents200ResponseDestinationsInnerFailuresInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_index** | **Integer** | Position of the event in the request&#39;s &#x60;events&#x60; array, counted from 0, also when repeats or events this destination does not take were left out. | [optional] |
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

