# Zernio::CreateGoogleBusinessLocationRequestServiceArea

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_type** | **String** |  |  |
| **region_code** | **String** | Required when businessType is CUSTOMER_LOCATION_ONLY. | [optional] |
| **places** | [**CreateGoogleBusinessLocationRequestServiceAreaPlaces**](CreateGoogleBusinessLocationRequestServiceAreaPlaces.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateGoogleBusinessLocationRequestServiceArea.new(
  business_type: null,
  region_code: null,
  places: null
)
```

