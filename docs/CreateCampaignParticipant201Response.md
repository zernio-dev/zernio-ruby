# Zernio::CreateCampaignParticipant201Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **participant** | [**CampaignParticipant**](CampaignParticipant.md) |  |  |
| **invite_url** | **String** | The creator&#39;s personal join link. Treat it as a secret. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateCampaignParticipant201Response.new(
  participant: null,
  invite_url: null
)
```

