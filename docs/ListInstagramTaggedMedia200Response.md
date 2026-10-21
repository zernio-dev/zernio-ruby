# Zernio::ListInstagramTaggedMedia200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;InstagramTaggedMedia&gt;**](InstagramTaggedMedia.md) |  |  |
| **next_cursor** | **String** | Pass as &#x60;cursor&#x60; to read the next page. Null when there are no more pages. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListInstagramTaggedMedia200Response.new(
  data: null,
  next_cursor: null
)
```

