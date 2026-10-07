# Zernio::AccountsListResponseStatusCounts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **all** | **Integer** | Accounts matching the filters in any status. |  |
| **disconnected** | **Integer** | Of those, the accounts that need reconnection. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AccountsListResponseStatusCounts.new(
  all: null,
  disconnected: null
)
```

