# Zernio::ListSupportAnswers200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **runs** | [**Array&lt;SupportRun&gt;**](SupportRun.md) |  |  |
| **next_cursor** | **String** | Pass as &#x60;cursor&#x60; to get the next page. Null on the last page. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListSupportAnswers200Response.new(
  runs: null,
  next_cursor: null
)
```

