# Zernio::UpdateAdCampaignStatus200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | The status written to the campaign | [optional] |
| **updated** | **Integer** | Number of ads whose own stored status changed too. 0 is normal on a resume whose ads are all awaiting the platform. | [optional] |
| **skipped** | **Integer** | Number of ads whose own status was left as it was | [optional] |
| **skipped_reasons** | **Array&lt;String&gt;** | Why each group of ads was skipped | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdCampaignStatus200Response.new(
  status: null,
  updated: null,
  skipped: null,
  skipped_reasons: null
)
```

