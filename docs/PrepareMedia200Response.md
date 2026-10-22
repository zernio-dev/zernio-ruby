# Zernio::PrepareMedia200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **target** | **String** |  |  |
| **url** | **String** | URL to publish: the prepared file, or the input URL when nothing needed to change. |  |
| **changed** | **Boolean** | Whether the media was processed. |  |
| **media_type** | **String** |  |  |
| **original_size** | **Integer** | Input size in bytes, null when the host does not report it. |  |
| **output_size** | **Integer** | Size of the returned file in bytes. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PrepareMedia200Response.new(
  target: null,
  url: null,
  changed: null,
  media_type: null,
  original_size: null,
  output_size: null
)
```

