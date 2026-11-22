# Zernio::GooglePmaxAssetGroupAssetsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_name** | **String** |  |  |
| **field_type** | **String** | Google asset role, such as HEADLINE or LOGO. |  |
| **status** | **String** |  |  |
| **source** | **String** | Who added the asset: ADVERTISER, or AUTOMATICALLY_CREATED when Google generated it. Empty when Google does not say. | [optional] |
| **policy_summary** | [**GooglePmaxAssetGroupAssetsInnerPolicySummary**](GooglePmaxAssetGroupAssetsInnerPolicySummary.md) |  |  |
| **text** | **String** |  | [optional] |
| **image_url** | **String** |  | [optional] |
| **youtube_video_id** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GooglePmaxAssetGroupAssetsInner.new(
  resource_name: null,
  field_type: null,
  status: null,
  source: null,
  policy_summary: null,
  text: null,
  image_url: null,
  youtube_video_id: null
)
```

