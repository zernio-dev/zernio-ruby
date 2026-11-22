# Zernio::ListAutomationChecks200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checks** | [**Array&lt;AutomationCheck&gt;**](AutomationCheck.md) |  |  |
| **next_cursor** | **String** | Null on the last page. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListAutomationChecks200Response.new(
  checks: null,
  next_cursor: null
)
```

