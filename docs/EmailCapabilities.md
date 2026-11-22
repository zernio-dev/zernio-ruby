# Zernio::EmailCapabilities

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sync** | [**EmailCapabilitiesSync**](EmailCapabilitiesSync.md) |  | [optional] |
| **sent_items** | [**EmailCapabilitiesSentItems**](EmailCapabilitiesSentItems.md) |  | [optional] |
| **drafts** | [**EmailCapabilitiesDrafts**](EmailCapabilitiesDrafts.md) |  | [optional] |
| **forward** | [**EmailCapabilitiesForward**](EmailCapabilitiesForward.md) |  | [optional] |
| **send_as** | [**EmailCapabilitiesSendAs**](EmailCapabilitiesSendAs.md) |  | [optional] |
| **signatures** | [**EmailCapabilitiesSignatures**](EmailCapabilitiesSignatures.md) |  | [optional] |
| **labels** | [**EmailCapabilitiesLabels**](EmailCapabilitiesLabels.md) |  | [optional] |
| **bounces** | [**EmailCapabilitiesBounces**](EmailCapabilitiesBounces.md) |  | [optional] |
| **scheduled_send** | [**EmailCapabilitiesScheduledSend**](EmailCapabilitiesScheduledSend.md) |  | [optional] |
| **tracking** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EmailCapabilities.new(
  sync: null,
  sent_items: null,
  drafts: null,
  forward: null,
  send_as: null,
  signatures: null,
  labels: null,
  bounces: null,
  scheduled_send: null,
  tracking: null
)
```

