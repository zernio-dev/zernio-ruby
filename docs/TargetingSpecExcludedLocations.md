# Zernio::TargetingSpecExcludedLocations

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **countries** | **Array&lt;String&gt;** |  | [optional] |
| **regions** | [**Array&lt;CreateStandaloneAdRequestZipsInner&gt;**](CreateStandaloneAdRequestZipsInner.md) |  | [optional] |
| **cities** | [**Array&lt;TargetingSpecExcludedLocationsCitiesInner&gt;**](TargetingSpecExcludedLocationsCitiesInner.md) | Cities to exclude. Optional &#x60;radius&#x60; + &#x60;distance_unit&#x60; exclude a catchment around the city (both must be set together or both omitted); Meta honours the radius on excluded cities. | [optional] |
| **zips** | [**Array&lt;CreateStandaloneAdRequestZipsInner&gt;**](CreateStandaloneAdRequestZipsInner.md) |  | [optional] |
| **places** | [**Array&lt;TargetingSpecExcludedLocationsPlacesInner&gt;**](TargetingSpecExcludedLocationsPlacesInner.md) | Named points of interest to exclude. &#x60;key&#x60; from /v1/ads/targeting/search. | [optional] |
| **neighborhoods** | [**Array&lt;TargetingSpecExcludedLocationsPlacesInner&gt;**](TargetingSpecExcludedLocationsPlacesInner.md) | Named neighbourhood areas to exclude. &#x60;key&#x60; from /v1/ads/targeting/search. | [optional] |
| **custom_locations** | [**Array&lt;TargetingSpecCustomLocationsInner&gt;**](TargetingSpecCustomLocationsInner.md) | Point-radius (lat/lng) pins to exclude (Meta excluded_geo_locations.custom_locations). Mirrors the inclusion customLocations shape. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TargetingSpecExcludedLocations.new(
  countries: null,
  regions: null,
  cities: null,
  zips: null,
  places: null,
  neighborhoods: null,
  custom_locations: null
)
```

