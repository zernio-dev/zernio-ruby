# Zernio::CreateCampaignPayoutBatchRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **participant_ids** | **Array&lt;String&gt;** | Pay only these participants. Defaults to every payable participant who is ready. | [optional] |
| **exclude_participant_ids** | **Array&lt;String&gt;** | Leave these participants out. | [optional] |
| **payment_method_id** | **String** | A saved card of the billing owner&#39;s (&#x60;pm_...&#x60;). Defaults to the default payment method. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateCampaignPayoutBatchRequest.new(
  participant_ids: null,
  exclude_participant_ids: null,
  payment_method_id: null
)
```

