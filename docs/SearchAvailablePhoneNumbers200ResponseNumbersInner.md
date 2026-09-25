# Zernio::SearchAvailablePhoneNumbers200ResponseNumbersInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number** | **String** | E.164. Pass it as &#x60;phoneNumber&#x60; on POST /v1/phone-numbers/purchase to buy this exact number. | [optional] |
| **features** | **Array&lt;String&gt;** | Provider capability list for this number (e.g. voice, sms, mms). | [optional] |
| **locality** | **String** | Town or rate center the number belongs to, as the carrier names it (e.g. WACO). | [optional] |
| **best_effort** | **Boolean** | true when the carrier added this number because too few matched your filters, so it may be outside the requested prefix or locality. | [optional] |
| **masked_number** | **String** | Keyless calls only, in place of &#x60;phoneNumber&#x60;: the number with its middle digits masked, e.g. +44 20 •••• 0123. | [optional] |
| **number_type** | **String** | Keyless calls only. Without a &#x60;numberType&#x60; filter a keyless search mixes every type the country sells, so each result names its own. | [optional] |
| **claim_id** | **String** | Keyless calls only. Opaque, expires after 7 days. Pass it as &#x60;claimId&#x60; on a keyless POST /v1/phone-numbers/purchase. | [optional] |
| **claim_url** | **String** | Keyless calls only. Signup link that opens the dashboard&#39;s confirm step for this number. The number is not held: if it is gone by then, the buyer picks another in the same area. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SearchAvailablePhoneNumbers200ResponseNumbersInner.new(
  phone_number: null,
  features: null,
  locality: null,
  best_effort: null,
  masked_number: null,
  number_type: null,
  claim_id: null,
  claim_url: null
)
```

