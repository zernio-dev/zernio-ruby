# Zernio::GetAdCatalogBatch200ResponseBatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **handle** | **String** |  | [optional] |
| **status** | **String** | Meta&#39;s status, e.g. initial, in_progress, finished | [optional] |
| **errors_total_count** | **Integer** |  | [optional] |
| **errors** | [**Array&lt;GetAdCatalogBatch200ResponseBatchErrorsInner&gt;**](GetAdCatalogBatch200ResponseBatchErrorsInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdCatalogBatch200ResponseBatch.new(
  handle: null,
  status: null,
  errors_total_count: null,
  errors: null
)
```

