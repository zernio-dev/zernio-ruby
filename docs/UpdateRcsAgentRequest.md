# Zernio::UpdateRcsAgentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_name** | **String** |  | [optional] |
| **use_case** | **String** |  | [optional] |
| **profile** | [**RcsAgentProfile**](RcsAgentProfile.md) |  | [optional] |
| **brand** | [**RcsBrandInput**](RcsBrandInput.md) |  | [optional] |
| **sms_fallback_from** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateRcsAgentRequest.new(
  display_name: null,
  use_case: null,
  profile: null,
  brand: null,
  sms_fallback_from: null
)
```

