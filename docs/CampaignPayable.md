# Zernio::CampaignPayable

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **participant_id** | **String** |  |  |
| **creator** | [**WebhookPayloadCampaignSubmissionCreator**](WebhookPayloadCampaignSubmissionCreator.md) |  |  |
| **payable_cents** | **Integer** | The participant&#39;s whole payable balance. |  |
| **entries** | **Array&lt;String&gt;** | Ids of the newest ledger entries into payable that add up to the balance (up to 200). |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CampaignPayable.new(
  participant_id: null,
  creator: null,
  payable_cents: null,
  entries: null
)
```

