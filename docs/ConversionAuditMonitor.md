# Zernio::ConversionAuditMonitor

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The monitor id. |  |
| **host** | **String** | The watched host, lowercase and without &#x60;www.&#x60;. |  |
| **report_url** | **String** | The host&#39;s public report on is-bleeding.com. |  |
| **score** | **Integer** | The score of the last check (0 to 100), or null before the first readable scan. |  |
| **grade** | **String** | The grade of the last check. |  |
| **score_history** | [**Array&lt;ConversionAuditMonitorScoreHistoryInner&gt;**](ConversionAuditMonitorScoreHistoryInner.md) | The score of each of the last 30 checks, oldest first. |  |
| **created_at** | **Time** |  |  |
| **last_checked_at** | **Time** |  |  |
| **next_check_at** | **Time** | When the next daily check is due. |  |
| **last_alerted_at** | **Time** | When the last alert email went out. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConversionAuditMonitor.new(
  id: null,
  host: null,
  report_url: null,
  score: null,
  grade: null,
  score_history: null,
  created_at: null,
  last_checked_at: null,
  next_check_at: null,
  last_alerted_at: null
)
```

