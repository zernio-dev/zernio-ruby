# Zernio::SearchInboxConversations200ResponseMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accounts_queried** | **Integer** |  | [optional] |
| **accounts_failed** | **Integer** |  | [optional] |
| **failed_accounts** | [**Array&lt;SearchInboxConversations200ResponseMetaFailedAccountsInner&gt;**](SearchInboxConversations200ResponseMetaFailedAccountsInner.md) |  | [optional] |
| **last_updated** | **Time** |  | [optional] |
| **accounts_skipped** | [**Array&lt;SearchInboxConversations200ResponseMetaAccountsSkippedInner&gt;**](SearchInboxConversations200ResponseMetaAccountsSkippedInner.md) | Connected messaging accounts that cannot be searched (live-fetched platforms) | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SearchInboxConversations200ResponseMeta.new(
  accounts_queried: null,
  accounts_failed: null,
  failed_accounts: null,
  last_updated: null,
  accounts_skipped: null
)
```

