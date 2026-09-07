# Zernio::CreatePost200ResponseTiktokInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **can_publish** | **Boolean** |  |  |
| **already_posted_today** | **Boolean** | Whether this account already published a Direct Post today (an account that did can keep publishing). Absent for Creator Inbox drafts and when no per-user limit applies. | [optional] |
| **reason** | **String** | Human-readable explanation of the verdict |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatePost200ResponseTiktokInner.new(
  account_id: null,
  can_publish: null,
  already_posted_today: null,
  reason: null
)
```

