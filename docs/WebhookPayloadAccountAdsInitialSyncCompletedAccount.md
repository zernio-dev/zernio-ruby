# Zernio::WebhookPayloadAccountAdsInitialSyncCompletedAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The account&#39;s unique identifier (same as used in /v1/accounts/{accountId}) |  |
| **profile_id** | **String** | The profile&#39;s unique identifier this account belongs to |  |
| **platform** | **String** |  |  |
| **username** | **String** |  |  |
| **display_name** | **String** |  | [optional] |
| **platform_user_id** | **String** | The platform-side account/ad-account ID (e.g. Meta ad account ID). | [optional] |
| **profile_picture** | **String** | URL of the account&#39;s profile picture, when available. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadAccountAdsInitialSyncCompletedAccount.new(
  account_id: null,
  profile_id: null,
  platform: null,
  username: null,
  display_name: null,
  platform_user_id: null,
  profile_picture: null
)
```

