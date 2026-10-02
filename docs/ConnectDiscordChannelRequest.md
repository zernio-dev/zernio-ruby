# Zernio::ConnectDiscordChannelRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guild_id** | **String** | Discord server (guild) the channel belongs to |  |
| **channel_id** | **String** | Text, announcement or forum channel to publish to. Send this or channelIds, not both. | [optional] |
| **channel_ids** | **Array&lt;String&gt;** | Several channels of the server to connect, each as its own account. With two or more distinct ids the response lists &#x60;accounts&#x60; and &#x60;failed&#x60; instead of &#x60;account&#x60;. A single id behaves exactly like channelId. | [optional] |
| **profile_id** | **String** | Profile to connect the channel to |  |
| **redirect_url** | **String** | channelIds only: a URL to return in &#x60;redirect_url&#x60;, with &#x60;connected&#x60;, &#x60;profileId&#x60;, &#x60;accountId&#x60; and &#x60;accountIds&#x60; appended. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectDiscordChannelRequest.new(
  guild_id: null,
  channel_id: null,
  channel_ids: null,
  profile_id: null,
  redirect_url: null
)
```

