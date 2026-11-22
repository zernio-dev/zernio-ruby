# Zernio::StripeSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** | Zernio account ID of the Stripe connection. |  |
| **platform** | **String** |  |  |
| **stripe_account_id** | **String** | The connected Stripe account ID (&#x60;acct_...&#x60;). |  |
| **livemode** | **Boolean** | Whether the connection counts live payments (&#x60;true&#x60;) or test payments (&#x60;false&#x60;). |  |
| **forward_sales** | **Boolean** | Whether new customers&#39; first payments go to the profile&#39;s forwarding rules. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::StripeSettings.new(
  _id: null,
  platform: null,
  stripe_account_id: null,
  livemode: null,
  forward_sales: null
)
```

