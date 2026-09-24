# Zernio::GetTikTokSmartPlusMaterialReport200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_account_id** | **String** |  | [optional] |
| **level** | **String** |  | [optional] |
| **start_date** | **String** |  | [optional] |
| **end_date** | **String** |  | [optional] |
| **page** | **Integer** |  | [optional] |
| **page_size** | **Integer** |  | [optional] |
| **total_rows** | **Integer** |  | [optional] |
| **total_pages** | **Integer** |  | [optional] |
| **rows** | [**Array&lt;GetTikTokSmartPlusMaterialReport200ResponseRowsInner&gt;**](GetTikTokSmartPlusMaterialReport200ResponseRowsInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetTikTokSmartPlusMaterialReport200Response.new(
  ad_account_id: null,
  level: null,
  start_date: null,
  end_date: null,
  page: null,
  page_size: null,
  total_rows: null,
  total_pages: null,
  rows: null
)
```

