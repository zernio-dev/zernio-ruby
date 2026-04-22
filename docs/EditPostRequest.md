# Zernio::EditPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** | The platform to edit the post on. Currently only twitter is supported. |  |
| **content** | **String** | The new tweet text content |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EditPostRequest.new(
  platform: null,
  content: null
)
```

