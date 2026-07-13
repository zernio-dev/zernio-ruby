# Zernio::UpdateAdAccountRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Social account ID (metaads, or a facebook/instagram posting account) |  |
| **ad_account_id** | **String** | Meta ad account ID (act_...) |  |
| **default_dsa_beneficiary** | **String** | Legal entity benefiting from ads on this ad account |  |
| **default_dsa_payor** | **String** | Legal entity paying for ads on this ad account. Defaults to defaultDsaBeneficiary when omitted. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdAccountRequest.new(
  account_id: null,
  ad_account_id: null,
  default_dsa_beneficiary: null,
  default_dsa_payor: null
)
```

