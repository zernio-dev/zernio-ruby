# Zernio::StartSmsRegistrationRequestTollFree

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_name** | **String** |  |  |
| **corporate_website** | **String** |  |  |
| **phone_numbers** | **Array&lt;String&gt;** |  |  |
| **use_case** | **String** |  |  |
| **use_case_summary** | **String** |  |  |
| **production_message_content** | **String** |  |  |
| **opt_in_workflow** | **String** | How recipients opt in to your messages. |  |
| **opt_in_workflow_image_urls** | **Array&lt;String&gt;** | Screenshot URL(s) showing the opt-in flow (at least one). |  |
| **message_volume** | **String** | Expected monthly message volume tier. |  |
| **additional_information** | **String** |  |  |
| **business_addr1** | **String** |  |  |
| **business_addr2** | **String** |  | [optional] |
| **business_city** | **String** |  |  |
| **business_state** | **String** |  |  |
| **business_zip** | **String** |  |  |
| **business_contact_first_name** | **String** |  |  |
| **business_contact_last_name** | **String** |  |  |
| **business_contact_email** | **String** |  |  |
| **business_contact_phone** | **String** |  |  |
| **business_registration_number** | **String** |  |  |
| **business_registration_type** | **String** | e.g. EIN (US), Companies House (UK), ABN (AU). |  |
| **business_registration_country** | **String** | ISO 3166-1 alpha-2. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::StartSmsRegistrationRequestTollFree.new(
  business_name: null,
  corporate_website: null,
  phone_numbers: null,
  use_case: null,
  use_case_summary: null,
  production_message_content: null,
  opt_in_workflow: null,
  opt_in_workflow_image_urls: null,
  message_volume: null,
  additional_information: null,
  business_addr1: null,
  business_addr2: null,
  business_city: null,
  business_state: null,
  business_zip: null,
  business_contact_first_name: null,
  business_contact_last_name: null,
  business_contact_email: null,
  business_contact_phone: null,
  business_registration_number: null,
  business_registration_type: null,
  business_registration_country: null
)
```

