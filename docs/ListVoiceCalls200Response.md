# Zernio::ListVoiceCalls200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **calls** | [**Array&lt;CallRecord&gt;**](CallRecord.md) |  | [optional] |
| **next_cursor** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListVoiceCalls200Response.new(
  calls: null,
  next_cursor: null
)
```

