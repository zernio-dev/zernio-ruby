# Zernio::CreateAdCatalogFeedRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **catalog_account_id** | **String** |  | [optional] |
| **name** | **String** |  |  |
| **schedule** | [**CreateAdCatalogFeedRequestSchedule**](CreateAdCatalogFeedRequestSchedule.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateAdCatalogFeedRequest.new(
  account_id: null,
  catalog_account_id: null,
  name: null,
  schedule: null
)
```

