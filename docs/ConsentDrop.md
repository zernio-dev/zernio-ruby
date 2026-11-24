# Zernio::ConsentDrop

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_index** | **Integer** | Position of the event in the request&#39;s &#x60;events&#x60; array, counted from 0, also when repeats or events this destination does not take were left out. | [optional] |
| **event_id** | **String** |  | [optional] |
| **reason** | **String** | &#x60;consent_denied&#x60;: a signal the platform needs is &#x60;DENIED&#x60;. &#x60;consent_missing&#x60;: the visitor is in the EEA, UK or CH and the signal was never given. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConsentDrop.new(
  event_index: null,
  event_id: null,
  reason: null
)
```

