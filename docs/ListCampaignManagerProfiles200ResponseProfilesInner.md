# Zernio::ListCampaignManagerProfiles200ResponseProfilesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | CM360 user profile id, sent as &#x60;cmProfileId&#x60; to select it. | [optional] |
| **account_id** | **String** |  | [optional] |
| **account_name** | **String** |  | [optional] |
| **user_name** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListCampaignManagerProfiles200ResponseProfilesInner.new(
  profile_id: 998877,
  account_id: 123456,
  account_name: Acme Network,
  user_name: null
)
```

