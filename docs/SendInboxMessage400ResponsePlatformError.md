# Zernio::SendInboxMessage400ResponsePlatformError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** | Meta or TikTok error code | [optional] |
| **subcode** | **Integer** | Meta error_subcode | [optional] |
| **fbtrace_id** | **String** | Meta fbtrace_id, quote this in a Meta bug report | [optional] |
| **type** | **String** | Meta error type (e.g. OAuthException) | [optional] |
| **message** | **String** | TikTok error message | [optional] |
| **request_id** | **String** | TikTok request_id, quote this in a TikTok support ticket | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendInboxMessage400ResponsePlatformError.new(
  code: null,
  subcode: null,
  fbtrace_id: null,
  type: null,
  message: null,
  request_id: null
)
```

