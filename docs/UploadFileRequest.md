# Zernio::UploadFileRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **name** | **String** |  |  |
| **content_type** | **String** |  |  |
| **parent_id** | **String** | Target folder; the root when omitted. | [optional] |
| **url** | **String** |  |  |
| **convert_to** | **String** | Google Drive only: import the bytes as a Docs, Sheets or Slides file (a text or Office file becomes an editable document). OneDrive answers 400. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UploadFileRequest.new(
  account_id: null,
  name: null,
  content_type: image/png,
  parent_id: null,
  url: null,
  convert_to: null
)
```

