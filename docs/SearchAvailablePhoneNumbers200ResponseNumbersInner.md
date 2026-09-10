# Zernio::SearchAvailablePhoneNumbers200ResponseNumbersInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number** | **String** | E.164. Pass it as &#x60;phoneNumber&#x60; on POST /v1/phone-numbers/purchase to buy this exact number. | [optional] |
| **features** | **Array&lt;String&gt;** | Provider capability list for this number (e.g. voice, sms, mms). | [optional] |
| **locality** | **String** | Town or rate center the number belongs to, as the carrier names it (e.g. WACO). | [optional] |
| **best_effort** | **Boolean** | true when the carrier added this number because too few matched your filters, so it may be outside the requested prefix or locality. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SearchAvailablePhoneNumbers200ResponseNumbersInner.new(
  phone_number: null,
  features: null,
  locality: null,
  best_effort: null
)
```

