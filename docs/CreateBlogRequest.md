# Zernio::CreateBlogRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** |  |  |
| **handle** | **String** | URL slug. Generated from the title when omitted. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateBlogRequest.new(
  title: null,
  handle: null
)
```

