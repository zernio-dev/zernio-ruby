# Zernio::GoogleDemandGenUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **final_url** | **String** |  | [optional] |
| **business_name** | **String** |  | [optional] |
| **headlines** | **Array&lt;String&gt;** |  | [optional] |
| **long_headlines** | **Array&lt;String&gt;** | Video ads only. | [optional] |
| **descriptions** | **Array&lt;String&gt;** |  | [optional] |
| **call_to_action** | **String** | Image and carousel ads only. | [optional] |
| **images** | [**GoogleDemandGenUpdateImages**](GoogleDemandGenUpdateImages.md) |  | [optional] |
| **youtube_video_ids** | **Array&lt;String&gt;** | Video ads only. | [optional] |
| **channels** | **Array&lt;String&gt;** | Replaces the ad group&#39;s channel controls; only the listed channels serve. | [optional] |
| **audience** | [**GoogleDemandGenAudience**](GoogleDemandGenAudience.md) |  | [optional] |
| **audience_id** | **String** | Attach an existing Google Audience by numeric id instead of audience. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GoogleDemandGenUpdate.new(
  final_url: null,
  business_name: null,
  headlines: null,
  long_headlines: null,
  descriptions: null,
  call_to_action: null,
  images: null,
  youtube_video_ids: null,
  channels: null,
  audience: null,
  audience_id: null
)
```

