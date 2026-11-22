# Zernio::MetaDatasetAudit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **ad_account_id** | **String** |  |  |
| **dataset** | [**MetaDatasetAuditDataset**](MetaDatasetAuditDataset.md) |  |  |
| **datasets** | [**Array&lt;MetaDatasetAuditDatasetsInner&gt;**](MetaDatasetAuditDatasetsInner.md) | Every pixel assigned to the ad account. |  |
| **window** | [**MetaDatasetAuditWindow**](MetaDatasetAuditWindow.md) |  |  |
| **events** | [**Array&lt;MetaDatasetAuditEventsInner&gt;**](MetaDatasetAuditEventsInner.md) | One entry per event Meta counted in the window or scored, busiest first. |  |
| **findings** | [**Array&lt;MetaDatasetAuditFindingsInner&gt;**](MetaDatasetAuditFindingsInner.md) | Problems the numbers show, most damaging first. |  |
| **unavailable** | [**Array&lt;MetaDatasetAuditUnavailableInner&gt;**](MetaDatasetAuditUnavailableInner.md) | What the audit could not read, and why. |  |
| **checked_at** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::MetaDatasetAudit.new(
  account_id: null,
  ad_account_id: act_757082720485182,
  dataset: null,
  datasets: null,
  window: null,
  events: null,
  findings: null,
  unavailable: null,
  checked_at: null
)
```

