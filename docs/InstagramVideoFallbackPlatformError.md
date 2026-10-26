# Zernio::InstagramVideoFallbackPlatformError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** |  | [optional] |
| **subcode** | **Integer** |  | [optional] |
| **message** | **String** |  |  |
| **fbtrace_id** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InstagramVideoFallbackPlatformError.new(
  code: 100,
  subcode: 1815279,
  message: null,
  fbtrace_id: null
)
```

