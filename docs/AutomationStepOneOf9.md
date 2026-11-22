# Zernio::AutomationStepOneOf9

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **type** | **String** |  |  |
| **metric** | **String** | A condition metric or &#x60;result:&lt;key&gt;&#x60;, not a calendar metric. |  |
| **window** | **String** | A condition window. |  |
| **best** | **String** | Which end is best. Defaults to lowest for &#x60;cpa&#x60;, &#x60;cpc&#x60;, &#x60;cpm&#x60;, &#x60;frequency&#x60; and cost results, highest otherwise. | [optional] |
| **from** | **Integer** | How many objects give budget. |  |
| **to** | **Integer** | How many objects receive it. |  |
| **by** | **String** | From 1% to 90%. | [optional] |
| **amount** | **Float** |  | [optional] |
| **min** | **Float** | A giver&#39;s budget never goes below this. | [optional] |
| **max** | **Float** | A receiver&#39;s budget never goes above this. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationStepOneOf9.new(
  id: null,
  type: null,
  metric: roas,
  window: last_7d,
  best: null,
  from: null,
  to: null,
  by: 20%,
  amount: null,
  min: null,
  max: null
)
```

