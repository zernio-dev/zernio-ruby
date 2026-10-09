# Zernio::WebhookPayloadContactTag

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **test** | **Boolean** | Always true when present: only a sample sent by POST /v1/webhooks/test with an event carries it. Real deliveries never do. | [optional] |
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
  test: null,
  id: null,
  event: null,
  timestamp: null,
  contact: null,
  tag: null,
  source: null
)
```

