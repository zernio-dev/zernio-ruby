# Zernio::WebhookPayloadAdSetCreatedAdObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **level** | **String** | Always &#x60;AD_SET&#x60;. |  |
| **platform_id** | **String** | Platform-native ad set ID. |  |
| **platform_ad_account_id** | **String** | Platform-native ad account ID. |  |
| **name** | **String** |  |  |
| **campaign** | [**WebhookPayloadAdSetCreatedAdObjectCampaign**](WebhookPayloadAdSetCreatedAdObjectCampaign.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadAdSetCreatedAdObject.new(
  level: null,
  platform_id: null,
  platform_ad_account_id: null,
  name: null,
  campaign: null
)
```

