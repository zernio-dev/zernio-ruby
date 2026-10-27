# Zernio::FileItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **account_id** | **String** |  |  |
| **provider** | **String** |  |  |
| **name** | **String** |  |  |
| **kind** | **String** |  |  |
| **mime_type** | **String** |  |  |
| **size** | **Integer** | Bytes; null for folders and Google editors files. |  |
| **parent_id** | **String** |  |  |
| **web_url** | **String** | The provider&#39;s own link to open the item. |  |
| **downloadable** | **Boolean** | False for folders and for Drive files whose owner disabled downloading. |  |
| **export_mime_type** | **String** | Google Docs, Slides and Drawings download as PDF/PNG and Sheets as XLSX; this is the type the download carries. | [optional] |
| **created_at** | **Time** |  |  |
| **modified_at** | **Time** |  |  |
| **trashed** | **Boolean** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::FileItem.new(
  id: null,
  account_id: null,
  provider: null,
  name: null,
  kind: null,
  mime_type: null,
  size: null,
  parent_id: null,
  web_url: null,
  downloadable: null,
  export_mime_type: null,
  created_at: null,
  modified_at: null,
  trashed: null
)
```

