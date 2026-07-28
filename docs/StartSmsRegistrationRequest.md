# Zernio::StartSmsRegistrationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **registration_type** | **String** |  |  |
| **phone_numbers** | **Array&lt;String&gt;** | Your numbers this registration covers. |  |
| **brand** | [**StartSmsRegistrationRequestBrand**](StartSmsRegistrationRequestBrand.md) |  | [optional] |
| **campaign** | [**StartSmsRegistrationRequestCampaign**](StartSmsRegistrationRequestCampaign.md) |  | [optional] |
| **messaging_brand_name** | **String** | DBA / trade name used to brand message content (samples and auto-replies) when it differs from the legal name, e.g. a sole proprietor texting under a business name. The legal &#x60;brand.displayName&#x60; is still what the carrier vets. | [optional] |
| **wizard_values** | **Hash&lt;String, String&gt;** | Raw dashboard-wizard answers, stored only to prefill edit-and-resubmit. API integrators can omit. | [optional] |
| **resubmit_request_id** | **String** | Resubmit a registration that was returned for changes — updates it in place instead of creating a new one. | [optional] |
| **toll_free** | [**StartSmsRegistrationRequestTollFree**](StartSmsRegistrationRequestTollFree.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::StartSmsRegistrationRequest.new(
  registration_type: null,
  phone_numbers: null,
  brand: null,
  campaign: null,
  messaging_brand_name: null,
  wizard_values: null,
  resubmit_request_id: null,
  toll_free: null
)
```

