# Zernio::GetInboxConversationMessages200ResponseMessagesInnerStoryReply

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **story_id** | **String** | The Instagram story ID the user replied to. | [optional] |
| **story_url** | **String** | Meta CDN URL for the story media. Expires roughly 24 hours after the story posted; fetch promptly or treat 404s as expected. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetInboxConversationMessages200ResponseMessagesInnerStoryReply.new(
  story_id: null,
  story_url: null
)
```

