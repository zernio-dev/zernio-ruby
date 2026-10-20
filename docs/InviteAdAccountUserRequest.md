# Zernio::InviteAdAccountUserRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Google ads SocialAccount id. |  |
| **ad_account_id** | **String** | Google Ads customer id to invite the user to, digits only. |  |
| **email_address** | **String** |  |  |
| **access_role** | [**GoogleAdsAccessRole**](GoogleAdsAccessRole.md) |  |  |
| **validate_only** | **Boolean** |  | [optional][default to false] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InviteAdAccountUserRequest.new(
  account_id: null,
  ad_account_id: null,
  email_address: null,
  access_role: null,
  validate_only: null
)
```

