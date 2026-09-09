# Zernio::CreateAdCampaign200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **validate_only** | **Boolean** | Always true. | [optional] |
| **ad_account_id** | **String** |  | [optional] |
| **campaign_id** | **String** | Empty because no campaign was created. | [optional] |
| **objective** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateAdCampaign200Response.new(
  validate_only: null,
  ad_account_id: null,
  campaign_id: null,
  objective: null,
  status: null
)
```

