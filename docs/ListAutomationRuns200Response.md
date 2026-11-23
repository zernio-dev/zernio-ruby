# Zernio::ListAutomationRuns200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **runs** | [**Array&lt;AutomationRun&gt;**](AutomationRun.md) |  |  |
| **next_cursor** | **String** | Null on the last page. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListAutomationRuns200Response.new(
  runs: null,
  next_cursor: null
)
```

