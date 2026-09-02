# Zernio::UploadAdVideoRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id (posting or ads variant); its platform decides where the campaign is created. |  |
| **ad_account_id** | **String** | Platform ad account id (Meta act_&lt;n&gt;, Google customer id, LinkedIn account id, ...). |  |
| **video_url** | **String** | Public https URL of the video; downloaded server-side (SSRF-guarded) before chunked upload. Provide exactly one of videoUrl or videoBase64. | [optional] |
| **video_base64** | **String** | Raw base64 video bytes, or a full data URL (the data:video/...;base64, prefix is stripped). Capped by Vercel&#39;s body limit (~4.5 MB payload). Provide exactly one of videoUrl or videoBase64. | [optional] |
| **filename** | **String** | Optional filename shown alongside the upload session. Applied only when uploading via videoBase64. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UploadAdVideoRequest.new(
  account_id: null,
  ad_account_id: null,
  video_url: null,
  video_base64: null,
  filename: null
)
```

