# Zernio::WebhookPayloadCommentCommentAd

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Meta ad ID (Instagram only). | [optional] |
| **title** | **String** | Ad creative title (Instagram only). | [optional] |
| **promotion_status** | **String** | Facebook promotion status returned by Graph API. Common values: \&quot;active\&quot; (organic post currently boosted), \&quot;ineligible\&quot; (dark post / ad creative — not promotable because it already is an ad).  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadCommentCommentAd.new(
  id: null,
  title: null,
  promotion_status: null
)
```

