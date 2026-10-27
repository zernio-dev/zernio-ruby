# Zernio::ListEvents200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **events** | [**Array&lt;ListEvents200ResponseEventsInner&gt;**](ListEvents200ResponseEventsInner.md) |  | [optional] |
| **next_cursor** | **String** | Pass as &#x60;cursor&#x60; to get the next page; &#x60;null&#x60; on the last page. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListEvents200Response.new(
  events: null,
  next_cursor: null
)
```

