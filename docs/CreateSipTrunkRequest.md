# Zernio::CreateSipTrunkRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | Display name for the trunk. |  |
| **sip_host** | **String** | Fully-qualified hostname inbound calls are delivered to (e.g. sip.rtc.elevenlabs.io, sip.retellai.com). |  |
| **sip_port** | **Integer** | Defaults to 5061 for tls, 5060 otherwise. | [optional] |
| **transport** | **String** | Signaling transport toward sipHost. Default tls (with SRTP media). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateSipTrunkRequest.new(
  label: null,
  sip_host: null,
  sip_port: null,
  transport: null
)
```

