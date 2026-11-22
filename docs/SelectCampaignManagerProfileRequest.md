# Zernio::SelectCampaignManagerProfileRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pending_data_token** | **String** | Token from the headless redirect. |  |
| **cm_profile_id** | **String** | A profileId from the profiles list. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SelectCampaignManagerProfileRequest.new(
  pending_data_token: null,
  cm_profile_id: 998877
)
```

