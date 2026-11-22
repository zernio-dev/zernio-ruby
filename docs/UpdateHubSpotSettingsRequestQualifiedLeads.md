# Zernio::UpdateHubSpotSettingsRequestQualifiedLeads

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** |  |  |
| **property** | **String** | HubSpot internal name of the contact property, for example &#x60;lifecyclestage&#x60;. |  |
| **values** | **Array&lt;String&gt;** | The values that count as qualified. At least one while &#x60;enabled&#x60; is true. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateHubSpotSettingsRequestQualifiedLeads.new(
  enabled: null,
  property: null,
  values: null
)
```

