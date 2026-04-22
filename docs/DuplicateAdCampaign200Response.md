# Zernio::DuplicateAdCampaign200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **copied_campaign_id** | **String** | Platform ID of the new campaign | [optional] |
| **discovery** | **String** |  | [optional] |
| **raw** | **Object** | Platform-native response from the copy endpoint (Meta includes ad_object_ids for child copies) | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::DuplicateAdCampaign200Response.new(
  copied_campaign_id: null,
  discovery: null,
  raw: null
)
```

