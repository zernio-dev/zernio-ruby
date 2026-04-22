# Zernio::UpdateAdSetRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **budget** | [**UpdateAdSetRequestBudget**](UpdateAdSetRequestBudget.md) |  | [optional] |
| **status** | **String** | Omit if only updating budget | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdSetRequest.new(
  platform: null,
  budget: null,
  status: null
)
```

