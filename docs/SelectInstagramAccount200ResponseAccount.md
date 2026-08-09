# Zernio::SelectInstagramAccount200ResponseAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | ID of the created SocialAccount | [optional] |
| **platform** | **String** |  | [optional] |
| **username** | **String** |  | [optional] |
| **display_name** | **String** | Name of the Facebook Page backing this account | [optional] |
| **profile_picture** | **String** |  | [optional] |
| **is_active** | **Boolean** |  | [optional] |
| **login_method** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SelectInstagramAccount200ResponseAccount.new(
  account_id: null,
  platform: null,
  username: null,
  display_name: null,
  profile_picture: null,
  is_active: null,
  login_method: null
)
```

