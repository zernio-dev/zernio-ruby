# Zernio::InviteAdAccountUserRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage** | **Boolean** | Send true to store this write as a staged change instead of applying it. The response is &#x60;202&#x60; with the change, and POST /v1/ads/changes/{changeId}/confirm applies it later. Cannot be combined with &#x60;validateOnly&#x60;. | [optional] |
| **account_id** | **String** | Google ads SocialAccount id. |  |
| **ad_account_id** | **String** | Google Ads customer id to invite the user to, digits only. |  |
| **email_address** | **String** |  |  |
| **access_role** | [**GoogleAdsAccessRole**](GoogleAdsAccessRole.md) |  |  |
| **validate_only** | **Boolean** |  | [optional][default to false] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InviteAdAccountUserRequest.new(
  stage: null,
  account_id: null,
  ad_account_id: null,
  email_address: null,
  access_role: null,
  validate_only: null
)
```

