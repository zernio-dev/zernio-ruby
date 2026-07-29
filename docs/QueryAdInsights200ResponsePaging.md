# Zernio::QueryAdInsights200ResponsePaging

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **after** | **String** | Meta cursor for the next page; null when exhausted. | [optional] |
| **next_page_token** | **String** | Google cursor for the next page; null when exhausted. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::QueryAdInsights200ResponsePaging.new(
  after: null,
  next_page_token: null
)
```

