# Zernio::ValidatePhoneNumberKycAddress400ResponseDetailsAddressSuggestionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **value** | **String** |  | [optional] |
| **source** | **String** | Present when the correction is a Spanish regional street-name form (e.g. &#39;Artazagane Kalea 5&#39; for &#39;Calle Artazagane 5&#39;) that the carrier validates, rather than the carrier&#39;s own correction. Show it for the customer to confirm, never apply it automatically. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ValidatePhoneNumberKycAddress400ResponseDetailsAddressSuggestionsInner.new(
  field: administrative_area,
  label: State / Province,
  value: Dublin,
  source: null
)
```

