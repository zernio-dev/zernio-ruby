# Zernio::UploadTokenStatusResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **files** | [**Array&lt;UploadedFile&gt;**](UploadedFile.md) |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **expires_at** | **Time** |  | [optional] |
| **completed_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UploadTokenStatusResponse.new(
  token: null,
  status: null,
  files: null,
  created_at: null,
  expires_at: null,
  completed_at: null
)
```

