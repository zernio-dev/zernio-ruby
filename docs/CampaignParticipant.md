# Zernio::CampaignParticipant

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **campaign_id** | **String** |  |  |
| **creator** | [**CampaignParticipantCreator**](CampaignParticipantCreator.md) |  |  |
| **status** | **String** |  |  |
| **joined_at** | **Time** |  |  |
| **accounts** | [**Array&lt;CampaignParticipantAccountsInner&gt;**](CampaignParticipantAccountsInner.md) | Social accounts the creator connected, verified once Zernio confirmed the creator owns them. |  |
| **balances** | [**CampaignParticipantBalances**](CampaignParticipantBalances.md) |  |  |
| **flags** | [**Array&lt;CampaignParticipantFlagsInner&gt;**](CampaignParticipantFlagsInner.md) |  |  |
| **submission_counts** | [**CampaignSubmissionCounts**](CampaignSubmissionCounts.md) |  |  |
| **payout** | [**CampaignParticipantPayout**](CampaignParticipantPayout.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CampaignParticipant.new(
  id: null,
  campaign_id: null,
  creator: null,
  status: null,
  joined_at: null,
  accounts: null,
  balances: null,
  flags: null,
  submission_counts: null,
  payout: null
)
```

