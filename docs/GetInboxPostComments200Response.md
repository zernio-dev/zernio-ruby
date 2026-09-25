# Zernio::GetInboxPostComments200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **comments** | [**Array&lt;GetInboxPostComments200ResponseCommentsInner&gt;**](GetInboxPostComments200ResponseCommentsInner.md) |  | [optional] |
| **post** | [**GetInboxPostComments200ResponsePost**](GetInboxPostComments200ResponsePost.md) |  | [optional] |
| **comment** | **Object** | (Facebook and Instagram only) Present when &#x60;commentId&#x60; was passed: the requested comment itself, in the same shape as an entry in comments[]. comments[] then holds that comment&#39;s replies instead of the post&#39;s top-level comments.  | [optional] |
| **pagination** | [**GetInboxPostComments200ResponsePagination**](GetInboxPostComments200ResponsePagination.md) |  | [optional] |
| **meta** | [**GetInboxPostComments200ResponseMeta**](GetInboxPostComments200ResponseMeta.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetInboxPostComments200Response.new(
  status: null,
  comments: null,
  post: null,
  comment: null,
  pagination: null,
  meta: null
)
```

