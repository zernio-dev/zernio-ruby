# Zernio::DuplicateAdSet200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **copied_ad_set_id** | **String** | Platform ID of the new ad set | [optional] |
| **discovery** | **String** |  | [optional] |
| **raw** | **Object** | Meta&#39;s native copy response (includes ad_object_ids for child copies) | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::DuplicateAdSet200Response.new(
  copied_ad_set_id: null,
  discovery: null,
  raw: null
)
```

