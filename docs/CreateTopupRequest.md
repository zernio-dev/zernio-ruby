# Zernio::CreateTopupRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount_cents** | **Integer** | Amount to credit to your balance, in cents: $10 to $100,000. The card fee is charged on top. |  |
| **method** | **String** | Only card is available. bank_transfer returns 400 \&quot;Bank transfers are not available yet.\&quot; |  |
| **payment_method_id** | **String** | A saved card of the billing owner&#39;s (&#x60;pm_...&#x60;). Defaults to the default payment method. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateTopupRequest.new(
  amount_cents: null,
  method: null,
  payment_method_id: null
)
```

