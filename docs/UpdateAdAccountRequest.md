# Zernio::UpdateAdAccountRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage** | **Boolean** | Send true to store this write as a staged change instead of applying it. The response is &#x60;202&#x60; with the change, and POST /v1/ads/changes/{changeId}/confirm applies it later. Cannot be combined with &#x60;validateOnly&#x60;. | [optional] |
| **account_id** | **String** | Account ID (metaads, or a facebook/instagram posting account) |  |
| **ad_account_id** | **String** | Meta ad account ID (act_...) |  |
| **name** | **String** | New ad account name. | [optional] |
| **spend_cap** | **Float** | Account spend cap in whole currency units; null removes it. | [optional] |
| **reset_amount_spent** | **Boolean** | Restart the amount counted against the cap from zero. Cannot be combined with spendCap null. | [optional] |
| **default_dsa_beneficiary** | **String** | Legal entity benefiting from ads on this ad account | [optional] |
| **default_dsa_payor** | **String** | Legal entity paying for ads on this ad account. Defaults to defaultDsaBeneficiary when omitted. Requires defaultDsaBeneficiary. | [optional] |
| **tracking_url_template** | **String** | **Google only.** Account tracking template (customer.tracking_url_template); an empty string clears it. | [optional] |
| **final_url_suffix** | **String** | **Google only.** Account final URL suffix (customer.final_url_suffix); an empty string clears it. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdAccountRequest.new(
  stage: null,
  account_id: null,
  ad_account_id: null,
  name: null,
  spend_cap: null,
  reset_amount_spent: null,
  default_dsa_beneficiary: null,
  default_dsa_payor: null,
  tracking_url_template: null,
  final_url_suffix: null
)
```

