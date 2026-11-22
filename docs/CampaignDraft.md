# Zernio::CampaignDraft

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **campaign_id** | **String** |  |  |
| **participant_id** | **String** |  |  |
| **creator** | [**CreatorCampaignAdResultsSubmissionsInnerCreator**](CreatorCampaignAdResultsSubmissionsInnerCreator.md) |  |  |
| **chain_id** | **String** | The id of the first version of the chain. |  |
| **version** | **Integer** |  |  |
| **revision_of** | **String** | The version this one answers; null on version 1. |  |
| **media_url** | **String** |  |  |
| **media_type** | **String** |  |  |
| **caption** | **String** |  |  |
| **status** | **String** | submitted: waits for review. approved: the creator may publish it. revision_requested: the creator should upload a new version. rejected: final. |  |
| **review_note** | **String** | The note sent with a revision request, or the rejection reason. |  |
| **reviewed_at** | **Time** |  |  |
| **submitted_at** | **Time** |  |  |
| **comments** | [**Array&lt;CampaignDraftCommentsInner&gt;**](CampaignDraftCommentsInner.md) | Review comments on this version, in video order. |  |
| **submission_id** | **String** | The live post submitted for this draft, once the creator published it. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CampaignDraft.new(
  id: null,
  campaign_id: null,
  participant_id: null,
  creator: null,
  chain_id: null,
  version: null,
  revision_of: null,
  media_url: null,
  media_type: null,
  caption: null,
  status: null,
  review_note: null,
  reviewed_at: null,
  submitted_at: null,
  comments: null,
  submission_id: null
)
```

