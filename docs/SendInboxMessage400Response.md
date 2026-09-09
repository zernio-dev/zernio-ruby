# Zernio::SendInboxMessage400Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** |  | [optional] |
| **type** | **String** | Present on Meta pass-through rejections: platform_error when Meta rejected the send (see platform/platformError below), invalid_request_error for validation failures. | [optional] |
| **code** | **String** | Stable machine-readable reason. PLATFORM_LIMITATION covers a capability the platform does not offer (e.g. Bluesky and Reddit DMs reject media); MISSING_PARTICIPANT means the stored conversation has no recipient to send to; DIRECT_SEND_NOT_ELIGIBLE and DIRECT_SEND_BLOCKED mean the WhatsApp Business Account needs Meta to grant or restore Direct Send access; DIRECT_SEND_LIMITED is temporary, Meta lifts it on its own; platform_api_error means Meta itself rejected the send (see platformError). | [optional] |
| **platform** | **String** | Present alongside code platform_api_error. The platform that rejected the send (e.g. instagram, facebook). | [optional] |
| **platform_error** | [**SendInboxMessage400ResponsePlatformError**](SendInboxMessage400ResponsePlatformError.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendInboxMessage400Response.new(
  error: null,
  type: null,
  code: null,
  platform: null,
  platform_error: null
)
```

