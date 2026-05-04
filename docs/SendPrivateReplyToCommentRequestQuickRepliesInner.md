# Zernio::SendPrivateReplyToCommentRequestQuickRepliesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Label shown on the chip. Truncated by Meta beyond 20 characters. |  |
| **payload** | **String** | Opaque value returned in the inbound webhook when the user taps the chip. |  |
| **image_url** | **String** | Optional thumbnail shown next to the chip title. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendPrivateReplyToCommentRequestQuickRepliesInner.new(
  title: null,
  payload: null,
  image_url: null
)
```

