# Zernio::ListGoogleBusinessLocations200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locations** | [**Array&lt;ListGoogleBusinessLocations200ResponseLocationsInner&gt;**](ListGoogleBusinessLocations200ResponseLocationsInner.md) |  | [optional] |
| **has_more** | **Boolean** | True when more locations exist than were returned (the list is bounded). Prompt the user to narrow the result set with search.  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListGoogleBusinessLocations200Response.new(
  locations: null,
  has_more: null
)
```

