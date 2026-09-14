# Zernio::TikTokPlatformDataMusicSoundInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **music_sound_id** | **String** | The commercial_music_id of the track. |  |
| **music_sound_volume** | **Integer** | Track volume. TikTok defaults an omitted volume to 0, which publishes the track silently, so we default to the app&#39;s 50. Video posts only. | [optional][default to 50] |
| **music_sound_start** | **Integer** | Start point of the track in milliseconds (default 0). Video posts only. | [optional] |
| **music_sound_end** | **Integer** | End point of the track in milliseconds (default: the video length). Must be greater than musicSoundStart. Video posts only. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TikTokPlatformDataMusicSoundInfo.new(
  music_sound_id: null,
  music_sound_volume: null,
  music_sound_start: null,
  music_sound_end: null
)
```

