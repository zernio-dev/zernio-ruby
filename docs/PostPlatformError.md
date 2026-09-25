# Zernio::PostPlatformError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** | Meta error code, when Meta sent one. | [optional] |
| **subcode** | **Integer** | Meta error_subcode, when Meta sent one. | [optional] |
| **message** | **String** | The platform&#39;s raw error message or media processing status text. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PostPlatformError.new(
  code: null,
  subcode: null,
  message: null
)
```

