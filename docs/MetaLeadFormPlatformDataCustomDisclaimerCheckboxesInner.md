# Zernio::MetaLeadFormPlatformDataCustomDisclaimerCheckboxesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** |  |  |
| **text** | **String** |  |  |
| **is_required** | **Boolean** |  | [optional][default to false] |
| **is_checked_by_default** | **Boolean** |  | [optional][default to false] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::MetaLeadFormPlatformDataCustomDisclaimerCheckboxesInner.new(
  key: whatsapp_optin,
  text: I agree to receive WhatsApp messages from Acme,
  is_required: null,
  is_checked_by_default: null
)
```

