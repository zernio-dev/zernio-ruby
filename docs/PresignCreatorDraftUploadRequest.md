# Zernio::PresignCreatorDraftUploadRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filename** | **String** |  |  |
| **content_type** | **String** |  |  |
| **size** | **Integer** | File size in bytes. Optional; over 500 MB answers 400. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PresignCreatorDraftUploadRequest.new(
  filename: null,
  content_type: null,
  size: null
)
```

