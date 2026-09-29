# Zernio::UpdateAdCampaignStatus200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | The campaign&#39;s delivery status derived from its switch as read back (&#x60;paused&#x60; when the switch is off). Echoes the request when the platform could not be read. | [optional] |
| **platform_campaign_status** | **String** | The campaign&#39;s own switch as read back from the platform, in the raw platform vocabulary (Meta effective_status, TikTok ENABLE / DISABLE, Google ENABLED / PAUSED, ChatGPT (OpenAI) status). Null when the platform could not be read, which is always the case on Pinterest, LinkedIn and X (no single-campaign read). | [optional] |
| **status_read_at** | **Time** | When the switch was read back. Null when it could not be read. | [optional] |
| **updated** | **Integer** | 1 when the campaign&#39;s switch was written. | [optional] |
| **skipped** | **Integer** | 1 when a live read showed the campaign already in the requested state, so nothing was written. | [optional] |
| **skipped_reasons** | **Array&lt;String&gt;** | Why the write was skipped, for example \&quot;Campaign already switched off\&quot;. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdCampaignStatus200Response.new(
  status: null,
  platform_campaign_status: null,
  status_read_at: null,
  updated: null,
  skipped: null,
  skipped_reasons: null
)
```

