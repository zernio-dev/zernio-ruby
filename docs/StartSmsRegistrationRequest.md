# Zernio::StartSmsRegistrationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **registration_type** | **String** |  |  |
| **phone_numbers** | **Array&lt;String&gt;** | Your numbers this registration covers. |  |
| **brand** | [**StartSmsRegistrationRequestBrand**](StartSmsRegistrationRequestBrand.md) |  | [optional] |
| **campaign** | [**StartSmsRegistrationRequestCampaign**](StartSmsRegistrationRequestCampaign.md) |  | [optional] |
| **toll_free** | [**StartSmsRegistrationRequestTollFree**](StartSmsRegistrationRequestTollFree.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::StartSmsRegistrationRequest.new(
  registration_type: null,
  phone_numbers: null,
  brand: null,
  campaign: null,
  toll_free: null
)
```

