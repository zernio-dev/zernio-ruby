# Late::WebhookPayloadPostPost

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
require 'late-sdk'

instance = Late::WebhookPayloadPostPost.new(
  id: null,
  content: null,
  status: null,
  scheduled_for: null,
  published_at: null,
  platforms: null
)
```

