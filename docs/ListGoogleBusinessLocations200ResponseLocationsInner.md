# Zernio::ListGoogleBusinessLocations200ResponseLocationsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Location ID | [optional] |
| **name** | **String** | Business name | [optional] |
| **account_id** | **String** | Google Business Account ID | [optional] |
| **account_name** | **String** | Account name | [optional] |
| **address** | **String** | Business address | [optional] |
| **category** | **String** | Business category | [optional] |
| **store_code** | **String** | Store code set on the location in Google Business Profile (if any) | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListGoogleBusinessLocations200ResponseLocationsInner.new(
  id: null,
  name: null,
  account_id: null,
  account_name: null,
  address: null,
  category: null,
  store_code: null
)
```

