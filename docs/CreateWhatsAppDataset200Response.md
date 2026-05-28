# Zernio::CreateWhatsAppDataset200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dataset_id** | **String** | Meta dataset ID linked to the WABA | [optional] |
| **created** | **Boolean** | True if Meta created a new dataset on this call; false if one already existed | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateWhatsAppDataset200Response.new(
  dataset_id: null,
  created: null
)
```

