# Zernio::SendInboxMessage400Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** |  | [optional] |
| **code** | **String** | Stable machine-readable reason. PLATFORM_LIMITATION covers a capability the platform does not offer (e.g. Bluesky and Reddit DMs reject media); MISSING_PARTICIPANT means the stored conversation has no recipient to send to. | [optional] |
| **platform_error** | [**SendInboxMessage400ResponsePlatformError**](SendInboxMessage400ResponsePlatformError.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendInboxMessage400Response.new(
  error: null,
  code: null,
  platform_error: null
)
```

