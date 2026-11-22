# Zernio::GetAccountHealth200ResponsePlatformConnectionMessagingBlockersInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_type** | **String** | Meta entity the error is on (for example WABA, BUSINESS) | [optional] |
| **can_send_message** | **String** | That entity&#39;s state (LIMITED or BLOCKED) | [optional] |
| **code** | **Integer** | Meta error code | [optional] |
| **description** | **String** | Meta&#39;s error description | [optional] |
| **possible_solution** | **String** | Meta&#39;s suggested fix, when it gives one | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAccountHealth200ResponsePlatformConnectionMessagingBlockersInner.new(
  entity_type: null,
  can_send_message: null,
  code: null,
  description: null,
  possible_solution: null
)
```

