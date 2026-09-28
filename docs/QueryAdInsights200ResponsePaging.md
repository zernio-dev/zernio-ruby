# Zernio::QueryAdInsights200ResponsePaging

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **after** | **String** | Meta cursor for the next page; null when exhausted. | [optional] |
| **next_page_token** | **String** | Google cursor for the next page; null when exhausted. | [optional] |
| **page** | **Integer** | TikTok only: current page. | [optional] |
| **page_size** | **Integer** | TikTok only. | [optional] |
| **total_rows** | **Integer** | TikTok only. | [optional] |
| **total_pages** | **Integer** | TikTok only. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::QueryAdInsights200ResponsePaging.new(
  after: null,
  next_page_token: null,
  page: null,
  page_size: null,
  total_rows: null,
  total_pages: null
)
```

