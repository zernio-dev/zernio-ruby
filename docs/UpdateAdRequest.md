# Late::UpdateAdRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **budget** | [**UpdateAdRequestBudget**](UpdateAdRequestBudget.md) |  | [optional] |
| **targeting** | [**UpdateAdRequestTargeting**](UpdateAdRequestTargeting.md) |  | [optional] |
| **name** | **String** |  | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::UpdateAdRequest.new(
  status: null,
  budget: null,
  targeting: null,
  name: null
)
```

