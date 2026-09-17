# Zernio::LinkWhatsAppCatalogRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp account ID |  |
| **catalog_account_id** | **String** | Account whose Meta login token performs the call | [optional] |
| **catalog_id** | **String** | Meta catalog ID |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::LinkWhatsAppCatalogRequest.new(
  account_id: null,
  catalog_account_id: null,
  catalog_id: null
)
```

