# Zernio::EditInboxCommentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The social account ID |  |
| **platform** | **String** | Only Reddit supports editing a comment |  |
| **content** | **String** | The new comment body |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EditInboxCommentRequest.new(
  account_id: null,
  platform: null,
  content: null
)
```

