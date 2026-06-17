# Zernio::ErrorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** | Human-readable error message. | [optional] |
| **type** | **String** | Error class for programmatic handling. | [optional] |
| **code** | **String** | Stable machine-readable error code. | [optional] |
| **param** | **String** | The request field that caused the error, when applicable. | [optional] |
| **platform** | **String** | Upstream platform (e.g. meta, google, tiktok) — present when type is platform_error. | [optional] |
| **platform_error** | **Hash&lt;String, Object&gt;** | Raw error payload from the upstream platform, passed through verbatim so integrators can read provider-specific codes. For Meta this includes error_subcode, error_user_title, and error_user_msg.  | [optional] |
| **details** | **Hash&lt;String, Object&gt;** | Additional structured context (e.g. field-level validation errors). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ErrorResponse.new(
  error: null,
  type: null,
  code: null,
  param: null,
  platform: null,
  platform_error: null,
  details: null
)
```

