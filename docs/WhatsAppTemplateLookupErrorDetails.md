# Zernio::WhatsAppTemplateLookupErrorDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phase** | **String** |  |  |
| **endpoint** | **String** | Meta endpoint path without query parameters or access tokens |  |
| **upstream_status** | **Integer** |  | [optional] |
| **provider_headers** | [**WhatsAppTemplateLookupErrorDetailsProviderHeaders**](WhatsAppTemplateLookupErrorDetailsProviderHeaders.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WhatsAppTemplateLookupErrorDetails.new(
  phase: null,
  endpoint: null,
  upstream_status: null,
  provider_headers: null
)
```

