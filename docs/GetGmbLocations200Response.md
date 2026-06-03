# Zernio::GetGmbLocations200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locations** | [**Array&lt;GetGmbLocations200ResponseLocationsInner&gt;**](GetGmbLocations200ResponseLocationsInner.md) |  | [optional] |
| **has_more** | **Boolean** | True when more locations exist than were returned (use search to narrow down). | [optional] |
| **selected_location_id** | **String** |  | [optional] |
| **cached** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetGmbLocations200Response.new(
  locations: null,
  has_more: null,
  selected_location_id: null,
  cached: null
)
```

