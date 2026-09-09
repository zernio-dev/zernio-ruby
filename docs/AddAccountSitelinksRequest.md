# Zernio::AddAccountSitelinksRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio Google Ads connection id. |  |
| **customer_id** | **String** | Google customer id without dashes. Required when the connection has multiple customers. | [optional] |
| **sitelinks** | [**Array&lt;GoogleSitelink&gt;**](GoogleSitelink.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AddAccountSitelinksRequest.new(
  account_id: null,
  customer_id: null,
  sitelinks: null
)
```

