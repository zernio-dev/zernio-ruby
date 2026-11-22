# Zernio::SetCampaignResultEventsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_names** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SetCampaignResultEventsRequest.new(
  event_names: [&quot;Purchase&quot;,&quot;Lead&quot;,&quot;CompleteRegistration&quot;]
)
```

