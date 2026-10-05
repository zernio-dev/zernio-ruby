# Zernio::WebhookPayloadAdVideoProcessedVideo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Meta video id, as returned by the 202 upload response. |  |
| **platform_ad_account_id** | **String** | Meta ad account id (act_&lt;n&gt;) the video was uploaded to. |  |
| **status** | **String** | &#x60;ready&#x60;: usable as &#x60;video.id&#x60; on the create endpoints. &#x60;error&#x60;: Meta could not process it; upload again. |  |
| **error** | **String** | Meta&#39;s processing error when status is &#x60;error&#x60;, otherwise null. |  |
| **thumbnail_url** | **String** | Meta&#39;s auto-generated poster when status is &#x60;ready&#x60; and Meta produced one, otherwise null. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadAdVideoProcessedVideo.new(
  id: null,
  platform_ad_account_id: null,
  status: null,
  error: null,
  thumbnail_url: null
)
```

