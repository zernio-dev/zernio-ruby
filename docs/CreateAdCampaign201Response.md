# Zernio::CreateAdCampaign201Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_account_id** | **String** |  | [optional] |
| **campaign_id** | **String** | Platform id of the new campaign | [optional] |
| **objective** | **String** | Resolved ODAX objective (e.g. OUTCOME_SALES). | [optional] |
| **status** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateAdCampaign201Response.new(
  ad_account_id: null,
  campaign_id: null,
  objective: null,
  status: null
)
```

