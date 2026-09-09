# Zernio::UpdateGoogleBusinessLocationDetailsRequestServiceArea

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_type** | **String** |  | [optional] |
| **places** | [**UpdateGoogleBusinessLocationDetailsRequestServiceAreaPlaces**](UpdateGoogleBusinessLocationDetailsRequestServiceAreaPlaces.md) |  | [optional] |
| **region_code** | **String** | Immutable. CLDR region code of the country the business is based in (e.g. &#39;BR&#39;) | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateGoogleBusinessLocationDetailsRequestServiceArea.new(
  business_type: null,
  places: null,
  region_code: null
)
```

