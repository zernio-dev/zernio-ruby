# Zernio::SendRcsMessageRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent_id** | **String** |  |  |
| **to** | **String** | Recipient number (E.164; formatting is normalized). |  |
| **text** | **String** |  | [optional] |
| **content** | [**RcsContent**](RcsContent.md) |  | [optional] |
| **fallback_text** | **String** |  | [optional] |
| **ttl_seconds** | **Integer** | Seconds before an undelivered message expires. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendRcsMessageRequest.new(
  agent_id: null,
  to: null,
  text: null,
  content: null,
  fallback_text: null,
  ttl_seconds: null
)
```

