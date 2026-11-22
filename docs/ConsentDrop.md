# Zernio::ConsentDrop

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_index** | **Integer** | Index into the events sent to this destination. | [optional] |
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

