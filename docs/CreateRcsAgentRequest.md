# Zernio::CreateRcsAgentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |
| **brand_id** | **String** |  | [optional] |
| **brand** | [**RcsBrandInput**](RcsBrandInput.md) |  | [optional] |
| **display_name** | **String** | Shown as the sender name. |  |
| **use_case** | **String** |  |  |
| **profile** | [**RcsAgentProfile**](RcsAgentProfile.md) |  |  |
| **sms_fallback_from** | **String** | One of your SMS-enabled numbers. Phones without RCS get the message as SMS from it. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateRcsAgentRequest.new(
  profile_id: null,
  brand_id: null,
  brand: null,
  display_name: null,
  use_case: null,
  profile: null,
  sms_fallback_from: null
)
```

