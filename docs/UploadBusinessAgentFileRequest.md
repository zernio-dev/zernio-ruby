# Zernio::UploadBusinessAgentFileRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | Publicly downloadable file URL. |  |
| **file_name** | **String** | Defaults to the last path segment of the URL. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UploadBusinessAgentFileRequest.new(
  url: null,
  file_name: null
)
```

