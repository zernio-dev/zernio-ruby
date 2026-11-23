# Zernio::GetAccountHealth200ResponsePlatformConnectionMessagingBlockersInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_type** | **String** | Meta entity the reason is on (for example PHONE_NUMBER, WABA, BUSINESS) | [optional] |
| **can_send_message** | **String** | That entity&#39;s state (LIMITED or BLOCKED) | [optional] |
| **code** | **Integer** | Meta error code. &#x60;null&#x60; for an &#x60;additional_info&#x60; line. | [optional] |
| **description** | **String** | Meta&#39;s error description, or the &#x60;additional_info&#x60; line as Meta wrote it | [optional] |
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

