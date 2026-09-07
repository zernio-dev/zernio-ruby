# Zernio::UpdateBidStrategyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Google ads SocialAccount id. |  |
| **customer_id** | **String** | Numeric Google Ads customer id (no dashes). Defaults to the account&#39;s connected customer. | [optional] |
| **name** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **target_cpa** | **Float** |  | [optional] |
| **target_roas** | **Float** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateBidStrategyRequest.new(
  account_id: null,
  customer_id: null,
  name: null,
  type: null,
  target_cpa: null,
  target_roas: null
)
```

