# Zernio::DuplicateAdCampaign200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **copied_campaign_id** | **String** | Platform ID of the new campaign | [optional] |
| **ad_set_id_map** | **Hash&lt;String, String&gt;** | Meta only: source ad set ID to copied ad set ID. Empty when &#x60;deepCopy&#x60; is false. | [optional] |
| **ad_id_map** | **Hash&lt;String, String&gt;** | Meta only: source ad ID to copied ad ID, across every copied ad set. Empty when &#x60;deepCopy&#x60; is false. | [optional] |
| **discovery** | **String** |  | [optional] |
| **raw** | **Object** | Platform-native response from the copy (TikTok and LinkedIn). Absent on Meta, which returns &#x60;adSetIdMap&#x60; and &#x60;adIdMap&#x60; instead. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::DuplicateAdCampaign200Response.new(
  copied_campaign_id: null,
  ad_set_id_map: null,
  ad_id_map: null,
  discovery: null,
  raw: null
)
```

