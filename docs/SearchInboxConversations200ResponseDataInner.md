# Zernio::SearchInboxConversations200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation** | [**SearchInboxConversations200ResponseDataInnerConversation**](SearchInboxConversations200ResponseDataInnerConversation.md) |  | [optional] |
| **match_count** | **Integer** | Total number of matching messages in this conversation | [optional] |
| **matches** | [**Array&lt;SearchInboxConversations200ResponseDataInnerMatchesInner&gt;**](SearchInboxConversations200ResponseDataInnerMatchesInner.md) | Up to 3 most-recent matching messages | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SearchInboxConversations200ResponseDataInner.new(
  conversation: null,
  match_count: null,
  matches: null
)
```

