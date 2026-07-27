# Zernio::CheckPhoneNumberAvailability200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** |  | [optional] |
| **number_type** | **String** |  | [optional] |
| **available** | **Boolean** | Whether deliverable voice inventory exists right now. | [optional] |
| **address_constraint** | **String** |  | [optional] |
| **areas** | **Array&lt;String&gt;** | For &#x60;geo&#x60; only — the area(s) the registered address must be in. | [optional] |
| **area_options** | [**Array&lt;CheckPhoneNumberAvailability200ResponseAreaOptionsInner&gt;**](CheckPhoneNumberAvailability200ResponseAreaOptionsInner.md) | Live inventory grouped by area code, largest stock first. For US and CA this is the full country inventory (every area code with stock, named by state/province); other countries list the areas in the latest inventory page (up to 500 numbers, which for most countries is the entire pool). Empty when out of stock (or the area lookup failed). Pass a chosen &#x60;ndc&#x60; as &#x60;areaCode&#x60; on POST /v1/phone-numbers/purchase (or on the KYC submit for regulated countries) to require that area.  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CheckPhoneNumberAvailability200Response.new(
  country: null,
  number_type: null,
  available: null,
  address_constraint: null,
  areas: null,
  area_options: null
)
```

