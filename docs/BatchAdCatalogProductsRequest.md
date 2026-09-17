# Zernio::BatchAdCatalogProductsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **catalog_account_id** | **String** |  | [optional] |
| **requests** | [**Array&lt;BatchAdCatalogProductsRequestRequestsInner&gt;**](BatchAdCatalogProductsRequestRequestsInner.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BatchAdCatalogProductsRequest.new(
  account_id: null,
  catalog_account_id: null,
  requests: null
)
```

