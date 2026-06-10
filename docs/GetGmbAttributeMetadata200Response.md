# Zernio::GetGmbAttributeMetadata200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **location_id** | **String** | Only present in location mode. | [optional] |
| **attribute_metadata** | [**Array&lt;GetGmbAttributeMetadata200ResponseAttributeMetadataInner&gt;**](GetGmbAttributeMetadata200ResponseAttributeMetadataInner.md) |  | [optional] |
| **next_page_token** | **String** | Present when additional pages of results are available. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetGmbAttributeMetadata200Response.new(
  success: null,
  account_id: null,
  location_id: null,
  attribute_metadata: null,
  next_page_token: null
)
```

