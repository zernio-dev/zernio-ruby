# Zernio::TargetingSpecExcludedLocations

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **countries** | **Array&lt;String&gt;** |  | [optional] |
| **regions** | [**Array&lt;CreateStandaloneAdRequestZipsInner&gt;**](CreateStandaloneAdRequestZipsInner.md) |  | [optional] |
| **cities** | [**Array&lt;CreateStandaloneAdRequestZipsInner&gt;**](CreateStandaloneAdRequestZipsInner.md) |  | [optional] |
| **zips** | [**Array&lt;CreateStandaloneAdRequestZipsInner&gt;**](CreateStandaloneAdRequestZipsInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TargetingSpecExcludedLocations.new(
  countries: null,
  regions: null,
  cities: null,
  zips: null
)
```

