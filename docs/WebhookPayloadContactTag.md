# Zernio::WebhookPayloadContactTag

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Event id, the dedupe key. |  |
| **event** | **String** |  |  |
| **timestamp** | **Time** |  |  |
| **contact** | [**WebhookPayloadContactTagContact**](WebhookPayloadContactTagContact.md) |  |  |
| **tag** | **String** |  |  |
| **source** | **String** | Who wrote the tag: the API or dashboard, a workflow add_tag / remove_tag node, or a comment-automation link click. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadContactTag.new(
  id: null,
  event: null,
  timestamp: null,
  contact: null,
  tag: null,
  source: null
)
```

