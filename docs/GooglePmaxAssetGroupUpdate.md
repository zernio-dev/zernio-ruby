# Zernio::GooglePmaxAssetGroupUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **final_url** | **String** | Replaces the asset group&#39;s final URL. | [optional] |
| **headlines** | **Array&lt;String&gt;** | Replaces every HEADLINE asset on the group. | [optional] |
| **long_headline** | **String** | Replaces the LONG_HEADLINE asset. | [optional] |
| **descriptions** | **Array&lt;String&gt;** | Replaces every DESCRIPTION asset. At least one must be 60 characters or fewer. | [optional] |
| **business_name** | **String** | Replaces the BUSINESS_NAME asset. | [optional] |
| **images** | [**GooglePmaxAssetGroupUpdateImages**](GooglePmaxAssetGroupUpdateImages.md) |  | [optional] |
| **youtube_video_ids** | **Array&lt;String&gt;** | Replaces YOUTUBE_VIDEO assets with existing YouTube video ids. Video uploads and arbitrary video URLs are not supported. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GooglePmaxAssetGroupUpdate.new(
  final_url: null,
  headlines: null,
  long_headline: null,
  descriptions: null,
  business_name: null,
  images: null,
  youtube_video_ids: null
)
```

