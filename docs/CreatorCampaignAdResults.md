# Zernio::CreatorCampaignAdResults

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | **String** |  |  |
| **totals** | [**CreatorCampaignAdResultsTotals**](CreatorCampaignAdResultsTotals.md) |  |  |
| **submissions** | [**Array&lt;CreatorCampaignAdResultsSubmissionsInner&gt;**](CreatorCampaignAdResultsSubmissionsInner.md) | Posts that run as ads or had a launch, biggest spend first. An ad belongs to the post it was launched from, else to the post it runs (boosted post, effective Instagram media, Spark item). |  |
| **creators** | [**Array&lt;CreatorCampaignAdResultsCreatorsInner&gt;**](CreatorCampaignAdResultsCreatorsInner.md) | Creators whose posts run as ads, ranked by &#x60;rankBy&#x60;. |  |
| **capabilities** | [**CreatorCampaignAdResultsCapabilities**](CreatorCampaignAdResultsCapabilities.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatorCampaignAdResults.new(
  currency: null,
  totals: null,
  submissions: null,
  creators: null,
  capabilities: null
)
```

