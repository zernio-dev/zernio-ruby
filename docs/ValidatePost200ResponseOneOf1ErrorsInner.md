# Zernio::ValidatePost200ResponseOneOf1ErrorsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  | [optional] |
| **error** | **String** |  | [optional] |
| **code** | **String** | Present on media errors. MEDIA_UNDECODABLE means the bytes at the URL are not a valid image, video or PDF. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ValidatePost200ResponseOneOf1ErrorsInner.new(
  platform: null,
  error: null,
  code: null
)
```

