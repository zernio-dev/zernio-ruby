# Zernio::CheckPhoneNumberAvailability200ResponseSoldOutAreasInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ndc** | **String** | Area code (national destination code). | [optional] |
| **name** | **String** | Area name. | [optional] |
| **pre_orderable** | **Boolean** | Whether this area can be pre-ordered: the carrier sources a number in it (usually 2 to 4 weeks, never guaranteed). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CheckPhoneNumberAvailability200ResponseSoldOutAreasInner.new(
  ndc: null,
  name: null,
  pre_orderable: null
)
```

