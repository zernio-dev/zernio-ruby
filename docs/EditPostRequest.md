# Zernio::EditPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** | The platform to edit the post on. |  |
| **content** | **String** | The new post text content |  |
| **account_id** | **String** | Which account&#39;s copy of the post to edit when the post was published to several accounts on the same platform; defaults to the first.  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EditPostRequest.new(
  platform: null,
  content: null,
  account_id: null
)
```

