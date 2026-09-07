# Zernio::SearchAdLibrary200ResponsePaging

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **after** | **String** | Cursor for the next page; null when exhausted. | [optional] |
| **total** | **Integer** | LinkedIn only. Total matching ads. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SearchAdLibrary200ResponsePaging.new(
  after: null,
  total: null
)
```

