# Zernio::CampaignParticipantPayout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | &#x60;not_started&#x60;: no payout account yet. &#x60;onboarding&#x60;: setup started or under review. &#x60;ready&#x60;: payouts enabled. &#x60;restricted&#x60;: Stripe needs more information before paying out. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CampaignParticipantPayout.new(
  status: null
)
```

