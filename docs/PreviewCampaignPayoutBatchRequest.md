# Zernio::PreviewCampaignPayoutBatchRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **participant_ids** | **Array&lt;String&gt;** | Preview only these participants. Defaults to every payable participant who is ready. | [optional] |
| **exclude_participant_ids** | **Array&lt;String&gt;** | Leave these participants out. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PreviewCampaignPayoutBatchRequest.new(
  participant_ids: null,
  exclude_participant_ids: null
)
```

