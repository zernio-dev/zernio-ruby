# Late::UpdateAdSetRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **budget** | [**UpdateAdSetRequestBudget**](UpdateAdSetRequestBudget.md) |  | [optional] |
| **status** | **String** | Omit if only updating budget | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::UpdateAdSetRequest.new(
  platform: null,
  budget: null,
  status: null
)
```

