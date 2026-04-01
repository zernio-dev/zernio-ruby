# Late::AdMetrics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **spend** | **Float** |  | [optional] |
| **impressions** | **Integer** |  | [optional] |
| **reach** | **Integer** |  | [optional] |
| **clicks** | **Integer** |  | [optional] |
| **ctr** | **Float** | Click-through rate (%) | [optional] |
| **cpc** | **Float** | Cost per click | [optional] |
| **cpm** | **Float** | Cost per 1000 impressions | [optional] |
| **engagement** | **Integer** |  | [optional] |
| **last_synced_at** | **Time** | Present on individual ads only, not on campaign aggregations | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::AdMetrics.new(
  spend: null,
  impressions: null,
  reach: null,
  clicks: null,
  ctr: null,
  cpc: null,
  cpm: null,
  engagement: null,
  last_synced_at: null
)
```

