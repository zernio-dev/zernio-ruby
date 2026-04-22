# Zernio::WebhookPayloadPostPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **content** | **String** |  |  |
| **status** | **String** |  |  |
| **scheduled_for** | **Time** |  |  |
| **published_at** | **Time** |  | [optional] |
| **platforms** | [**Array&lt;WebhookPayloadPostPostPlatformsInner&gt;**](WebhookPayloadPostPostPlatformsInner.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadPostPost.new(
  id: null,
  content: null,
  status: null,
  scheduled_for: null,
  published_at: null,
  platforms: null
)
```

