# Zernio::PostCreateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** |  | [optional] |
| **post** | [**Post**](Post.md) |  | [optional] |
| **warnings** | **Array&lt;String&gt;** | Advisory notices about a post that was still created: media truncated for a platform, a recycling caveat, or a field that was ignored because it sat outside platforms[].platformSpecificData. Absent when there are none. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PostCreateResponse.new(
  message: null,
  post: null,
  warnings: null
)
```

