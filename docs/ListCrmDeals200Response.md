# Zernio::ListCrmDeals200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deals** | [**Array&lt;CrmDeal&gt;**](CrmDeal.md) |  |  |
| **next_cursor** | **String** | Pass back as &#x60;cursor&#x60; for the next page; null on the last page. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListCrmDeals200Response.new(
  deals: null,
  next_cursor: null
)
```

