# Zernio::UpdateAdRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **budget** | [**UpdateAdRequestBudget**](UpdateAdRequestBudget.md) |  | [optional] |
| **targeting** | [**UpdateAdRequestTargeting**](UpdateAdRequestTargeting.md) |  | [optional] |
| **creative** | [**UpdateAdRequestCreative**](UpdateAdRequestCreative.md) |  | [optional] |
| **name** | **String** | Rename the ad. Now propagated to Meta (POST /{ad-id}); non-Meta platforms return 501. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdRequest.new(
  status: null,
  budget: null,
  targeting: null,
  creative: null,
  name: null
)
```

