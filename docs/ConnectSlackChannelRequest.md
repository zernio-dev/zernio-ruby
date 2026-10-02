# Zernio::ConnectSlackChannelRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |
| **channel_id** | **String** | Slack channel id, C... or G.... Send this or channelIds, not both. | [optional] |
| **channel_ids** | **Array&lt;String&gt;** | Several channels of the workspace to connect, each as its own account. With two or more distinct ids the response lists &#x60;accounts&#x60; and &#x60;failed&#x60; instead of &#x60;account&#x60;, and the request is refused with 400 on a reconnect. A single id behaves exactly like channelId. | [optional] |
| **redirect_url** | **String** | channelIds only: a URL to return in &#x60;redirect_url&#x60;, with &#x60;connected&#x60;, &#x60;profileId&#x60;, &#x60;accountId&#x60; and &#x60;accountIds&#x60; appended. | [optional] |
| **pending_data_token** | **String** | Nonce from the OAuth redirect. Required unless accountId is sent. | [optional] |
| **account_id** | **String** | Existing Slack account whose workspace token is reused. Required unless pendingDataToken is sent. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectSlackChannelRequest.new(
  profile_id: null,
  channel_id: null,
  channel_ids: null,
  redirect_url: null,
  pending_data_token: null,
  account_id: null
)
```

