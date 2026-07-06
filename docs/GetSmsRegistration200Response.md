# Zernio::GetSmsRegistration200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **registration_type** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **brand_status** | **String** |  | [optional] |
| **campaign_status** | **String** |  | [optional] |
| **decline_reason** | **String** |  | [optional] |
| **phone_numbers** | **Array&lt;String&gt;** |  | [optional] |
| **awaiting_otp** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetSmsRegistration200Response.new(
  id: null,
  registration_type: null,
  status: null,
  brand_status: null,
  campaign_status: null,
  decline_reason: null,
  phone_numbers: null,
  awaiting_otp: null
)
```

