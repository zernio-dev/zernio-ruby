# Zernio::GetInboxUnreadCount200ResponseMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accounts_queried** | **Integer** | Connected messaging accounts the count covers | [optional] |
| **accounts_skipped** | [**Array&lt;ListInboxConversations200ResponseMetaAccountsSkippedInner&gt;**](ListInboxConversations200ResponseMetaAccountsSkippedInner.md) | Connected accounts that were not counted: their platform does not support direct messages, or the account is not enabled for them | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetInboxUnreadCount200ResponseMeta.new(
  accounts_queried: null,
  accounts_skipped: null
)
```

