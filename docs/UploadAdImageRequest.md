# Zernio::UploadAdImageRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token. |  |
| **ad_account_id** | **String** | Meta ad account id (act_&lt;n&gt;). |  |
| **image_base64** | **String** | Raw base64 image bytes, or a full data URL (the data:image/...;base64, prefix is stripped). |  |
| **filename** | **String** | Optional filename shown in Meta&#39;s image library. Defaults to ad_image.jpg. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UploadAdImageRequest.new(
  account_id: null,
  ad_account_id: null,
  image_base64: null,
  filename: null
)
```

