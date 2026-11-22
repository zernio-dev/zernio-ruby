# Zernio::SelectGoogleBusinessLocation200ResponseAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | ID of the created SocialAccount | [optional] |
| **platform** | **String** |  | [optional] |
| **username** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **is_active** | **Boolean** |  | [optional] |
| **selected_location_name** | **String** | Human-readable location display name, NOT a resource name. Do not use it to build API paths. Null when connected with no location. | [optional] |
| **selected_location_id** | **String** | Bare Google Business Profile location id. Combine with the Google Business Profile account id as accounts/{gbpAccountId}/locations/{selectedLocationId} to form the location resource names that gmb-reviews/batch expects in locationNames. Null when connected with no location. | [optional] |
| **needs_location** | **Boolean** | Present and true when the account was connected with no location (allowNoLocation&#x3D;true). Create one with POST /v1/accounts/{accountId}/gmb-locations before using the location endpoints. | [optional] |

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
  selected_location_id: null,
  needs_location: null
)
```

