# Zernio::StartCreatorPayoutsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** |  |  |
| **country** | **String** | ISO 3166-1 alpha-2 country the creator lives in. Required on the first call. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::StartCreatorPayoutsRequest.new(
  action: null,
  country: null
)
```

