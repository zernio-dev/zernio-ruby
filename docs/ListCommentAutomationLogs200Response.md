# Zernio::ListCommentAutomationLogs200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **logs** | [**Array&lt;CommentAutomationLog&gt;**](CommentAutomationLog.md) |  | [optional] |
| **pagination** | [**ListWorkspaces200ResponsePagination**](ListWorkspaces200ResponsePagination.md) |  | [optional] |
| **misses** | [**ListCommentAutomationLogs200ResponseMisses**](ListCommentAutomationLogs200ResponseMisses.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListCommentAutomationLogs200Response.new(
  success: null,
  logs: null,
  pagination: null,
  misses: null
)
```

