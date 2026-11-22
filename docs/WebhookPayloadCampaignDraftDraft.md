# Zernio::WebhookPayloadCampaignDraftDraft

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **chain_id** | **String** |  |  |
| **version** | **Integer** |  |  |
| **revision_of** | **String** |  |  |
| **status** | **String** |  |  |
| **media_url** | **String** |  |  |
| **media_type** | **String** |  |  |
| **caption** | **String** |  |  |
| **review_note** | **String** | The revision note or the rejection reason. |  |
| **comments** | [**Array&lt;CreatorPortalDraftCommentsInner&gt;**](CreatorPortalDraftCommentsInner.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadCampaignDraftDraft.new(
  id: null,
  chain_id: null,
  version: null,
  revision_of: null,
  status: null,
  media_url: null,
  media_type: null,
  caption: null,
  review_note: null,
  comments: null
)
```

