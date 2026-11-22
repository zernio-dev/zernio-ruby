# Zernio::SendInboxMessage429Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** |  |  |
| **type** | **String** | Error class for programmatic handling. |  |
| **code** | **String** |  |  |
| **param** | **String** | The request field that caused the error, when applicable. | [optional] |
| **doc_url** | **String** | Documentation page for resolving the error, when one applies. | [optional] |
| **platform** | **String** |  |  |
| **platform_error** | [**WhatsAppTemplateLookupErrorPlatformError**](WhatsAppTemplateLookupErrorPlatformError.md) |  | [optional] |
| **provider** | **String** | Email API: the mailbox provider the error came from (&#x60;google&#x60;, &#x60;microsoft&#x60;). | [optional] |
| **provider_error** | [**ErrorResponseProviderError**](ErrorResponseProviderError.md) |  | [optional] |
| **retryable** | **Boolean** | Email API: whether the same request can succeed if retried (with the same &#x60;Idempotency-Key&#x60; for sends). | [optional] |
| **request_id** | **String** | Email API: the request id, also in the &#x60;X-Request-Id&#x60; header. Quote it when you contact support. | [optional] |
| **docs_url** | **String** | Email API: where this &#x60;code&#x60; is documented. | [optional] |
| **details** | [**WhatsAppTemplateLookupErrorDetails**](WhatsAppTemplateLookupErrorDetails.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendInboxMessage429Response.new(
  error: null,
  type: null,
  code: null,
  param: null,
  doc_url: null,
  platform: null,
  platform_error: null,
  provider: null,
  provider_error: null,
  retryable: null,
  request_id: null,
  docs_url: null,
  details: null
)
```

