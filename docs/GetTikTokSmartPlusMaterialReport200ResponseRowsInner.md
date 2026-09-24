# Zernio::GetTikTokSmartPlusMaterialReport200ResponseRowsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **material_id** | **String** | TikTok main material id | [optional] |
| **material_type** | **String** | e.g. VIDEO_SPARK_ADS, VIDEO, IMAGE | [optional] |
| **tiktok_item_id** | **String** | The TikTok post id when the material is a Spark post | [optional] |
| **name** | **String** | Material name or post caption | [optional] |
| **smart_plus_ad_id** | **String** | Set when level&#x3D;ad | [optional] |
| **ad_group_id** | **String** | Set when level&#x3D;adGroup | [optional] |
| **metrics** | [**GetTikTokSmartPlusMaterialReport200ResponseRowsInnerMetrics**](GetTikTokSmartPlusMaterialReport200ResponseRowsInnerMetrics.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetTikTokSmartPlusMaterialReport200ResponseRowsInner.new(
  material_id: null,
  material_type: null,
  tiktok_item_id: null,
  name: null,
  smart_plus_ad_id: null,
  ad_group_id: null,
  metrics: null
)
```

