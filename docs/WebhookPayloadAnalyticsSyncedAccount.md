# Zernio::WebhookPayloadAnalyticsSyncedAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The account&#39;s unique identifier (same as used in /v1/accounts/{accountId}) |  |
| **profile_id** | **String** | The profile this account belongs to |  |
| **platform** | **String** |  |  |
| **username** | **String** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadAnalyticsSyncedAccount.new(
  account_id: null,
  profile_id: null,
  platform: youtube,
  username: null
)
```

