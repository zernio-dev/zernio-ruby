# Zernio::Blog

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Platform-native blog id (numeric string for Shopify). | [optional] |
| **platform** | **String** |  | [optional] |
| **title** | **String** |  | [optional] |
| **handle** | **String** | URL slug of the blog. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::Blog.new(
  id: null,
  platform: null,
  title: null,
  handle: null
)
```

