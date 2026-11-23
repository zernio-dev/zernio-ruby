# Zernio::TransferVoiceCallRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **to** | **String** | +E164 phone number (tel: prefix optional) or a sip: URI. wss:// is not a valid transfer target. |  |
| **caller_id** | **String** | Caller ID shown on the transfer leg. &#x60;business&#x60; is your own number. &#x60;caller&#x60; is the original caller&#39;s number, for inbound calls only. The carrier may refuse &#x60;caller&#x60; on some routes: you get a 422, then retry with &#x60;business&#x60;. | [optional][default to &#39;business&#39;] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TransferVoiceCallRequest.new(
  to: null,
  caller_id: null
)
```

