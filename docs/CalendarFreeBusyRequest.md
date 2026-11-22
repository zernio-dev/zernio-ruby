# Zernio::CalendarFreeBusyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_ids** | **Array&lt;String&gt;** | Accounts to read with their defaults. Send this or &#x60;accounts&#x60;. | [optional] |
| **accounts** | [**Array&lt;CalendarFreeBusyRequestAccountsInner&gt;**](CalendarFreeBusyRequestAccountsInner.md) | Accounts with per-account options. Send this or &#x60;accountIds&#x60;. | [optional] |
| **from** | **Time** |  |  |
| **to** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CalendarFreeBusyRequest.new(
  account_ids: null,
  accounts: null,
  from: null,
  to: null
)
```

