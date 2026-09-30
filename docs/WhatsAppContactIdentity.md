# Zernio::WhatsAppContactIdentity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number** | **String** | The user&#39;s WhatsApp phone number (wa_id), null when Meta did not send it (a username adopter who hides it). |  |
| **business_scoped_user_id** | **String** | Meta business-scoped user id (BSUID), for example &#x60;US.13491208655302741918&#x60;. |  |
| **parent_business_scoped_user_id** | **String** | Parent BSUID, shared across the businesses of one portfolio when Meta sends it. |  |
| **whatsapp_username** | **String** | The user&#39;s WhatsApp username, when Meta sent one with the change. Null on &#x60;previous&#x60;. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WhatsAppContactIdentity.new(
  phone_number: null,
  business_scoped_user_id: null,
  parent_business_scoped_user_id: null,
  whatsapp_username: null
)
```

