# Zernio::GetInboxPostComments200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **comments** | [**Array&lt;GetInboxPostComments200ResponseCommentsInner&gt;**](GetInboxPostComments200ResponseCommentsInner.md) |  | [optional] |
| **post** | [**GetInboxPostComments200ResponsePost**](GetInboxPostComments200ResponsePost.md) |  | [optional] |
| **pagination** | [**GetInboxPostComments200ResponsePagination**](GetInboxPostComments200ResponsePagination.md) |  | [optional] |
| **meta** | [**GetInboxPostComments200ResponseMeta**](GetInboxPostComments200ResponseMeta.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetInboxPostComments200Response.new(
  status: null,
  comments: null,
  post: null,
  pagination: null,
  meta: null
)
```

