# Zernio::RfPrediction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prediction_id** | **String** |  | [optional] |
| **status** | **String** | ready | pending | failed:&lt;meta code&gt; | [optional] |
| **budget** | **Float** | Quoted (or provided) lifetime budget for the window. | [optional] |
| **reach** | **Integer** | Predicted (or requested) unique reach. | [optional] |
| **impressions** | **Integer** |  | [optional] |
| **min_budget** | **Float** | Meta&#39;s allowed lower bound for this spec. | [optional] |
| **max_budget** | **Float** |  | [optional] |
| **min_reach** | **Integer** |  | [optional] |
| **max_reach** | **Integer** |  | [optional] |
| **frequency_cap** | **Integer** |  | [optional] |
| **start_time** | **Integer** | Unix seconds; the reserved window the R&amp;F ad set will run on. | [optional] |
| **stop_time** | **Integer** |  | [optional] |
| **expires_at** | **String** | When the reservation&#39;s locked price expires (set after reserving). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RfPrediction.new(
  prediction_id: null,
  status: null,
  budget: null,
  reach: null,
  impressions: null,
  min_budget: null,
  max_budget: null,
  min_reach: null,
  max_reach: null,
  frequency_cap: null,
  start_time: null,
  stop_time: null,
  expires_at: null
)
```

