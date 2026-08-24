# Zernio::CreateSipTrunk201ResponseTermination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uri** | **String** | Telnyx termination host the platform dials for outbound (sip.telnyx.com). | [optional] |
| **username** | **String** | SIP digest username. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateSipTrunk201ResponseTermination.new(
  uri: null,
  username: null
)
```

