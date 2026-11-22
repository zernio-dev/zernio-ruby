# Zernio::UpdateTrackingLinkRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **destinations** | [**Array&lt;TrackingLinkDestination&gt;**](TrackingLinkDestination.md) |  | [optional] |
| **campaign** | [**TrackingLinkCampaign**](TrackingLinkCampaign.md) |  | [optional] |
| **status** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateTrackingLinkRequest.new(
  name: null,
  destinations: null,
  campaign: null,
  status: null
)
```

