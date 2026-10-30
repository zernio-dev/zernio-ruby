# Zernio::CampaignSubmission

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **campaign_id** | **String** |  |  |
| **participant_id** | **String** |  |  |
| **creator_id** | **String** |  |  |
| **account_id** | **String** | The creator account the post was published from. |  |
| **platform** | **String** |  |  |
| **platform_post_id** | **String** |  |  |
| **platform_post_url** | **String** |  |  |
| **external_post_id** | **String** | The tracked external post (see /v1/external-posts). |  |
| **tracking_window_id** | **String** |  |  |
| **media_hash** | **String** |  |  |
| **submitted_at** | **Time** |  |  |
| **post_published_at** | **Time** |  |  |
| **status** | **String** |  |  |
| **reject_reason** | **String** |  |  |
| **review_round** | **Integer** | How many times the post was reopened after a reject. 0 until the first reopen. |  |
| **reviewed_by** | **String** | User id of the reviewer. |  |
| **reviewed_at** | **Time** |  |  |
| **views_at_submission** | **Integer** | Views when the post was submitted. They count toward earnings like every later view. |  |
| **views_latest** | **Integer** | Latest view count read for the post, frozen at the tracking window end. |  |
| **views_eligible** | **Integer** | Views that count toward earnings: every view the platform reports for the post, including those before submission, read at the tracking window end at the latest: once the window completes or is cancelled, the last read at or before its end is final and this value stops moving. |  |
| **engagements_latest** | **Integer** | The campaign engagement types summed at the latest read (all four on a views campaign), frozen at the tracking window end like &#x60;viewsEligible&#x60;. An &#x60;engagements&#x60; campaign earns on this count. |  |
| **views_paid** | **Integer** | Views from ads the creator ran: YouTube views from the advertising traffic source, X impressions beyond the organic ones. Null on other platforms and before the first read. On an organic-only campaign &#x60;viewsEligible&#x60; is the latest views minus these. |  |
| **paid_views_read_at** | **Time** | When &#x60;viewsPaid&#x60; was last read. YouTube refreshes every 6 hours and reports ad views up to 2 days late; X about once a day while the post is under 30 days old. |  |
| **last_accrued_views** | **Integer** |  |  |
| **accrued_cents** | **Integer** |  |  |
| **approved_cents** | **Integer** |  |  |
| **authenticity_score** | **Integer** |  |  |
| **authenticity_confidence** | **Float** |  |  |
| **flags** | [**Array&lt;CampaignSubmissionFlag&gt;**](CampaignSubmissionFlag.md) |  |  |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |
| **creator** | [**WebhookPayloadCampaignSubmissionCreator**](WebhookPayloadCampaignSubmissionCreator.md) |  |  |
| **authenticity** | [**CampaignSubmissionAuthenticity**](CampaignSubmissionAuthenticity.md) |  |  |
| **earned_cents** | **Integer** | approvedCents once approved, otherwise accruedCents. |  |
| **released_cents** | **Integer** | Approved cents whose hold is over, so payable or already paid out. 0 unless approved. |  |
| **paid_out_cents** | **Integer** | What rejecting this post could not take back now: releasedCents beyond the creator&#39;s payable balance. It stays paid; the dashboard warns before such a reject. |  |
| **window** | [**CampaignSubmissionWindow**](CampaignSubmissionWindow.md) |  |  |
| **post** | [**CampaignSubmissionPost**](CampaignSubmissionPost.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CampaignSubmission.new(
  id: null,
  campaign_id: null,
  participant_id: null,
  creator_id: null,
  account_id: null,
  platform: null,
  platform_post_id: null,
  platform_post_url: null,
  external_post_id: null,
  tracking_window_id: null,
  media_hash: null,
  submitted_at: null,
  post_published_at: null,
  status: null,
  reject_reason: null,
  review_round: null,
  reviewed_by: null,
  reviewed_at: null,
  views_at_submission: null,
  views_latest: null,
  views_eligible: null,
  engagements_latest: null,
  views_paid: null,
  paid_views_read_at: null,
  last_accrued_views: null,
  accrued_cents: null,
  approved_cents: null,
  authenticity_score: null,
  authenticity_confidence: null,
  flags: null,
  created_at: null,
  updated_at: null,
  creator: null,
  authenticity: null,
  earned_cents: null,
  released_cents: null,
  paid_out_cents: null,
  window: null,
  post: null
)
```

