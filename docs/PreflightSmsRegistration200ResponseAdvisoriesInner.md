# Zernio::PreflightSmsRegistration200ResponseAdvisoriesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field** | **String** | The payload field the finding is about, when attributable. | [optional] |
| **code** | **String** | Stable rule id for deterministic findings; absent on AI findings. | [optional] |
| **concern** | **String** |  | [optional] |
| **severity** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PreflightSmsRegistration200ResponseAdvisoriesInner.new(
  field: null,
  code: null,
  concern: null,
  severity: null
)
```

