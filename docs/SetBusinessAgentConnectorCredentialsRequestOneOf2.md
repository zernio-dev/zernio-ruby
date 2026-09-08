# Zernio::SetBusinessAgentConnectorCredentialsRequestOneOf2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** |  |  |
| **client_certificate** | **String** | PEM. |  |
| **client_key** | **String** | PEM. |  |
| **ca_certificate** | **String** | PEM. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SetBusinessAgentConnectorCredentialsRequestOneOf2.new(
  kind: null,
  client_certificate: null,
  client_key: null,
  ca_certificate: null
)
```

