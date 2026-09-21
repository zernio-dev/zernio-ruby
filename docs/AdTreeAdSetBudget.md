# Zernio::AdTreeAdSetBudget

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** |  | [optional] |
| **type** | **String** |  | [optional] |
| **daily** | **Float** | LinkedIn only. The campaign&#39;s &#x60;dailyBudget&#x60;. LinkedIn allows a daily AND a lifetime budget on the same campaign, which &#x60;amount&#x60;/&#x60;type&#x60; cannot express (daily wins there); read &#x60;daily&#x60; and &#x60;lifetime&#x60; to see both. | [optional] |
| **lifetime** | **Float** | LinkedIn only. The campaign&#39;s &#x60;totalBudget&#x60;, readable even when a daily budget is also set. | [optional] |
| **pacing** | **String** | LinkedIn only. The campaign&#39;s &#x60;pacingStrategy&#x60;: how fast LinkedIn may spend the budget. Typically LINEAR or ACCELERATED; the list is open. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdTreeAdSetBudget.new(
  amount: null,
  type: null,
  daily: null,
  lifetime: null,
  pacing: null
)
```

