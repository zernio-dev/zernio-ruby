# Zernio::ListInboxConversations200ResponseMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accounts_queried** | **Integer** |  | [optional] |
| **accounts_failed** | **Integer** |  | [optional] |
| **failed_accounts** | [**Array&lt;ListInboxConversations200ResponseMetaFailedAccountsInner&gt;**](ListInboxConversations200ResponseMetaFailedAccountsInner.md) |  | [optional] |
| **last_updated** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListInboxConversations200ResponseMeta.new(
  accounts_queried: null,
  accounts_failed: null,
  failed_accounts: null,
  last_updated: null
)
```

