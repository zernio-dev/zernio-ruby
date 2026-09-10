# Zernio::GooglePmaxAssetGroupInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Defaults to the request name. | [optional] |
| **final_url** | **String** | Required destination URL. |  |
| **headlines** | **Array&lt;String&gt;** |  |  |
| **long_headline** | **String** |  |  |
| **descriptions** | **Array&lt;String&gt;** | At least one description must be 60 characters or fewer. |  |
| **business_name** | **String** |  |  |
| **images** | [**GooglePmaxAssetGroupInputImages**](GooglePmaxAssetGroupInputImages.md) |  |  |
| **youtube_video_id** | **String** | Optional existing YouTube video id. Google can generate video when omitted. Video uploads and arbitrary video URLs are not supported. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GooglePmaxAssetGroupInput.new(
  name: null,
  final_url: null,
  headlines: null,
  long_headline: null,
  descriptions: null,
  business_name: null,
  images: null,
  youtube_video_id: null
)
```

