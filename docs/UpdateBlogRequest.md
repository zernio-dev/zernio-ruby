# Zernio::UpdateBlogRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** |  | [optional] |
| **handle** | **String** | URL slug. Changing it changes the blog URL on the store. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateBlogRequest.new(
  title: null,
  handle: null
)
```

