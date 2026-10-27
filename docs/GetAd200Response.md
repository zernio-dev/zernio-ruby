# Zernio::GetAd200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad** | [**Ad**](Ad.md) |  | [optional] |
| **cached_at** | **Time** | Google RSA details cache timestamp. | [optional] |
| **stale** | **Boolean** | Whether Google RSA details use the last successful cached response. | [optional] |
| **status_read_at** | **Time** | With &#x60;live&#x3D;true&#x60;, when the switches were read from the platform; null when the live read failed and the stored values were returned. Always set on an unsynced Meta ad read with &#x60;accountId&#x60;, the time of that read. | [optional] |
| **dark_post** | [**GetAd200ResponseDarkPost**](GetAd200ResponseDarkPost.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAd200Response.new(
  ad: null,
  cached_at: null,
  stale: null,
  status_read_at: null,
  dark_post: null
)
```

