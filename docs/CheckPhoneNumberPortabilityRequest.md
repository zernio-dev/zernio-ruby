# Zernio::CheckPhoneNumberPortabilityRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_numbers** | **Array&lt;String&gt;** | E.164 numbers to check, e.g. +13035550000. At most one without an API key. |  |
| **claim_links** | **Boolean** | true adds &#x60;claimId&#x60; and &#x60;claimUrl&#x60; to portable results even when you send an API key, e.g. to hand a user a signup link that opens the port form with their number. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CheckPhoneNumberPortabilityRequest.new(
  phone_numbers: null,
  claim_links: null
)
```

