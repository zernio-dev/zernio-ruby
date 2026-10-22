# Zernio::WebhookPayloadAdReviewReview

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  |  |
| **raw** | **String** | Platform-native status string, forwarded verbatim (Meta &#x60;ACTIVE&#x60; / &#x60;DISAPPROVED&#x60;, TikTok &#x60;DISABLE&#x60;, ...). |  |
| **reasons** | [**Array&lt;WebhookPayloadAdReviewReviewReasonsInner&gt;**](WebhookPayloadAdReviewReviewReasonsInner.md) | Why the platform rejected the ad, when it says. Always empty on &#x60;approved&#x60;. Most networks only return a generic message today. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadAdReviewReview.new(
  status: null,
  raw: null,
  reasons: null
)
```

