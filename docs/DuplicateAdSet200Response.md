# Zernio::DuplicateAdSet200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **copied_ad_set_id** | **String** | Platform ID of the new ad set | [optional] |
| **copied_ad_ids** | **Array&lt;String&gt;** | Platform IDs of the copied ads | [optional] |
| **ad_id_map** | **Hash&lt;String, String&gt;** | Meta only: source ad ID to copied ad ID. Empty when &#x60;deepCopy&#x60; is false. | [optional] |
| **discovery** | **String** |  | [optional] |
| **raw** | **Object** | Platform-native response from the copy (TikTok). Absent on Meta, which returns &#x60;adIdMap&#x60; instead. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::DuplicateAdSet200Response.new(
  copied_ad_set_id: null,
  copied_ad_ids: null,
  ad_id_map: null,
  discovery: null,
  raw: null
)
```

