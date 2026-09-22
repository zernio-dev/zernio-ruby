# Zernio::UpdateCampaignAssetsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio Google Ads connection id. |  |
| **ad_account_id** | **String** | Platform ad account ID (Google customer ID, digits only). Required when the connection has multiple customers. | [optional] |
| **customer_id** | **String** | Alias of adAccountId, kept for existing callers | [optional] |
| **updates** | [**Array&lt;GoogleAssetUpdate&gt;**](GoogleAssetUpdate.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateCampaignAssetsRequest.new(
  account_id: null,
  ad_account_id: null,
  customer_id: null,
  updates: null
)
```

