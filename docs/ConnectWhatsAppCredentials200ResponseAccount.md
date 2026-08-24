# Zernio::ConnectWhatsAppCredentials200ResponseAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **username** | **String** | Display phone number | [optional] |
| **display_name** | **String** | Meta-verified business name | [optional] |
| **is_active** | **Boolean** |  | [optional] |
| **phone_number** | **String** | The connected phone number | [optional] |
| **verified_name** | **String** | Meta-verified business name for the phone number | [optional] |
| **quality_rating** | **String** | Meta quality rating for the phone number (e.g. GREEN, YELLOW, RED, UNKNOWN) | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectWhatsAppCredentials200ResponseAccount.new(
  account_id: null,
  platform: null,
  username: null,
  display_name: null,
  is_active: null,
  phone_number: null,
  verified_name: null,
  quality_rating: null
)
```

