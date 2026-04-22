# Zernio::ListCommentAutomationLogs200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **logs** | [**Array&lt;GetCommentAutomation200ResponseLogsInner&gt;**](GetCommentAutomation200ResponseLogsInner.md) |  | [optional] |
| **pagination** | [**ListContacts200ResponsePagination**](ListContacts200ResponsePagination.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListCommentAutomationLogs200Response.new(
  success: null,
  logs: null,
  pagination: null
)
```

