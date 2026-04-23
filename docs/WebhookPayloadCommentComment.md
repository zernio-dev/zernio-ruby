# Zernio::WebhookPayloadCommentComment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Platform comment ID |  |
| **post_id** | **String** | Internal post ID (null for posts not published through Zernio) |  |
| **platform_post_id** | **String** | Platform&#39;s post ID |  |
| **platform** | **String** |  |  |
| **text** | **String** | Comment text content |  |
| **author** | [**WebhookPayloadCommentCommentAuthor**](WebhookPayloadCommentCommentAuthor.md) |  |  |
| **created_at** | **Time** |  |  |
| **is_reply** | **Boolean** | Whether this is a reply to another comment |  |
| **parent_comment_id** | **String** | Parent comment ID if this is a reply |  |
| **ad** | [**WebhookPayloadCommentCommentAd**](WebhookPayloadCommentCommentAd.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadCommentComment.new(
  id: null,
  post_id: null,
  platform_post_id: null,
  platform: null,
  text: null,
  author: null,
  created_at: null,
  is_reply: null,
  parent_comment_id: null,
  ad: null
)
```

