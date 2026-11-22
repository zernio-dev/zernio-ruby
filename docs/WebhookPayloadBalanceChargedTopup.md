# Zernio::WebhookPayloadBalanceChargedTopup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The top-up id, as in GET /v1/balance (&#x60;recentTopups&#x60;) and its invoice and receipt endpoints. |  |
| **trigger** | **String** | &#x60;manual&#x60;: someone added funds in Billing or through the API. &#x60;auto_top_up&#x60;: the auto top-up rule charged the card. |  |
| **amount_cents** | **Integer** | Added to the balance, in USD cents. |  |
| **tax_cents** | **Integer** | VAT charged on top, in USD cents (0 when none applies). |  |
| **charged_cents** | **Integer** | What the card was charged, in USD cents: amount plus tax. |  |
| **currency** | **String** |  |  |
| **card** | [**WebhookPayloadBalanceChargedTopupCard**](WebhookPayloadBalanceChargedTopupCard.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadBalanceChargedTopup.new(
  id: null,
  trigger: null,
  amount_cents: null,
  tax_cents: null,
  charged_cents: null,
  currency: null,
  card: null
)
```

