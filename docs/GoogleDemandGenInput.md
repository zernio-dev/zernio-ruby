# Zernio::GoogleDemandGenInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_group_name** | **String** | Defaults to the ad name. | [optional] |
| **final_url** | **String** |  |  |
| **business_name** | **String** |  |  |
| **headlines** | **Array&lt;String&gt;** | Distinct texts. |  |
| **long_headlines** | **Array&lt;String&gt;** | Video ads only, and required there. | [optional] |
| **descriptions** | **Array&lt;String&gt;** |  |  |
| **call_to_action** | **String** | Image ads only. Call to action text such as &#39;Learn more&#39;; Google picks one when omitted. | [optional] |
| **images** | [**GoogleDemandGenInputImages**](GoogleDemandGenInputImages.md) |  |  |
| **youtube_video_ids** | **Array&lt;String&gt;** | Makes the ad a video responsive ad. | [optional] |
| **channels** | **Array&lt;String&gt;** | Channel controls on the ad group. Only the listed channels serve; omit to serve on all of them. | [optional] |
| **audience** | [**GoogleDemandGenInputAudience**](GoogleDemandGenInputAudience.md) |  | [optional] |
| **audience_id** | **String** | Attach an existing Google Audience by numeric id instead of audience. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GoogleDemandGenInput.new(
  ad_group_name: null,
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

