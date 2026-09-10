# Zernio::DownloadTikTokVideo200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  |  |
| **title** | **String** |  |  |
| **format** | **String** | Selected format label for action&#x3D;download. | [optional] |
| **download_url** | **String** | Media download URL for action&#x3D;download. | [optional] |
| **duration** | **Float** | Duration in seconds for action&#x3D;formats. | [optional] |
| **cover** | **String** | Thumbnail URL for action&#x3D;formats. | [optional] |
| **formats** | [**Array&lt;DownloadTikTokVideo200ResponseFormatsInner&gt;**](DownloadTikTokVideo200ResponseFormatsInner.md) | Available formats for action&#x3D;formats. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::DownloadTikTokVideo200Response.new(
  success: null,
  title: null,
  format: null,
  download_url: null,
  duration: null,
  cover: null,
  formats: null
)
```

