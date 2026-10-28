# Zernio::CampaignParticipantAccountsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **verified_at** | **Time** |  |  |
| **platform** | **String** | Null when the account is no longer active on the creator profile. |  |
| **username** | **String** | The handle on the platform; null when the account is no longer active. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CampaignParticipantAccountsInner.new(
  account_id: null,
  verified_at: null,
  platform: null,
  username: null
)
```

