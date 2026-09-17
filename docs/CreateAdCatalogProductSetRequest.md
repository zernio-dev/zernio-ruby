# Zernio::CreateAdCatalogProductSetRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **catalog_account_id** | **String** |  | [optional] |
| **name** | **String** |  |  |
| **filter** | **Hash&lt;String, Object&gt;** | Meta product set filter |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateAdCatalogProductSetRequest.new(
  account_id: null,
  catalog_account_id: null,
  name: null,
  filter: null
)
```

