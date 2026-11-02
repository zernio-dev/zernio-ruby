# Zernio::CommentAttachment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The platform&#39;s own media kind, see the schema description for each platform&#39;s values. |  |
| **image_url** | **String** | Rendered image or preview URL. | [optional] |
| **url** | **String** | Source or playable URL. Facebook GIFs carry an l.facebook.com redirect, X videos an mp4, Bluesky videos an HLS playlist. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommentAttachment.new(
  type: null,
  image_url: null,
  url: null
)
```

