# Zernio::CreateBidStrategyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Google ads SocialAccount id. |  |
| **ad_account_id** | **String** | Platform ad account ID (Google customer ID, digits only). Defaults to the account&#39;s connected customer. | [optional] |
| **customer_id** | **String** | Alias of adAccountId, kept for existing callers | [optional] |
| **name** | **String** |  |  |
| **type** | **String** |  |  |
| **target_cpa** | **Float** | Required when type is TARGET_CPA, in the account&#39;s currency units. | [optional] |
| **target_roas** | **Float** | Required when type is TARGET_ROAS; a multiplier (2.0 &#x3D; 2.0x). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateBidStrategyRequest.new(
  account_id: null,
  ad_account_id: null,
  customer_id: null,
  name: null,
  type: null,
  target_cpa: null,
  target_roas: null
)
```

