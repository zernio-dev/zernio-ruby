# Late::UploadMediaDirect200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | Publicly accessible URL for the uploaded file | [optional] |
| **filename** | **String** | Generated unique filename | [optional] |
| **content_type** | **String** | MIME type of the file | [optional] |
| **size** | **Integer** | File size in bytes | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::UploadMediaDirect200Response.new(
  url: null,
  filename: null,
  content_type: null,
  size: null
)
```

