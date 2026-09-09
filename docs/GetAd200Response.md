# Zernio::GetAd200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad** | [**Ad**](Ad.md) |  | [optional] |
| **cached_at** | **Time** | Google RSA details cache timestamp. | [optional] |
| **stale** | **Boolean** | Whether Google RSA details use the last successful cached response. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAd200Response.new(
  ad: null,
  cached_at: null,
  stale: null
)
```

