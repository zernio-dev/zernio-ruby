# Zernio::GoogleNetworkSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search_partners** | **Boolean** | campaign.network_settings.target_search_network | [optional] |
| **display_network** | **Boolean** | campaign.network_settings.target_content_network (Search with Display expansion) | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GoogleNetworkSettings.new(
  search_partners: null,
  display_network: null
)
```

