# Zernio::CreateImapAccountRequestSmtp

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

instance = Zernio::CreateImapAccountRequestSmtp.new(
  host: smtp.ionos.es,
  port: 465,
  security: null,
  username: null,
  password: null
)
```

