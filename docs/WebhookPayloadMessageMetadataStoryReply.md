# Zernio::WebhookPayloadMessageMetadataStoryReply

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **story_id** | **String** | The Instagram story ID the user replied to. |  |
| **story_url** | **String** | Meta CDN URL for the story media. Expires approximately 24 hours after the story posted; consumers must fetch promptly or treat 404s as expected.  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadMessageMetadataStoryReply.new(
  story_id: null,
  story_url: null
)
```

