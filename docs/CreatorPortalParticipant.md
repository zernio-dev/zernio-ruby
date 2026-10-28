# Zernio::CreatorPortalParticipant

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** |  |  |
| **campaign** | [**CreatorPortalCampaign**](CreatorPortalCampaign.md) |  |  |
| **participant** | [**CreatorPortalParticipantParticipant**](CreatorPortalParticipantParticipant.md) |  |  |
| **accounts** | [**Array&lt;CreatorPortalParticipantAccountsInner&gt;**](CreatorPortalParticipantAccountsInner.md) | Verified accounts on the campaign&#39;s platforms. |  |
| **submissions** | [**Array&lt;CreatorPortalSubmission&gt;**](CreatorPortalSubmission.md) | The latest 100 submissions. |  |
| **earnings** | [**CreatorPortalParticipantEarnings**](CreatorPortalParticipantEarnings.md) |  |  |
| **payouts** | [**CreatorPortalPayoutSetup**](CreatorPortalPayoutSetup.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatorPortalParticipant.new(
  kind: null,
  campaign: null,
  participant: null,
  accounts: null,
  submissions: null,
  earnings: null,
  payouts: null
)
```

