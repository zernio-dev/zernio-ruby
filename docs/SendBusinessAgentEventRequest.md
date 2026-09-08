# Zernio::SendBusinessAgentEventRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **to** | **String** | Consumer E.164 phone number. |  |
| **type** | **String** |  |  |
| **description** | **String** |  |  |
| **payload** | **String** | JSON string passed to the agent verbatim. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendBusinessAgentEventRequest.new(
  to: +34600000000,
  type: order_shipped,
  description: null,
  payload: null
)
```

