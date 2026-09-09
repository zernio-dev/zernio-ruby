# Zernio::RemoveCampaignAssetsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio Google Ads connection id. |  |
| **customer_id** | **String** | Google customer id without dashes. Required when the connection has multiple customers. | [optional] |
| **asset_resource_names** | **Array&lt;String&gt;** |  |  |
| **campaign_asset_resource_names** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RemoveCampaignAssetsRequest.new(
  account_id: null,
  customer_id: null,
  asset_resource_names: null,
  campaign_asset_resource_names: null
)
```

