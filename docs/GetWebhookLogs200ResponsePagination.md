# Zernio::GetWebhookLogs200ResponsePagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** | Total number of matching logs | [optional] |
| **limit** | **Integer** | Maximum number of logs returned per page | [optional] |
| **skip** | **Integer** | Number of logs skipped | [optional] |
| **pages** | **Integer** | Total number of pages | [optional] |
| **has_more** | **Boolean** | Whether more logs are available beyond this page | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetWebhookLogs200ResponsePagination.new(
  total: null,
  limit: null,
  skip: null,
  pages: null,
  has_more: null
)
```

