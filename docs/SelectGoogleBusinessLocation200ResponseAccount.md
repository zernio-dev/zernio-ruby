# Zernio::SelectGoogleBusinessLocation200ResponseAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | ID of the created SocialAccount | [optional] |
| **platform** | **String** |  | [optional] |
| **username** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **is_active** | **Boolean** |  | [optional] |
| **selected_location_name** | **String** | Human-readable location display name, NOT a resource name. Do not use it to build API paths. | [optional] |
| **selected_location_id** | **String** | Bare GBP location id. Combine with the GBP account id as accounts/{gbpAccountId}/locations/{selectedLocationId} to form the location resource names that gmb-reviews/batch expects in locationNames. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SelectGoogleBusinessLocation200ResponseAccount.new(
  account_id: null,
  platform: null,
  username: null,
  display_name: null,
  is_active: null,
  selected_location_name: null,
  selected_location_id: null
)
```

