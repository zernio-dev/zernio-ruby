# Zernio::InsightMetricsResponseMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity** | **String** |  |  |
| **account_id** | **String** |  |  |
| **platform_post_id** | **String** |  |  |
| **platform** | **String** |  |  |
| **granularity** | **String** |  |  |
| **group_by** | **String** | none, demographic, hour, keyword, or the Search Console dimensions grouped, such as query,country. |  |
| **timeframe** | **String** | Instagram demographics: the period Instagram aggregated. |  |
| **from_date** | **String** | Null for a lifetime or snapshot demographic breakdown. |  |
| **to_date** | **String** |  |  |
| **unavailable_metrics** | [**Array&lt;InsightMetricsResponseMetaUnavailableMetricsInner&gt;**](InsightMetricsResponseMetaUnavailableMetricsInner.md) | Metrics asked that the platform could not answer for this account, with the reason. |  |
| **units** | [**Hash&lt;String, InsightMetricsResponseMetaUnitsValue&gt;**](InsightMetricsResponseMetaUnitsValue.md) | Monetary metrics: the unit and currency the platform reports them in. Demographic metrics: count, share (0 to 1) or percent (0 to 100). |  |
| **data_delay** | **String** | How late the platform reports these metrics, in words. Search Console: the rows cover final days only. |  |
| **provisional_since** | **String** | First day the platform may still revise or have missing. Post insights only; null on account insights and when every day is final. |  |
| **stale** | **Boolean** | True when the platform refused the refresh and the answer is the last stored copy. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InsightMetricsResponseMeta.new(
  entity: null,
  account_id: null,
  platform_post_id: null,
  platform: null,
  granularity: null,
  group_by: null,
  timeframe: null,
  from_date: null,
  to_date: null,
  unavailable_metrics: null,
  units: null,
  data_delay: null,
  provisional_since: null,
  stale: null
)
```

