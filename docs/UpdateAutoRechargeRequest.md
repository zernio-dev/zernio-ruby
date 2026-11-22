# Zernio::UpdateAutoRechargeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Turns auto top-up on or off. A rule switched off by failed charges stays off until the card is updated. | [optional] |
| **below_cents** | **Integer** | The below amount, in cents: when the balance drops below this, auto top-up brings it back to toCents. At least $1. | [optional] |
| **to_cents** | **Integer** | The back-to amount, in cents. At least $4 above belowCents, so at least $5. | [optional] |
| **monthly_limit_cents** | **Integer** | Most auto top-up may add per calendar month (UTC), before tax. At least the back-to amount (toCents) while auto top-up is on. Null for no limit. | [optional] |
| **alert_below_cents** | **Integer** | Email the billing owner once each time the balance drops below this. Null for no email. | [optional] |
| **consent_wording** | **String** | The auto top-up line you showed the user, recorded as their consent: our line for the saved amounts (see getAutoRecharge), with or without VAT. Omit it to record our own line. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAutoRechargeRequest.new(
  enabled: null,
  below_cents: null,
  to_cents: null,
  monthly_limit_cents: null,
  alert_below_cents: null,
  consent_wording: null
)
```

