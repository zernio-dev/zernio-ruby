# Zernio::ListInboxConversations200ResponseMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accounts_queried** | **Integer** |  | [optional] |
| **accounts_failed** | **Integer** |  | [optional] |
| **failed_accounts** | [**Array&lt;ListInboxConversations200ResponseMetaFailedAccountsInner&gt;**](ListInboxConversations200ResponseMetaFailedAccountsInner.md) |  | [optional] |
| **last_updated** | **Time** |  | [optional] |
| **accounts_skipped** | [**Array&lt;ListInboxConversations200ResponseMetaAccountsSkippedInner&gt;**](ListInboxConversations200ResponseMetaAccountsSkippedInner.md) | Connected accounts that were not queried: their platform does not support this feature, or the account is not enabled for it | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListInboxConversations200ResponseMeta.new(
  accounts_queried: null,
  accounts_failed: null,
  failed_accounts: null,
  last_updated: null,
  accounts_skipped: null
)
```

