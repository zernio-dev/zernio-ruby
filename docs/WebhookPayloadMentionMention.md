# Zernio::WebhookPayloadMentionMention

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Mention ID, the same as &#x60;id&#x60; on GET /v1/inbox/mentions. |  |
| **platform** | **String** |  |  |
| **type** | **String** | Null on LinkedIn. |  |
| **media_id** | **String** | Instagram media ID. |  |
| **post_id** | **String** | Facebook post ID. |  |
| **comment_id** | **String** |  |  |
| **content** | **String** | Text that mentioned the account. |  |
| **permalink** | **String** | URL to the source post on LinkedIn. Null on Instagram and Facebook. |  |
| **author_urn** | **String** |  |  |
| **author_name** | **String** |  |  |
| **author_username** | **String** |  |  |
| **author_picture** | **String** |  |  |
| **organizational_entity** | **String** | The mentioned organization, Page or Instagram account. |  |
| **published_at** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadMentionMention.new(
  id: null,
  platform: null,
  type: null,
  media_id: null,
  post_id: null,
  comment_id: null,
  content: null,
  permalink: null,
  author_urn: null,
  author_name: null,
  author_username: null,
  author_picture: null,
  organizational_entity: null,
  published_at: null
)
```

