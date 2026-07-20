# Zernio::ReplyToInboxPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **message** | **String** |  |  |
| **attachment_url** | **String** | (Facebook only) URL of an image to attach, publishing a photo comment alongside the text. The URL must be publicly accessible so Meta can fetch it. Returns 400 for other platforms. | [optional] |
| **comment_id** | **String** | Reply to specific comment (optional) | [optional] |
| **parent_cid** | **String** | (Bluesky only) Parent content identifier | [optional] |
| **root_uri** | **String** | (Bluesky only) Root post URI | [optional] |
| **root_cid** | **String** | (Bluesky only) Root post CID | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ReplyToInboxPostRequest.new(
  account_id: null,
  message: null,
  attachment_url: null,
  comment_id: null,
  parent_cid: null,
  root_uri: null,
  root_cid: null
)
```

