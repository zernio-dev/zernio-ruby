# Zernio::MetaProductFeed

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **product_count** | **Integer** |  | [optional] |
| **schedule** | [**MetaProductFeedSchedule**](MetaProductFeedSchedule.md) |  | [optional] |
| **created_time** | **String** |  | [optional] |
| **latest_upload** | [**MetaFeedUpload**](MetaFeedUpload.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::MetaProductFeed.new(
  id: null,
  name: null,
  product_count: null,
  schedule: null,
  created_time: null,
  latest_upload: null
)
```

