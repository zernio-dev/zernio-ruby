# Zernio::ImapConnectResultSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **imap** | [**ImapDiscoverySmtp**](ImapDiscoverySmtp.md) |  | [optional] |
| **smtp** | [**ImapDiscoverySmtp**](ImapDiscoverySmtp.md) |  | [optional] |
| **source** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ImapConnectResultSettings.new(
  imap: null,
  smtp: null,
  source: null
)
```

