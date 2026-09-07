# Zernio::ListAdAccounts200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accounts** | [**Array&lt;ListAdAccounts200ResponseAccountsInner&gt;**](ListAdAccounts200ResponseAccountsInner.md) |  | [optional] |
| **cached_at** | **Time** | Google only. When this list was fetched from Google. Null when it was never served from cache, or on other platforms. | [optional] |
| **stale** | **Boolean** | Google only. True when Google&#39;s daily API quota was exhausted and this is the last successful fetch, not a live read. Absent on other platforms. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListAdAccounts200Response.new(
  accounts: null,
  cached_at: null,
  stale: null
)
```

