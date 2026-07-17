# Zernio::AssignGoogleBusinessLocationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | Target profile to connect the location onto. |  |
| **selected_location_id** | **String** | The Google Business location ID to assign (e.g. \&quot;locations/123\&quot;). |  |
| **google_account_id** | **String** | Optional but recommended. The Google Business Account resource name (\&quot;accounts/123\&quot;) that owns the location (from GET gmb-locations). When provided the location is resolved directly instead of by enumerating the account, required for accounts with many locations.  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AssignGoogleBusinessLocationRequest.new(
  profile_id: null,
  selected_location_id: null,
  google_account_id: null
)
```

