# Zernio::UpdateAdKeywordRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **cpc_bid** | **Float** | Max CPC bid for this keyword, in the ad account currency. Takes effect only under Manual CPC bidding. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdKeywordRequest.new(
  status: null,
  cpc_bid: null
)
```

