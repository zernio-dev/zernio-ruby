# Zernio::GetGoogleBusinessLocationDetails200ResponseLocation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Business name as set in GBP | [optional] |
| **place_id** | **String** | Google Maps Place ID for this location | [optional] |
| **review_url** | **String** | Public \&quot;write a review\&quot; URL Google generates for this place | [optional] |
| **maps_uri** | **String** | Public Google Maps URL for this location | [optional] |
| **is_verified** | **Boolean** | True when the location has Voice of Merchant (verified + live on Google) | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetGoogleBusinessLocationDetails200ResponseLocation.new(
  name: null,
  place_id: null,
  review_url: null,
  maps_uri: null,
  is_verified: null
)
```

