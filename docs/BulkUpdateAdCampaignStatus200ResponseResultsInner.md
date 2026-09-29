# Zernio::BulkUpdateAdCampaignStatus200ResponseResultsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_campaign_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **updated** | **Integer** |  | [optional] |
| **skipped** | **Integer** |  | [optional] |
| **platform_campaign_status** | **String** | The campaign&#39;s own switch read back from the platform; null when it could not be read. | [optional] |
| **error** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BulkUpdateAdCampaignStatus200ResponseResultsInner.new(
  platform_campaign_id: null,
  platform: null,
  updated: null,
  skipped: null,
  platform_campaign_status: null,
  error: null
)
```

