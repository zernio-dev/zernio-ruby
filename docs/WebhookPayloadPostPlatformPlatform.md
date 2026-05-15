# Zernio::WebhookPayloadPostPlatformPlatform

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Platform name (e.g. &#x60;twitter&#x60;, &#x60;tiktok&#x60;, &#x60;instagram&#x60;). |  |
| **status** | **String** | Terminal status this event fires on. Matches the event suffix. |  |
| **platform_post_id** | **String** | Platform-native post id. Present on &#x60;published&#x60;, absent on &#x60;failed&#x60;. | [optional] |
| **published_url** | **String** | Public URL to the platform-side post. Present on &#x60;published&#x60; (when the platform exposes one and it is not a draft). | [optional] |
| **error** | **String** | Error message from the platform. Present on &#x60;failed&#x60;, absent on &#x60;published&#x60;. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadPostPlatformPlatform.new(
  name: null,
  status: null,
  platform_post_id: null,
  published_url: null,
  error: null
)
```

