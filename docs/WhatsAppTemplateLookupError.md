# Zernio::WhatsAppTemplateLookupError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** |  |  |
| **type** | **String** |  |  |
| **code** | **String** |  |  |
| **platform** | **String** |  |  |
| **platform_error** | [**WhatsAppTemplateLookupErrorPlatformError**](WhatsAppTemplateLookupErrorPlatformError.md) |  | [optional] |
| **details** | [**WhatsAppTemplateLookupErrorDetails**](WhatsAppTemplateLookupErrorDetails.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WhatsAppTemplateLookupError.new(
  error: null,
  type: null,
  code: null,
  platform: null,
  platform_error: null,
  details: null
)
```

