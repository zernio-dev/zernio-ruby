# Zernio::CreateAdCatalogRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | A facebook, instagram, metaads or whatsapp account ID |  |
| **catalog_account_id** | **String** | Account whose Meta login token performs the call (see GET) | [optional] |
| **ad_account_id** | **String** | Ad account whose owner business creates the catalog | [optional] |
| **business_id** | **String** | Business portfolio that owns the catalog | [optional] |
| **name** | **String** |  |  |
| **vertical** | **String** |  | [optional][default to &#39;commerce&#39;] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateAdCatalogRequest.new(
  account_id: null,
  catalog_account_id: null,
  ad_account_id: null,
  business_id: null,
  name: null,
  vertical: null
)
```

