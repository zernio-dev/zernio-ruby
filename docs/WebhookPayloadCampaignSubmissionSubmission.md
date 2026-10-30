# Zernio::WebhookPayloadCampaignSubmissionSubmission

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **platform** | **String** |  |  |
| **platform_post_id** | **String** |  |  |
| **platform_post_url** | **String** |  |  |
| **status** | **String** |  |  |
| **views_at_submission** | **Integer** |  |  |
| **views_eligible** | **Integer** | Views that count toward earnings at the latest read. |  |
| **engagements_latest** | **Integer** | The campaign engagement types summed at the latest read. An engagements campaign earns on this count. |  |
| **views_paid** | **Integer** | Views from ads, on YouTube and X. Null elsewhere or before the first read. |  |
| **flags** | [**Array&lt;WebhookPayloadCampaignSubmissionSubmissionFlagsInner&gt;**](WebhookPayloadCampaignSubmissionSubmissionFlagsInner.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadCampaignSubmissionSubmission.new(
  id: null,
  platform: tiktok,
  platform_post_id: null,
  platform_post_url: null,
  status: tracking,
  views_at_submission: null,
  views_eligible: null,
  engagements_latest: null,
  views_paid: null,
  flags: null
)
```

