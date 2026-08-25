# Zernio::GetAdMedia200ResponseMediaInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **url** | **String** | Direct file URL (signed; short-lived — see description). | [optional] |
| **thumbnail_url** | **String** | Video poster URL (videos only). | [optional] |
| **video_id** | **String** | Meta video id (videos only), reusable as video.id on the create endpoints. | [optional] |
| **length** | **Float** | Video length in seconds (videos only). | [optional] |
| **index** | **Integer** | 0-based position for carousel children or asset_feed_spec entries. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdMedia200ResponseMediaInner.new(
  type: null,
  url: null,
  thumbnail_url: null,
  video_id: null,
  length: null,
  index: null
)
```

