# Zernio::ListAdChanges200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **changes** | [**Array&lt;StagedAdChangeSummary&gt;**](StagedAdChangeSummary.md) |  |  |
| **next_cursor** | **String** | Pass it as &#x60;cursor&#x60; to read the next page. Null on the last page. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListAdChanges200Response.new(
  changes: null,
  next_cursor: null
)
```

