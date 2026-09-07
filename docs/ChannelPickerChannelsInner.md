# Zernio::ChannelPickerChannelsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Channel id (C... or G...), the value to send as channelId on POST |  |
| **name** | **String** |  |  |
| **is_private** | **Boolean** |  |  |
| **is_member** | **Boolean** | Whether the Zernio bot is already a member of the channel |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ChannelPickerChannelsInner.new(
  id: null,
  name: null,
  is_private: null,
  is_member: null
)
```

