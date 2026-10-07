# Zernio::ListSharedBudgets200ResponseBudgetsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Numeric budget id; pass as sharedBudgetId. | [optional] |
| **name** | **String** |  | [optional] |
| **amount** | **Float** | In the account&#39;s currency units. | [optional] |
| **type** | **String** |  | [optional] |
| **delivery_method** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **campaign_count** | **Integer** | campaign_budget.reference_count | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListSharedBudgets200ResponseBudgetsInner.new(
  id: null,
  name: null,
  amount: null,
  type: null,
  delivery_method: null,
  status: null,
  campaign_count: null
)
```

