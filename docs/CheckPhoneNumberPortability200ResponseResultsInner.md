# Zernio::CheckPhoneNumberPortability200ResponseResultsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number** | **String** |  | [optional] |
| **portable** | **Boolean** |  | [optional] |
| **fast_portable** | **Boolean** | Qualifies for the carrier&#39;s accelerated FastPort lane. | [optional] |
| **not_portable_reason** | **String** | Carrier reason when not portable; null when portable. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CheckPhoneNumberPortability200ResponseResultsInner.new(
  phone_number: null,
  portable: null,
  fast_portable: null,
  not_portable_reason: null
)
```

