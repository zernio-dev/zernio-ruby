# Zernio::WebhookPayloadAdVideoProcessedAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Internal Zernio account ID. |  |
| **profile_id** | **String** | Internal Zernio profile ID this account belongs to. |  |
| **platform** | **String** | Ads connection platform. Currently always &#x60;metaads&#x60;. |  |
| **username** | **String** |  |  |
| **display_name** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadAdVideoProcessedAccount.new(
  account_id: null,
  profile_id: null,
  platform: metaads,
  username: null,
  display_name: null
)
```

