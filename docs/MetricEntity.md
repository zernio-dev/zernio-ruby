# Zernio::MetricEntity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity** | **String** |  |  |
| **path** | **String** |  |  |
| **required_scope** | **Array&lt;String&gt;** |  |  |
| **max_scope_ids** | **Hash&lt;String, Integer&gt;** |  |  |
| **max_range_days** | **Integer** |  |  |
| **default_range_days** | **Integer** |  |  |
| **granularities** | **Array&lt;String&gt;** |  |  |
| **sorts** | **Array&lt;String&gt;** |  |  |
| **max_sorted_rows** | **Integer** |  |  |
| **includes** | [**Array&lt;MetricEntityIncludesInner&gt;**](MetricEntityIncludesInner.md) |  |  |
| **group_by** | [**Array&lt;MetricEntityGroupByInner&gt;**](MetricEntityGroupByInner.md) |  |  |
| **attributions** | [**Array&lt;MetricEntityAttributionsInner&gt;**](MetricEntityAttributionsInner.md) |  |  |
| **origins** | **Array&lt;String&gt;** |  |  |
| **metrics** | [**Array&lt;MetricDefinition&gt;**](MetricDefinition.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::MetricEntity.new(
  entity: null,
  path: null,
  required_scope: null,
  max_scope_ids: null,
  max_range_days: null,
  default_range_days: null,
  granularities: null,
  sorts: null,
  max_sorted_rows: null,
  includes: null,
  group_by: null,
  attributions: null,
  origins: null,
  metrics: null
)
```

