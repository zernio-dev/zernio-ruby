# Zernio::CreateYoutubePlaylistRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Playlist title. Leading and trailing whitespace is removed. |  |
| **description** | **String** | Optional playlist description. | [optional] |
| **privacy** | **String** |  | [optional][default to &#39;private&#39;] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateYoutubePlaylistRequest.new(
  title: null,
  description: null,
  privacy: null
)
```

