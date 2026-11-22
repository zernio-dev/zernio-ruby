# Zernio::CreatorPortalDraft

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Pass as &#x60;draftId&#x60; when submitting the live post of an approved draft, or as &#x60;revisionOf&#x60; to answer a revision request. |  |
| **chain_id** | **String** |  |  |
| **version** | **Integer** |  |  |
| **revision_of** | **String** |  |  |
| **status** | **String** |  |  |
| **media_url** | **String** |  |  |
| **media_type** | **String** |  |  |
| **caption** | **String** |  |  |
| **review_note** | **String** |  |  |
| **comments** | [**Array&lt;CreatorPortalDraftCommentsInner&gt;**](CreatorPortalDraftCommentsInner.md) |  |  |
| **submitted_at** | **Time** |  |  |
| **reviewed_at** | **Time** |  |  |
| **submission_id** | **String** | The live post submitted for this draft. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatorPortalDraft.new(
  id: null,
  chain_id: null,
  version: null,
  revision_of: null,
  status: null,
  media_url: null,
  media_type: null,
  caption: null,
  review_note: null,
  comments: null,
  submitted_at: null,
  reviewed_at: null,
  submission_id: null
)
```

