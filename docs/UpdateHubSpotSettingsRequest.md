# Zernio::UpdateHubSpotSettingsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sync_contacts** | **Boolean** | Create a HubSpot contact for an inbox contact that matches none by email or phone. A match is linked as it is and never updated. | [optional] |
| **log_messages** | **Boolean** | Log inbound and outbound inbox messages on the contact&#39;s HubSpot timeline. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateHubSpotSettingsRequest.new(
  sync_contacts: null,
  log_messages: null
)
```

