# Zernio::GoogleCustomerConversionGoal

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category** | **String** |  | [optional] |
| **origin** | **String** |  | [optional] |
| **biddable** | **Boolean** | Used for bidding and counted in the Conversions column. | [optional] |
| **resource_name** | **String** |  | [optional] |
| **conversion_actions** | [**Array&lt;GoogleCustomerConversionGoalConversionActionsInner&gt;**](GoogleCustomerConversionGoalConversionActionsInner.md) | Non-removed conversion actions in this category and origin. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GoogleCustomerConversionGoal.new(
  category: null,
  origin: null,
  biddable: null,
  resource_name: null,
  conversion_actions: null
)
```

