# Zernio::WebhookPayloadAdReviewAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Internal Zernio account ID (same as used in /v1/accounts/{accountId}). |  |
| **profile_id** | **String** | Internal Zernio profile ID this account belongs to. |  |
| **platform** | **String** | Ads connection platform (&#x60;metaads&#x60;, &#x60;googleads&#x60;, &#x60;tiktokads&#x60;, &#x60;linkedinads&#x60;, &#x60;pinterestads&#x60;, &#x60;xads&#x60;, ...). |  |
| **username** | **String** |  |  |
| **display_name** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadAdReviewAccount.new(
  account_id: null,
  profile_id: null,
  platform: tiktokads,
  username: null,
  display_name: null
)
```

