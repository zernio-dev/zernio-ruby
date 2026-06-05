# Zernio::ExternalPostWebhookPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Platform-native post ID (NOT a Zernio post ID). |  |
| **platform** | **String** | Platform the post lives on (e.g. \&quot;googlebusiness\&quot;). |  |
| **account_id** | **String** | Zernio social account ID the post belongs to. |  |
| **url** | **String** | Direct URL to the post on the platform, when available. |  |
| **content** | **String** | Post text. May be empty. |  |
| **media_type** | **String** | One of image, video, gif, document, text, carousel. |  |
| **media_items** | [**Array&lt;ExternalPostWebhookPostMediaItemsInner&gt;**](ExternalPostWebhookPostMediaItemsInner.md) |  |  |
| **thumbnail_url** | **String** |  |  |
| **published_at** | **Time** |  |  |
| **source** | **String** | Always \&quot;external\&quot; — distinguishes these from Zernio-originated post.* events. |  |
| **deleted_at** | **Time** | Detection time of deletion. Present on post.external.deleted; null/absent otherwise. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ExternalPostWebhookPost.new(
  id: null,
  platform: null,
  account_id: null,
  url: null,
  content: null,
  media_type: null,
  media_items: null,
  thumbnail_url: null,
  published_at: null,
  source: null,
  deleted_at: null
)
```

