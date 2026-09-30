# Zernio::WebhookPayloadMessageMetadataUnsupported

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** | Meta&#39;s numeric error code (e.g. 131051). | [optional] |
| **title** | **String** | Meta&#39;s short error title. | [optional] |
| **details** | **String** | Meta&#39;s human-readable error detail string. | [optional] |
| **type** | **String** | Meta&#39;s name for the content WhatsApp could not deliver, e.g. view_once, poll_creation, group_invite, edit. Absent when Meta sends none. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadMessageMetadataUnsupported.new(
  code: null,
  title: null,
  details: null,
  type: null
)
```

