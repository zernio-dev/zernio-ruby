# Zernio::ListTikTokCommercialMusic200ResponseTracksInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id to send as musicSoundId (the full track&#39;s song clip id). TikTok rejects the commercial music id itself at publish time. | [optional] |
| **commercial_music_id** | **String** | TikTok&#39;s commercial_music_id, for reference only | [optional] |
| **name** | **String** |  | [optional] |
| **artist** | **String** |  | [optional] |
| **duration_sec** | **Integer** |  | [optional] |
| **genres** | **Array&lt;String&gt;** |  | [optional] |
| **preview_url** | **String** | Preview audio of the full track | [optional] |
| **thumbnail_url** | **String** |  | [optional] |
| **rank** | **Integer** | Position in the trending chart, 1 first | [optional] |
| **clip** | [**ListTikTokCommercialMusic200ResponseTracksInnerClip**](ListTikTokCommercialMusic200ResponseTracksInnerClip.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListTikTokCommercialMusic200ResponseTracksInner.new(
  id: null,
  commercial_music_id: null,
  name: null,
  artist: null,
  duration_sec: null,
  genres: null,
  preview_url: null,
  thumbnail_url: null,
  rank: null,
  clip: null
)
```

