# Zernio::GetMediaPresignedUrlRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filename** | **String** | Name of the file to upload |  |
| **content_type** | **String** | MIME type of the file |  |
| **size** | **Integer** | Optional file size in bytes for pre-validation (max 5GB) | [optional] |
| **permanent** | **Boolean** | Write the file to permanent storage instead of temporary storage. Temporary files auto-delete 7 days after upload; permanent files never expire. | [optional][default to false] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetMediaPresignedUrlRequest.new(
  filename: my-video.mp4,
  content_type: video/mp4,
  size: 15234567,
  permanent: true
)
```

