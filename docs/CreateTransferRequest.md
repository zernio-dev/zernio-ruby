# Zernio::CreateTransferRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee_id** | **String** | 24-character payee id |  |
| **amount_cents** | **Integer** | Amount the payee receives, in cents. The fee is added on top. |  |
| **reference** | [**CreateTransferRequestReference**](CreateTransferRequestReference.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateTransferRequest.new(
  payee_id: null,
  amount_cents: null,
  reference: null
)
```

