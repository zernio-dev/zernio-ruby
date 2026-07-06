# Zernio::CheckPhoneNumberAvailability200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** |  | [optional] |
| **number_type** | **String** |  | [optional] |
| **available** | **Boolean** | Whether deliverable voice inventory exists right now. | [optional] |
| **address_constraint** | **String** |  | [optional] |
| **areas** | **Array&lt;String&gt;** | For &#x60;geo&#x60; only — the area(s) the registered address must be in. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CheckPhoneNumberAvailability200Response.new(
  country: null,
  number_type: null,
  available: null,
  address_constraint: null,
  areas: null
)
```

