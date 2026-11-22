# Zernio::SearchGoogleBusinessLocations200ResponseGoogleLocationsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Google location resource name, e.g. \&quot;googleLocations/ChIJ...\&quot;. | [optional] |
| **location** | **Hash&lt;String, Object&gt;** | The matched location as Google returns it (title, storefrontAddress, categories, ...). | [optional] |
| **request_admin_rights_uri** | **String** | Present only when the listing is already claimed. Link to request admin rights. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SearchGoogleBusinessLocations200ResponseGoogleLocationsInner.new(
  name: null,
  location: null,
  request_admin_rights_uri: null
)
```

