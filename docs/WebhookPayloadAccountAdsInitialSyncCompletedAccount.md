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
| **platform_ad_account_id** | **String** | When the consumer scoped the connect call to a single ad account, this echoes that ID back so the webhook can be correlated to the originating connect request without consulting the consumer&#39;s DB. Meta uses the &#x60;act_*&#x60; shape.  | [optional] |
| **platform_ad_account_ids** | **Array&lt;String&gt;** | Every ad-account ID that the connected token could see at discovery time. Useful for \&quot;we synced ads from these accounts\&quot; UX without a follow-up API call. Empty array when the token had no ad-account visibility.  | [optional] |

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
  profile_picture: null,
  platform_ad_account_id: act_1330190928038136,
  platform_ad_account_ids: [act_1330190928038136, act_98765432101234]
)
```

