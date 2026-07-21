# Zernio::RequestSmsSenderIdLimitIncreaseRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **requested_cap** | **Integer** | Desired daily message cap. Must exceed the current cap. |  |
| **reason** | **String** | Use case and audience (what you send, to whom, opt-in status). |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RequestSmsSenderIdLimitIncreaseRequest.new(
  requested_cap: null,
  reason: null
)
```

