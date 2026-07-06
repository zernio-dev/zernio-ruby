# Zernio::EnableSmsOnNumber200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** |  | [optional] |
| **id** | **String** | The SMS social account ID (present when enabled). | [optional] |
| **phone_number** | **String** |  | [optional] |
| **is_active** | **Boolean** | False for US numbers until their registration is approved. | [optional] |
| **country** | **String** |  | [optional] |
| **sms_capable** | **Boolean** | Null when capability can&#39;t be read yet (still provisioning). | [optional] |
| **mms_capable** | **Boolean** |  | [optional] |
| **domestic_only** | **Boolean** |  | [optional] |
| **not_ready** | **Boolean** | Number is still provisioning at the carrier; retry shortly. | [optional] |
| **needs_registration** | **Boolean** | US only; a carrier registration is required before delivery. | [optional] |
| **already_registered** | **Boolean** | A prior non-rejected registration already covers this number; no re-submit needed. | [optional] |
| **registration_status** | **String** |  | [optional] |
| **reusable** | [**EnableSmsOnNumber200ResponseReusable**](EnableSmsOnNumber200ResponseReusable.md) |  | [optional] |
| **message** | **String** | Human-readable explanation when &#x60;enabled&#x60; is false. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EnableSmsOnNumber200Response.new(
  enabled: null,
  id: null,
  phone_number: null,
  is_active: null,
  country: null,
  sms_capable: null,
  mms_capable: null,
  domestic_only: null,
  not_ready: null,
  needs_registration: null,
  already_registered: null,
  registration_status: null,
  reusable: null,
  message: null
)
```

