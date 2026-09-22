# Zernio::RemoveAdGroupAssetsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio Google Ads connection id. |  |
| **ad_account_id** | **String** | Platform ad account ID (Google customer ID, digits only). Required when the connection has multiple customers. | [optional] |
| **customer_id** | **String** | Alias of adAccountId, kept for existing callers | [optional] |
| **asset_resource_names** | **Array&lt;String&gt;** |  |  |
| **ad_group_asset_resource_names** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RemoveAdGroupAssetsRequest.new(
  account_id: null,
  ad_account_id: null,
  customer_id: null,
  asset_resource_names: null,
  ad_group_asset_resource_names: null
)
```

