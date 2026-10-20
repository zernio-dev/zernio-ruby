# Zernio::HubSpotSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** | Zernio account ID of the HubSpot connection. |  |
| **platform** | **String** |  |  |
| **hub_id** | **String** | HubSpot portal (hub) ID. |  |
| **hub_domain** | **String** | HubSpot portal domain, when HubSpot reports one. |  |
| **scopes** | **Array&lt;String&gt;** | OAuth scopes the portal granted. |  |
| **sync_contacts** | **Boolean** | Whether Zernio creates or updates HubSpot contacts for inbox contacts. |  |
| **log_messages** | **Boolean** | Whether Zernio logs inbox messages on HubSpot contact timelines. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::HubSpotSettings.new(
  _id: null,
  platform: null,
  hub_id: null,
  hub_domain: null,
  scopes: null,
  sync_contacts: null,
  log_messages: null
)
```

