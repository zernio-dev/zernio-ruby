# Zernio::ErrorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** | Human-readable error message. | [optional] |
| **type** | **String** | Error class for programmatic handling. | [optional] |
| **code** | **String** | Stable machine-readable error code. | [optional] |
| **param** | **String** | The request field that caused the error, when applicable. | [optional] |
| **doc_url** | **String** | Documentation page for resolving the error, when one applies. | [optional] |
| **platform** | **String** | Upstream platform (e.g. meta, google, tiktok), present when type is platform_error. | [optional] |
| **platform_error** | **Hash&lt;String, Object&gt;** | Raw error payload from the upstream platform, passed through verbatim so integrators can read provider-specific codes. For Meta this includes error_subcode, error_user_title, and error_user_msg.  | [optional] |
| **provider** | **String** | Email API: the mailbox provider the error came from (&#x60;google&#x60;, &#x60;microsoft&#x60;). | [optional] |
| **provider_error** | [**ErrorResponseProviderError**](ErrorResponseProviderError.md) |  | [optional] |
| **retryable** | **Boolean** | Email API: whether the same request can succeed if retried (with the same &#x60;Idempotency-Key&#x60; for sends). | [optional] |
| **request_id** | **String** | Email API: the request id, also in the &#x60;X-Request-Id&#x60; header. Quote it when you contact support. | [optional] |
| **docs_url** | **String** | Email API: where this &#x60;code&#x60; is documented. | [optional] |
| **details** | [**ErrorResponseDetails**](ErrorResponseDetails.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ErrorResponse.new(
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

