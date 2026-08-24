# Zernio::UpdateWhatsAppFlowRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account ID |  |
| **name** | **String** | New flow name | [optional] |
| **categories** | **Array&lt;String&gt;** |  | [optional] |
| **endpoint_uri** | **String** | HTTPS-only data exchange endpoint for the flow. Settable only while the flow is in DRAFT, and the flow&#39;s uploaded Flow JSON must declare data_api_version \&quot;3.0\&quot; for the endpoint to be used. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateWhatsAppFlowRequest.new(
  account_id: null,
  name: null,
  categories: null,
  endpoint_uri: null
)
```

