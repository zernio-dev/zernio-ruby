# Zernio::UpdateHubSpotSettingsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sync_contacts** | **Boolean** | Create or update a HubSpot contact for each inbox contact. | [optional] |
| **log_messages** | **Boolean** | Log inbound and outbound inbox messages on the contact&#39;s HubSpot timeline. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateHubSpotSettingsRequest.new(
  sync_contacts: null,
  log_messages: null
)
```

