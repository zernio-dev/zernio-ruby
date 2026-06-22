# Zernio::CreateStandaloneAdRequestExcludedLocations

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **countries** | **Array&lt;String&gt;** | ISO-3166 alpha-2 country codes to exclude. | [optional] |
| **regions** | [**Array&lt;CreateStandaloneAdRequestPlacesInner&gt;**](CreateStandaloneAdRequestPlacesInner.md) |  | [optional] |
| **cities** | [**Array&lt;CreateStandaloneAdRequestPlacesInner&gt;**](CreateStandaloneAdRequestPlacesInner.md) |  | [optional] |
| **zips** | [**Array&lt;CreateStandaloneAdRequestPlacesInner&gt;**](CreateStandaloneAdRequestPlacesInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateStandaloneAdRequestExcludedLocations.new(
  countries: null,
  regions: null,
  cities: null,
  zips: null
)
```

