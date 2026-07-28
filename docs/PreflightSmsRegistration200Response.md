# Zernio::PreflightSmsRegistration200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **composed** | [**PreflightSmsRegistration200ResponseComposed**](PreflightSmsRegistration200ResponseComposed.md) |  | [optional] |
| **advisories** | [**Array&lt;PreflightSmsRegistration200ResponseAdvisoriesInner&gt;**](PreflightSmsRegistration200ResponseAdvisoriesInner.md) |  | [optional] |
| **verdict** | **String** |  | [optional] |
| **ai_unavailable** | **Boolean** | True when the AI portion of the check could not run; advisories then contain only deterministic findings. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PreflightSmsRegistration200Response.new(
  composed: null,
  advisories: null,
  verdict: null,
  ai_unavailable: null
)
```

