# Zernio::CreateTopupRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount_cents** | **Integer** | Amount in cents, minimum $10 |  |
| **method** | **String** | Only card is available. bank_transfer returns 400 \&quot;Bank transfers are not available yet.\&quot; |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateTopupRequest.new(
  amount_cents: null,
  method: null
)
```

