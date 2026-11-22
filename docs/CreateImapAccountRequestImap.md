# Zernio::CreateImapAccountRequestImap

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **host** | **String** |  | [optional] |
| **port** | **Integer** |  | [optional] |
| **security** | **String** |  | [optional] |
| **username** | **String** |  | [optional] |
| **password** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateImapAccountRequestImap.new(
  host: imap.ionos.es,
  port: 993,
  security: null,
  username: null,
  password: null
)
```

