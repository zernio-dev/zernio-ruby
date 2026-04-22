# Zernio::GetDiscordChannels200ResponseChannelsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Channel snowflake ID | [optional] |
| **name** | **String** | Channel name | [optional] |
| **type** | **Integer** | Channel type: 0 (text), 5 (announcement), 15 (forum) | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetDiscordChannels200ResponseChannelsInner.new(
  id: null,
  name: null,
  type: null
)
```

