# Zernio::BulkUpdateAdCampaignStatusRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage** | **Boolean** | Send true to store this write as a staged change instead of applying it. The response is &#x60;202&#x60; with the change, and POST /v1/ads/changes/{changeId}/confirm applies it later. Cannot be combined with &#x60;validateOnly&#x60;. | [optional] |
| **status** | **String** |  |  |
| **campaigns** | [**Array&lt;BulkUpdateAdCampaignStatusRequestCampaignsInner&gt;**](BulkUpdateAdCampaignStatusRequestCampaignsInner.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BulkUpdateAdCampaignStatusRequest.new(
  stage: null,
  status: null,
  campaigns: null
)
```

