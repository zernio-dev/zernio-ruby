# Zernio::CreateBidStrategyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Google ads SocialAccount id. |  |
| **customer_id** | **String** | Numeric Google Ads customer id (no dashes). Defaults to the account&#39;s connected customer. | [optional] |
| **name** | **String** |  |  |
| **type** | **String** |  |  |
| **target_cpa** | **Float** | Required when type is TARGET_CPA, in the account&#39;s currency units. | [optional] |
| **target_roas** | **Float** | Required when type is TARGET_ROAS; a multiplier (2.0 &#x3D; 2.0x). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateBidStrategyRequest.new(
  account_id: null,
  customer_id: null,
  name: null,
  type: null,
  target_cpa: null,
  target_roas: null
)
```

