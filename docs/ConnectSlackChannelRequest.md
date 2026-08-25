# Zernio::ConnectSlackChannelRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |
| **channel_id** | **String** | Slack channel id, C... or G... |  |
| **pending_data_token** | **String** | Nonce from the OAuth redirect. Required unless accountId is sent. | [optional] |
| **account_id** | **String** | Existing Slack account whose workspace token is reused. Required unless pendingDataToken is sent. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectSlackChannelRequest.new(
  profile_id: null,
  channel_id: null,
  pending_data_token: null,
  account_id: null
)
```

