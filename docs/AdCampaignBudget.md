# Zernio::AdCampaignBudget

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** |  |  |
| **type** | **String** |  |  |
| **amount_micros** | **String** | Google only. Exact decimal micros; DAILY uses amount_micros and CUSTOM_PERIOD uses total_amount_micros. | [optional] |
| **explicitly_shared** | **Boolean** | Google only. True for a shared budget; null when unavailable. Shared writes require allowSharedBudgetUpdate&#x3D;true; unknown sharing status cannot be overridden. | [optional] |
| **resource_name** | **String** | Google only. campaign_budget.resource_name, or null when unavailable. | [optional] |
| **delivery_method** | **String** | Google only. campaign_budget.delivery_method, typically STANDARD, or null when unavailable. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdCampaignBudget.new(
  amount: null,
  type: null,
  amount_micros: null,
  explicitly_shared: null,
  resource_name: null,
  delivery_method: null
)
```

