# Zernio::ListAutomations200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **automations** | [**Array&lt;Automation&gt;**](Automation.md) |  |  |
| **next_cursor** | **String** | Null on the last page. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListAutomations200Response.new(
  automations: null,
  next_cursor: null
)
```

