# Zernio::MetricsPagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_cursor** | **String** | Send it back as &#x60;cursor&#x60;, with the same query, for the next page. null on the last page. |  |
| **has_more** | **Boolean** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::MetricsPagination.new(
  next_cursor: null,
  has_more: null
)
```

