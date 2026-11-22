# Zernio::CreateTrackingLinkRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_id** | **String** | The tracking site the link belongs to. The link takes its profile. |  |
| **name** | **String** |  |  |
| **destinations** | [**Array&lt;TrackingLinkDestination&gt;**](TrackingLinkDestination.md) |  |  |
| **campaign** | [**TrackingLinkCampaign**](TrackingLinkCampaign.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateTrackingLinkRequest.new(
  site_id: null,
  name: null,
  destinations: null,
  campaign: null
)
```

