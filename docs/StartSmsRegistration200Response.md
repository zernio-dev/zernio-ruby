# Zernio::StartSmsRegistration200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **registration_id** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **awaiting_otp** | **Boolean** | True for sole-prop 10DLC: an OTP was texted to the brand&#39;s mobile; submit it via /verify-otp. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::StartSmsRegistration200Response.new(
  registration_id: null,
  status: null,
  awaiting_otp: null
)
```

