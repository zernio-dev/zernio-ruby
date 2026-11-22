# Zernio::ImapConnectResultStages

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **imap_connect** | **String** |  | [optional] |
| **imap_auth** | **String** |  | [optional] |
| **smtp_connect** | **String** |  | [optional] |
| **smtp_auth** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ImapConnectResultStages.new(
  imap_connect: null,
  imap_auth: null,
  smtp_connect: null,
  smtp_auth: null
)
```

