# Zernio::UpdateCampaignTargetingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage** | **Boolean** | Send true to stage this change instead of applying it. Nothing is written to the ad network; the response is &#x60;202&#x60; with the staged change and its diff. Apply it with POST /v1/ads/changes/{changeId}/confirm. Cannot be combined with &#x60;validateOnly&#x60; or &#x60;dryRun&#x60;. | [optional] |
| **platform** | **String** |  |  |
| **targeting** | [**UpdateCampaignTargetingRequestTargeting**](UpdateCampaignTargetingRequestTargeting.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateCampaignTargetingRequest.new(
  stage: null,
  platform: null,
  targeting: null
)
```

