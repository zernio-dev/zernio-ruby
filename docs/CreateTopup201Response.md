# Zernio::CreateTopup201Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **topup_id** | **String** |  | [optional] |
| **url** | **String** | Stripe Checkout URL to send the payer to | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateTopup201Response.new(
  topup_id: null,
  url: null
)
```

