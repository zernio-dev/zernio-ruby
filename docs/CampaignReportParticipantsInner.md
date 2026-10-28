# Zernio::CampaignReportParticipantsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **participant_id** | **String** |  |  |
| **creator** | [**WebhookPayloadCampaignSubmissionCreator**](WebhookPayloadCampaignSubmissionCreator.md) |  |  |
| **payable_cents** | **Integer** |  |  |
| **settling_cents** | **Integer** | A treasury payout in progress. |  |
| **settled_cents** | **Integer** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CampaignReportParticipantsInner.new(
  participant_id: null,
  creator: null,
  payable_cents: null,
  settling_cents: null,
  settled_cents: null
)
```

