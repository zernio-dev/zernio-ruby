# Zernio::CreatorPortalParticipant

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** |  |  |
| **campaign** | [**CreatorPortalCampaign**](CreatorPortalCampaign.md) |  |  |
| **participant** | [**CreatorPortalParticipantParticipant**](CreatorPortalParticipantParticipant.md) |  |  |
| **accounts** | [**Array&lt;CreatorPortalParticipantAccountsInner&gt;**](CreatorPortalParticipantAccountsInner.md) | Verified accounts on the campaign&#39;s platforms. |  |
| **submissions** | [**Array&lt;CreatorPortalSubmission&gt;**](CreatorPortalSubmission.md) | The latest 100 submissions. |  |
| **drafts** | [**Array&lt;CreatorPortalDraft&gt;**](CreatorPortalDraft.md) | The latest 100 draft versions, newest first. Empty on a campaign that does not review drafts. |  |
| **samples** | [**Array&lt;CreatorPortalSample&gt;**](CreatorPortalSample.md) | Every sample request of the creator, newest first. |  |
| **earnings** | [**CreatorPortalParticipantEarnings**](CreatorPortalParticipantEarnings.md) |  |  |
| **payouts** | [**CreatorPortalPayoutSetup**](CreatorPortalPayoutSetup.md) |  |  |
| **referral** | [**CreatorPortalReferral**](CreatorPortalReferral.md) |  | [optional] |
| **retainer** | [**CreatorPortalParticipantRetainer**](CreatorPortalParticipantRetainer.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatorPortalParticipant.new(
  kind: null,
  campaign: null,
  participant: null,
  accounts: null,
  submissions: null,
  drafts: null,
  samples: null,
  earnings: null,
  payouts: null,
  referral: null,
  retainer: null
)
```

