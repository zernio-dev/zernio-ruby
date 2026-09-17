# Zernio::Blog

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Platform-native blog id. Shopify uses a numeric blog id. WordPress.com uses the numeric site id; self-hosted WordPress uses &#x60;1&#x60;, scoped to the connected account. | [optional] |
| **platform** | **String** |  | [optional] |
| **title** | **String** |  | [optional] |
| **handle** | **String** | URL slug on Shopify; site hostname on WordPress. | [optional] |

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

