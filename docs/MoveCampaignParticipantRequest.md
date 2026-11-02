# Zernio::MoveCampaignParticipantRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **target_campaign_id** | **String** | Campaign to move the participant to. Same owner, not closed. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::MoveCampaignParticipantRequest.new(
  target_campaign_id: null
)
```

