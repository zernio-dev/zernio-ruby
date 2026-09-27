# Zernio::GooglePmaxAssetGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable Google asset group id. Use it in the asset-group endpoints below. |  |
| **resource_name** | **String** | customers/{customerId}/assetGroups/{assetGroupId} |  |
| **campaign_id** | **String** |  |  |
| **name** | **String** |  |  |
| **status** | **String** | Asset-group status on Google. Campaign status independently controls delivery. |  |
| **final_urls** | **Array&lt;String&gt;** |  |  |
| **final_mobile_urls** | **Array&lt;String&gt;** |  |  |
| **path1** | **String** |  |  |
| **path2** | **String** |  |  |
| **ad_strength** | **String** | Google ad strength, such as POOR, AVERAGE, GOOD or EXCELLENT. |  |
| **primary_status** | **String** | Why the group is or is not serving, such as ELIGIBLE, PAUSED or NOT_ELIGIBLE. |  |
| **primary_status_reasons** | **Array&lt;String&gt;** |  |  |
| **assets** | [**Array&lt;GooglePmaxAssetGroupAssetsInner&gt;**](GooglePmaxAssetGroupAssetsInner.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GooglePmaxAssetGroup.new(
  id: null,
  resource_name: null,
  campaign_id: null,
  name: null,
  status: null,
  final_urls: null,
  final_mobile_urls: null,
  path1: null,
  path2: null,
  ad_strength: null,
  primary_status: null,
  primary_status_reasons: null,
  assets: null
)
```

