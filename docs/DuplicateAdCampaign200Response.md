# Late::DuplicateAdCampaign200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **copied_campaign_id** | **String** | Platform ID of the new campaign | [optional] |
| **discovery** | **String** |  | [optional] |
| **raw** | **Object** | Platform-native response from the copy endpoint (Meta includes ad_object_ids for child copies) | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::DuplicateAdCampaign200Response.new(
  copied_campaign_id: null,
  discovery: null,
  raw: null
)
```

