# Zernio::UpdateStripeSettingsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **forward_sales** | **Boolean** | Send one-off sales as &#x60;Purchase&#x60;, a subscription&#39;s first payment as &#x60;Subscribe&#x60; and trial starts as &#x60;StartTrial&#x60; through the profile&#39;s forwarding rules that take the &#x60;stripe&#x60; source. Renewals and refunds are never sent. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateStripeSettingsRequest.new(
  forward_sales: null
)
```

