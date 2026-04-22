# Zernio::GoogleBusinessPlatformDataOffer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offer_type** | **String** | Type of offer | [optional] |
| **redeem_online_url** | **String** | URL where the offer can be redeemed online | [optional] |
| **terms_conditions** | **String** | Terms and conditions for the offer | [optional] |
| **coupon_code** | **String** | Coupon code for the offer | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GoogleBusinessPlatformDataOffer.new(
  offer_type: null,
  redeem_online_url: null,
  terms_conditions: null,
  coupon_code: SAVE20
)
```

