# Zernio::SendInboxMessage429Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** |  |  |
| **type** | **String** | Error class for programmatic handling. |  |
| **code** | **String** |  |  |
| **param** | **String** | The request field that caused the error, when applicable. | [optional] |
| **platform** | **String** |  |  |
| **platform_error** | [**WhatsAppTemplateLookupErrorPlatformError**](WhatsAppTemplateLookupErrorPlatformError.md) |  | [optional] |
| **details** | [**WhatsAppTemplateLookupErrorDetails**](WhatsAppTemplateLookupErrorDetails.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendInboxMessage429Response.new(
  error: null,
  type: null,
  code: null,
  param: null,
  platform: null,
  platform_error: null,
  details: null
)
```

