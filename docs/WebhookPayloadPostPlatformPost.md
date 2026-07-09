# Zernio::WebhookPayloadPostPlatformPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **content** | **String** |  |  |
| **status** | **String** | Post-level status AT FIRE TIME. May still be &#x60;publishing&#x60; if other platforms haven&#39;t terminated; check this field rather than assuming.  |  |
| **scheduled_for** | **Time** |  |  |
| **published_at** | **Time** |  | [optional] |
| **platforms** | [**Array&lt;WebhookPayloadPostPlatformPostPlatformsInner&gt;**](WebhookPayloadPostPlatformPostPlatformsInner.md) |  |  |
| **metadata** | **Hash&lt;String, Object&gt;** | The free-form &#x60;metadata&#x60; object supplied when the post was created, echoed back so you can map events onto your own records. Omitted when the post was created without it. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadPostPlatformPost.new(
  id: null,
  content: null,
  status: null,
  scheduled_for: null,
  published_at: null,
  platforms: null,
  metadata: null
)
```

