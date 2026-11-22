# Zernio::ConnectedMessagingAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **username** | **String** | The LINE basic ID (for example @123abcde) or the WeChat AppID. | [optional] |
| **display_name** | **String** |  | [optional] |
| **is_active** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectedMessagingAccount.new(
  account_id: null,
  platform: null,
  username: null,
  display_name: null,
  is_active: null
)
```

