# Zernio::CreatorCampaignAdResultsSubmissionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **submission_id** | **String** |  |  |
| **participant_id** | **String** |  |  |
| **creator** | [**CreatorCampaignAdResultsSubmissionsInnerCreator**](CreatorCampaignAdResultsSubmissionsInnerCreator.md) |  |  |
| **platform** | **String** |  |  |
| **platform_post_id** | **String** |  |  |
| **ads** | [**Array&lt;CreatorCampaignAdResultsSubmissionsInnerAdsInner&gt;**](CreatorCampaignAdResultsSubmissionsInnerAdsInner.md) |  |  |
| **launches** | [**Array&lt;CreatorCampaignAdResultsSubmissionsInnerLaunchesInner&gt;**](CreatorCampaignAdResultsSubmissionsInnerLaunchesInner.md) |  |  |
| **results** | [**CreatorCampaignAdResultFigures**](CreatorCampaignAdResultFigures.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatorCampaignAdResultsSubmissionsInner.new(
  submission_id: null,
  participant_id: null,
  creator: null,
  platform: null,
  platform_post_id: null,
  ads: null,
  launches: null,
  results: null
)
```

