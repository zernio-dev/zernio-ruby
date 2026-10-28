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
  flags: null
)
```

