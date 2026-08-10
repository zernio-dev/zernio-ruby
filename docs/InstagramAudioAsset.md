# Zernio::InstagramAudioAsset

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **audio_id** | **String** | Audio asset ID. Pass it as platformSpecificData.audioConfiguration.audioId when creating a Reel. | [optional] |
| **title** | **String** | Track or sound title. | [optional] |
| **audio_type** | **String** | Catalog type of the asset. | [optional] |
| **duration_in_ms** | **Integer** | Asset duration in milliseconds. | [optional] |
| **display_artist** | **String** | Artist name (licensed music only). | [optional] |
| **cover_artwork_thumbnail_url** | **String** | Cover artwork thumbnail (licensed music only). | [optional] |
| **download_url** | **String** | Temporary preview URL. Meta expires it after roughly 1.5 days; re-fetch the asset to refresh it. | [optional] |
| **ig_username** | **String** | Creator username (original sounds only). | [optional] |
| **profile_picture_url** | **String** | Creator profile picture (original sounds only). | [optional] |
| **is_ads_eligible** | **Boolean** | Whether the asset is eligible for ads use. | [optional] |
| **on_platform_audio_preview_link** | **String** | Instagram web link to preview the audio. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InstagramAudioAsset.new(
  audio_id: 482851939985510,
  title: null,
  audio_type: null,
  duration_in_ms: null,
  display_artist: null,
  cover_artwork_thumbnail_url: null,
  download_url: null,
  ig_username: null,
  profile_picture_url: null,
  is_ads_eligible: null,
  on_platform_audio_preview_link: null
)
```

