# Zernio::PinPostResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **pinned** | **Boolean** | Whether the post is now pinned to the top of the Page. | [optional] |
| **platform_post_id** | **String** | The Facebook post ID that was changed. | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PinPostResponse.new(
  success: null,
  pinned: null,
  platform_post_id: null,
  message: null
)
```

