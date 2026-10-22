# Zernio::WebhookPayloadAdReviewAdObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **level** | **String** | Always &#x60;AD&#x60;. |  |
| **platform_id** | **String** | Platform-native ad ID. |  |
| **platform_ad_account_id** | **String** | Platform-native ad account ID. |  |
| **ad_id** | **String** | Zernio ad ID, usable with GET /v1/ads/{adId}. |  |
| **name** | **String** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadAdReviewAdObject.new(
  level: null,
  platform_id: null,
  platform_ad_account_id: null,
  ad_id: null,
  name: null
)
```

