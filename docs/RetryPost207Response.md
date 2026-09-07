# Zernio::RetryPost207Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** |  | [optional] |
| **error** | **String** | Summary of why the retry did not fully succeed. | [optional] |
| **post** | [**Post**](Post.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RetryPost207Response.new(
  message: null,
  error: null,
  post: null
)
```

