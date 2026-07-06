# Zernio::TransferVoiceCallRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **to** | **String** | +E164 phone number (tel: prefix optional) or a sip: URI. wss:// is not a valid transfer target. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TransferVoiceCallRequest.new(
  to: null
)
```

