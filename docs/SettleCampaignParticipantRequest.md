# Zernio::SettleCampaignParticipantRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount_cents** | **Integer** | Defaults to the whole payable balance. | [optional] |
| **external_reference** | **String** | Your payout id. Required when the campaign settles externally. | [optional] |
| **record_only** | **Boolean** | Treasury campaigns only: record a payout you already made outside Zernio, without moving money. Ignored on other settlement modes, which always record. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SettleCampaignParticipantRequest.new(
  amount_cents: null,
  external_reference: null,
  record_only: null
)
```

