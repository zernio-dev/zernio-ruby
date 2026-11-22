# Zernio::SearchInboxConversations200ResponseMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accounts_queried** | **Integer** |  | [optional] |
| **accounts_failed** | **Integer** |  | [optional] |
| **failed_accounts** | [**Array&lt;SearchInboxConversations200ResponseMetaFailedAccountsInner&gt;**](SearchInboxConversations200ResponseMetaFailedAccountsInner.md) |  | [optional] |
| **last_updated** | **Time** |  | [optional] |
| **content_not_retained** | **Boolean** | True when a searched account belongs to a team that does not retain content. Message text is not searchable there, only identifiers match. | [optional] |
| **accounts_skipped** | [**Array&lt;ListInboxConversations200ResponseMetaAccountsSkippedInner&gt;**](ListInboxConversations200ResponseMetaAccountsSkippedInner.md) | Connected messaging accounts that cannot be searched (live-fetched platforms) | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SearchInboxConversations200ResponseMeta.new(
  accounts_queried: null,
  accounts_failed: null,
  failed_accounts: null,
  last_updated: null,
  content_not_retained: null,
  accounts_skipped: null
)
```

