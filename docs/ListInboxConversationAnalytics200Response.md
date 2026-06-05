# Zernio::ListInboxConversationAnalytics200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **from** | **Date** |  | [optional] |
| **to** | **Date** |  | [optional] |
| **items** | [**Array&lt;ListInboxConversationAnalytics200ResponseItemsInner&gt;**](ListInboxConversationAnalytics200ResponseItemsInner.md) |  | [optional] |
| **pagination** | [**ListInboxConversationAnalytics200ResponsePagination**](ListInboxConversationAnalytics200ResponsePagination.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListInboxConversationAnalytics200Response.new(
  success: null,
  from: null,
  to: null,
  items: null,
  pagination: null
)
```

