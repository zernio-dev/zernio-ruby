# Zernio::CreateWhatsAppFlow200ResponseFlow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **categories** | **Array&lt;String&gt;** |  | [optional] |
| **version** | **Integer** | Version within the clone lineage | [optional] |
| **lineage_id** | **String** | Version-lineage group key | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateWhatsAppFlow200ResponseFlow.new(
  id: null,
  name: null,
  status: DRAFT,
  categories: null,
  version: null,
  lineage_id: null
)
```

