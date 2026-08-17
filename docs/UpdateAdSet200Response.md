# Zernio::UpdateAdSet200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **budget** | [**AdBudget**](AdBudget.md) |  | [optional] |
| **budget_level** | **String** |  | [optional] |
| **status** | **String** | The status written to the ad set. Absent when nothing was written (see statusMessage). | [optional] |
| **status_updated** | **Integer** | Number of ads whose own stored status changed alongside the ad set switch | [optional] |
| **status_skipped** | **Integer** | Number of ads whose own status was left as it was | [optional] |
| **status_skipped_reasons** | **Array&lt;String&gt;** | Why each group of ads was skipped | [optional] |
| **status_message** | **String** | Present only where the platform has no ad-set switch and no child ad was actionable; &#x60;status&#x60; is then absent because nothing was written | [optional] |
| **bid_strategy** | [**BidStrategy**](BidStrategy.md) |  | [optional] |
| **bid_amount** | **Float** |  | [optional] |
| **roas_average_floor** | **Float** |  | [optional] |
| **platform_specific_data** | **Object** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdSet200Response.new(
  budget: null,
  budget_level: null,
  status: null,
  status_updated: null,
  status_skipped: null,
  status_skipped_reasons: null,
  status_message: null,
  bid_strategy: null,
  bid_amount: null,
  roas_average_floor: null,
  platform_specific_data: null
)
```

