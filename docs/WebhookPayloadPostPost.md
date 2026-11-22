# Zernio::WebhookPayloadPostPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **content** | **String** | Absent once publishing finishes when the team does not retain content. | [optional] |
| **content_not_retained** | **Boolean** | True when this team does not retain content and the post text was already cleared. | [optional] |
| **status** | **String** |  |  |
| **scheduled_for** | **Time** |  |  |
| **published_at** | **Time** |  | [optional] |
| **platforms** | [**Array&lt;WebhookPayloadPostPostPlatformsInner&gt;**](WebhookPayloadPostPostPlatformsInner.md) |  |  |
| **metadata** | **Hash&lt;String, Object&gt;** | The free-form &#x60;metadata&#x60; object supplied when the post was created, echoed back so you can map events onto your own records. Omitted when the post was created without it. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadPostPost.new(
  id: null,
  content: null,
  content_not_retained: null,
  status: null,
  scheduled_for: null,
  published_at: null,
  platforms: null,
  metadata: null
)
```

