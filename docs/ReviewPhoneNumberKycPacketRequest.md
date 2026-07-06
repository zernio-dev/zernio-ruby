# Zernio::ReviewPhoneNumberKycPacketRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** |  |  |
| **number_type** | **String** |  |  |
| **values** | **Hash&lt;String, String&gt;** | requirementId to declared textual value. | [optional] |
| **address** | **Hash&lt;String, String&gt;** | Declared address (street_address, locality, ...), so a mismatched proof-of-address can be flagged. | [optional] |
| **docs** | [**Array&lt;SubmitPhoneNumberKycRequestDocumentsInnerOneOf1&gt;**](SubmitPhoneNumberKycRequestDocumentsInnerOneOf1.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ReviewPhoneNumberKycPacketRequest.new(
  country: null,
  number_type: null,
  values: null,
  address: null,
  docs: null
)
```

