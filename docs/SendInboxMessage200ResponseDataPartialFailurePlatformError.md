# Zernio::SendInboxMessage200ResponseDataPartialFailurePlatformError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** | Meta error code | [optional] |
| **subcode** | **Integer** | Meta error_subcode | [optional] |
| **fbtrace_id** | **String** | Meta fbtrace_id, quote this in a Meta bug report | [optional] |
| **type** | **String** | Meta error type (e.g. OAuthException) | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendInboxMessage200ResponseDataPartialFailurePlatformError.new(
  code: null,
  subcode: null,
  fbtrace_id: null,
  type: null
)
```

