# Zernio::CampaignReport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **spend** | [**CampaignReportSpend**](CampaignReportSpend.md) |  |  |
| **views** | [**CampaignReportViews**](CampaignReportViews.md) |  |  |
| **submissions** | [**CampaignSubmissionCounts**](CampaignSubmissionCounts.md) |  |  |
| **participants** | [**Array&lt;CampaignReportParticipantsInner&gt;**](CampaignReportParticipantsInner.md) | Top 10 participants by payable, settling and settled cents. |  |
| **authenticity** | [**Array&lt;CampaignReportAuthenticityInner&gt;**](CampaignReportAuthenticityInner.md) | Authenticity score histogram in ten buckets (0-9 through 90-100). |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CampaignReport.new(
  spend: null,
  views: null,
  submissions: null,
  participants: null,
  authenticity: null
)
```

