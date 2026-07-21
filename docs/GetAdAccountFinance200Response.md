# Zernio::GetAdAccountFinance200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_account_id** | **String** |  | [optional] |
| **currency** | **String** | ISO 4217 code all money values are expressed in. | [optional] |
| **balance** | **Float** | Outstanding/prepaid balance in whole currency units. | [optional] |
| **amount_spent** | **Float** | Lifetime amount spent in whole currency units. | [optional] |
| **spend_cap** | **Float** | Account spend cap; null when none is set. | [optional] |
| **funding_source** | [**GetAdAccountFinance200ResponseFundingSource**](GetAdAccountFinance200ResponseFundingSource.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdAccountFinance200Response.new(
  ad_account_id: null,
  currency: null,
  balance: null,
  amount_spent: null,
  spend_cap: null,
  funding_source: null
)
```

