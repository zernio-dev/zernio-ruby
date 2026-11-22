# Zernio::ImapDiscoverySmtp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **host** | **String** |  | [optional] |
| **port** | **Integer** |  | [optional] |
| **security** | **String** | tls from the first byte (993, 465) or STARTTLS on a plain port (143, 587). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ImapDiscoverySmtp.new(
  host: null,
  port: null,
  security: null
)
```

