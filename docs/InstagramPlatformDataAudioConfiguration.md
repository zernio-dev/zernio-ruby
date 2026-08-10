# Zernio::InstagramPlatformDataAudioConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **audio_id** | **String** | Audio asset ID from the audio search endpoint. |  |
| **audio_volume** | **Integer** | Volume of the attached audio track, 0-100. Defaults to 100. | [optional] |
| **video_volume** | **Integer** | Volume of the video&#39;s own sound, 0-100. Defaults to 100. Set 0 to mute the original video audio. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InstagramPlatformDataAudioConfiguration.new(
  audio_id: 482851939985510,
  audio_volume: 80,
  video_volume: 100
)
```

