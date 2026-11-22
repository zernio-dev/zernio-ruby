# Zernio::QueryGoogleSearchConsoleSearchAnalytics200ResponsePagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **has_more** | **Boolean** | True when the page is full, so Google may hold more rows. Google does not say for sure. | [optional] |
| **next_start_row** | **Integer** | The startRow for the next page, or null when hasMore is false. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::QueryGoogleSearchConsoleSearchAnalytics200ResponsePagination.new(
  has_more: null,
  next_start_row: null
)
```

