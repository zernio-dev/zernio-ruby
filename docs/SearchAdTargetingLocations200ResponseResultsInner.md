# Zernio::SearchAdTargetingLocations200ResponseResultsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | Meta&#39;s opaque location ID. Use this in targeting.cities[].key / regions[].key. |  |
| **name** | **String** |  |  |
| **type** | **String** | Location type as returned by Meta (city, region, country, etc.). |  |
| **country_code** | **String** |  | [optional] |
| **country_name** | **String** |  | [optional] |
| **region** | **String** | Parent region/state name (cities only). | [optional] |
| **region_id** | [**SearchAdTargetingLocations200ResponseResultsInnerRegionId**](SearchAdTargetingLocations200ResponseResultsInnerRegionId.md) |  | [optional] |
| **supports_region** | **Boolean** |  | [optional] |
| **supports_city** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SearchAdTargetingLocations200ResponseResultsInner.new(
  key: null,
  name: null,
  type: null,
  country_code: null,
  country_name: null,
  region: null,
  region_id: null,
  supports_region: null,
  supports_city: null
)
```

