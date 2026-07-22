# Zernio::WhatsAppLimitedTimeOfferComponentLimitedTimeOffer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | Short offer label (&lt;&#x3D;16 chars). MARKETING only. |  |
| **has_expiration** | **Boolean** | Toggles the countdown timer. The actual coupon code + expiry are bound at SEND time, not here. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WhatsAppLimitedTimeOfferComponentLimitedTimeOffer.new(
  text: null,
  has_expiration: null
)
```

