# Zernio::CreateInboxConversation429Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** |  |  |
| **code** | **String** |  |  |
| **type** | **String** |  |  |
| **platform** | **String** |  |  |
| **platform_error** | [**WhatsAppTemplateLookupErrorPlatformError**](WhatsAppTemplateLookupErrorPlatformError.md) |  | [optional] |
| **details** | [**WhatsAppTemplateLookupErrorDetails**](WhatsAppTemplateLookupErrorDetails.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateInboxConversation429Response.new(
  error: null,
  code: null,
  type: null,
  platform: null,
  platform_error: null,
  details: null
)
```

